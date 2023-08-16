@extends('templates/dashboard')
@section('content')
<div class="bg-white py-6 px-9 mb-5 rounded-lg">
    <form action="/pengaduan/{{ $pengaduan->id }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('put')
        <div class="mb-6">
            <label for="isi_laporan" class="after:content-['*'] after:ml-0.5 after:text-danger block mb-2 text-sm font-medium text-dark">Isi Laporan</label>
            <textarea id="isi_laporan" name="isi_laporan" rows="4" class="block px-3 py-2 w-full focus:outline-none text-sm text-secondary bg-white rounded-lg border @error('isi_laporan') border-danger @else border-gray @enderror shadow-sm focus:border-gray focus:ring-gray" placeholder="Ketik laporan...">{{ old('isi_laporan', $pengaduan->isi_laporan) }}</textarea>
            @error('isi_laporan')
                <p class="mt-1 text-xs text-danger">{{ $message }}</p>
            @enderror
        </div>
        
        <div class="mb-6">
            <label class="block mb-2 text-sm font-medium text-dark" for="lampiran">Upload Lampiran</label>
            @if($pengaduan->lampiran)
                <img src="{{ asset('storage/' . $pengaduan->lampiran) }}" alt="{{ $pengaduan->masyarakat->nama }}" class="w-[200px] mb-2 block previewImage">
            @else
                <img src="" class="previewImage">
            @endif
            <input type="hidden" name="oldLampiran" value="{{ $pengaduan->lampiran }}">
            <input class="file:mr-5 file:py-2 file:px-6 file:border-0 file:text-sm file:font-medium file:bg-dark file:text-white block w-full text-sm text-secondary bg-white rounded-lg border @error('lampiran') border-danger @else border-gray @enderror shadow-sm focus:border-gray focus:ring-gray cursor-pointer focus:outline-none" aria-describedby="lampiran_help" id="lampiran" type="file" name="lampiran" onchange="previewImage()">
            @error('lampiran')
                <p class="mt-1 text-xs text-danger">{{ $message }}</p>
            @else
                <p class="mb-6 mt-1 text-xs text-secondary">SVG, PNG, JPG or GIF (MAX. 800x400px).</p>
            @enderror
        </div>

        <div class="flex justify-end">
            <button type="submit" class="text-white bg-danger focus:outline-none font-medium rounded-lg text-sm px-5 py-2.5 text-center">Submit</button>
        </div>
    </form>
</div>
@endsection
