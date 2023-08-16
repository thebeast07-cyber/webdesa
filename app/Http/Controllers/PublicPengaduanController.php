<?php

namespace App\Http\Controllers;

use App\Models\Pengaduan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class PublicPengaduanController extends Controller
{
    public function index() {
        $pengaduan = Pengaduan::all();

        return view('pengaduan/index', [
            'title' => 'Semua Pengaduan',
            'pengaduan' => $pengaduan
        ]);

        
    }

    public function belum() {
        $pengaduan = Pengaduan::where('status', '0')->get();

        return view('pengaduan/index', [
            'title' => 'Pengaduan Belum Ditanggapi',
            'items' => $pengaduan,
        ]);
    }

    public function proses() {
        $pengaduan = Pengaduan::where('status', 'proses')->get();

        return view('pengaduan/index', [
            'title' => 'Pengaduan Diproses',
            'pengaduan' => $pengaduan
        ]);
    }

    public function selesai() {
        $pengaduan = Pengaduan::where('status', 'selesai')->get();
    
        return view('pengaduan/index', [
            'title' => 'Pengaduan Selesai',
            'pengaduan' => $pengaduan
        ]);

        Log::info('app.pengaduan', ['pengaduan' => $pengaduan->toArray()]);
    }
}
