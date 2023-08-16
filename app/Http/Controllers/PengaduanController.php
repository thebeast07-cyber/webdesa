<?php

namespace App\Http\Controllers;

use App\Models\Pengaduan;
use App\Models\Tanggapan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Gate;

class PengaduanController extends Controller
{
    public function index() {
        if(auth()->user()->level == 'masyarakat') {
            $pengaduan = Pengaduan::where('masyarakat_id', auth()->user()->id)->get();
        }else{
            $pengaduan = Pengaduan::all();
        }

        return view('pengaduan/index', [
            'title' => 'Semua Pengaduan',
            'pengaduan' => $pengaduan
        ]);
    }

    public function belum() {
        if(auth()->user()->level == 'masyarakat') {
            $pengaduan = Pengaduan::where('masyarakat_id', auth()->user()->id)->where('status', '0')->get();
        }elseif(auth()->user()->level == 'petugas') {
            $pengaduan = Pengaduan::where('status', '0')->get();
        }else{
            abort(403);
        }

        return view('pengaduan/index', [
            'title' => 'Pengaduan Belum Ditanggapi',
            'pengaduan' => $pengaduan,
        ]);
    }

    public function proses() {
        if(auth()->user()->level == 'masyarakat') {
            $pengaduan = Pengaduan::where('masyarakat_id', auth()->user()->id)->where('status', 'proses')->get();
        }elseif(auth()->user()->level == 'petugas') {
            $pengaduan = Pengaduan::where('status', 'proses')->get();
        }else{
            abort(403);
        }
        return view('pengaduan/index', [
            'title' => 'Pengaduan Diproses',
            'pengaduan' => $pengaduan
        ]);
    }

    public function selesai() {
        if(auth()->user()->level == 'masyarakat') {
            $pengaduan = Pengaduan::where('masyarakat_id', auth()->user()->id)->where('status', 'selesai')->get();
        }elseif(auth()->user()->level == 'petugas') {
            $pengaduan = Pengaduan::where('status', 'selesai')->get();
        }else{
            abort(403);
        }
        return view('pengaduan/index', [
            'title' => 'Pengaduan Selesai',
            'pengaduan' => $pengaduan
        ]);
    }
    public function printPengaduan() {
        if(auth()->user()->level == 'masyarakat') {
            $pengaduan = Pengaduan::where('masyarakat_id', auth()->user()->id)->where('status', 'selesai')->get();
        }elseif(auth()->user()->level == 'petugas') {
            $pengaduan = Pengaduan::where('status', 'selesai')->get();
        }else{
            abort(403);
        }
        return view('pengaduan/printPengaduan', [
            'title' => 'Pengaduan Selesai',
            'pengaduan' => $pengaduan
        ]);
    }

    public function show(Pengaduan $pengaduan) {
        return view('pengaduan/detail', [
            'title' => 'Detil Pengaduan',
            'pengaduan' => $pengaduan
        ]);
    }

    public function create() {
        $this->authorize('masyarakat');
        return view('pengaduan/create', [
            'title' => 'Buat Pengaduan',
        ]);
    }

    public function store(Request $request) {
        $validated = $request->validate([
            'isi_laporan' => 'required',
            'lampiran' => 'image|file|max:1024',
            'identitas' => 'image|file|max:1024'
        ]);

        if($request->file('lampiran')) {
            $validated['lampiran'] = $request->file('lampiran')->store('public/lampiran-laporan');
        }

        if($request->file('identitas')) {
            $validated['identitas'] = $request->file('identitas')->store('public/identitas-laporan');
        }

        $validated['masyarakat_id'] = auth()->user()->id;

        if(Pengaduan::create($validated)) {
            return redirect('pengaduan')->with('berhasil', 'Berhasil mengirim aduan!');
        }else{
            return redirect('pengaduan')->with('gagal', 'Gagal mengirim aduan!');
        }
    }

    public function edit($id) {
        $this->authorize('masyarakat');
        return view('pengaduan/edit', [
            'title' => 'Ubah Pengaduan',
            'pengaduan' => Pengaduan::findOrFail($id)
        ]);
    }

    public function update(Request $request, Pengaduan $pengaduan) {
        $validated = $request->validate([
            'isi_laporan' => 'required',
            'lampiran' => 'image|file|max:1024',
        ]);
        
        if($request->file('lampiran')) {
            if($request->oldLampiran) {
                Storage::delete($request->oldLampiran);
            }
            $validated['lampiran'] = $request->file('lampiran')->store('lampiran-laporan');
        }

        if(Pengaduan::where('id', $pengaduan->id)->update($validated)) {
            return redirect('pengaduan')->with('berhasil', 'Berhasil mengubah aduan!');
        }else{
            return redirect('pengaduan')->with('gagal', 'Gagal mengubah aduan!');
        }
    }

    public function destroy(Pengaduan $pengaduan) {
        if($pengaduan->lampiran) {
            Storage::delete($pengaduan->lampiran);
        }
        if(Pengaduan::destroy($pengaduan->id)) {
            return redirect('pengaduan')->with('berhasil', 'Berhasil menghapus aduan!');
        }else{
            return redirect('pengaduan')->with('gagal', 'Gagal menghapus aduan!');
        }
    }

    public function response(Pengaduan $pengaduan, Request $request) {
        $validated = $request->validate([
            'status' => 'required',
            'tanggapan' => 'required'
        ]);

        if($validated['status'] !== $pengaduan->status) {
            Pengaduan::where('id', $pengaduan->id)->update(['status' => $validated['status']]);
            Tanggapan::create([
                    'pengaduan_id' => $pengaduan->id,
                    'tanggapan' => $request->tanggapan,
                    'status' => $validated['status'],
                    'petugas_id' => auth()->user()->id,
                ]);
            return redirect()->back()->with('berhasil', 'Berhasil memberi tanggapan!');
        } else {
            return redirect()->back()->with('gagal', 'Gagal memberi tanggapan!');
        }

    }
}
