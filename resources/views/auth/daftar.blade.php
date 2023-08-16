@extends('templates/auth')
@section('content')

<div class="p-6 space-y-4 md:space-y-6 sm:p-8">
    <h1 class="text-xl font-bold leading-tight tracking-tight text-dark md:text-2xl text-center">
        Daftarkan akunmu
    </h1>
    <form action="/daftar" method="POST" class="space-y-4 md:space-y-6 [&>div>label]:block [&>div>label]:mb-2 [&>div>label]:text-sm [&>div>label]:font-medium [&>div>label]:text-dark [&>div>input]:border [&>div>input]:p-2.5 [&>div>input]:shadow-sm [&>div>input]:placeholder-secondary [&>div>input]:text-secondary [&>div>input]:w-full [&>div>input]:block [&>div>input]:rounded-lg [&>div>input]:sm:text-sm">
        @csrf
        <div>
            <label for="username">Username</label>
            <input type="text" name="username" id="username" class="@error('username') border-danger @else border-gray  @enderror focus:outline-none focus:border-gray focus:ring-gray focus:ring-1" placeholder="user.name" value="{{ old('username') }}">
            @error('username')
                <p class="mt-1 text-xs text-danger" id="file_input_help">{{ $message }}</p>
            @enderror
        </div>
        <div>
            <label for="nama">Nama</label>
            <input type="text" name="nama" id="nama" class="@error('nama') border-danger @else border-gray @enderror focus:outline-none focus:border-gray focus:ring-gray focus:ring-1" placeholder="John Doe" value="{{ old('nama') }}">
            @error('nama')
                <p class="mt-1 text-xs text-danger" id="file_input_help">{{ $message }}</p>
            @enderror
        </div>
        <div>
            <label for="telepon">Telepon</label>
            <input type="text" name="telepon" id="telepon" class="@error('telepon') border-danger @else border-gray @enderror focus:outline-none focus:border-gray focus:ring-gray focus:ring-1" placeholder="089907319323" value="{{ old('telepon') }}">
            @error('telepon')
                <p class="mt-1 text-xs text-danger" id="file_input_help">{{ $message }}</p>
            @enderror
        </div>
        <div>
            <label for="password">Password</label>
            <input type="password" name="password" id="password" placeholder="••••••" class="@error('password') border-danger @else border-gray @enderror focus:outline-none focus:border-gray focus:ring-gray focus:ring-1">
            @error('password')
                <p class="mt-1 text-xs text-danger" id="file_input_help">{{ $message }}</p>
            @enderror
        </div>
        <button type="submit" class="w-full text-white bg-danger font-medium rounded-lg text-sm px-5 py-2.5 text-center">Daftar</button>
        <p class="text-sm font-light text-dark text-center">
            Sudah punya akun? <a href="/masuk" class="font-medium text-danger">Masuk</a>
        </p>
    </form>
</div>

@endsection
