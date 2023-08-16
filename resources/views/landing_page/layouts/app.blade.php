<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title', 'Desa Semerak') | Website Resmi Desa Semerak</title>

    @stack('prepend-style')


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="shortcut icon" href="{{ asset('/img/icon.png') }}" type="image/png">

    <link rel="stylesheet" href="{{ asset('/css/landing-page/index.css') }}">

    @stack('addon-style')
</head>


<body>

    <!-- Header Contact -->
    <div id="header-contact" class="bg-primary-2 text-white">
        <div class="container">
            <p class="py-3">
                <i class="fa-solid fa-phone"></i> 0826326323623 | <i class="fa-solid fa-envelope"></i>
                desasemerak@gmail.com
            </p>
        </div>
    </div>
    <!-- End Header Contact -->

    <!-- Navbar -->
    @include('landing_page.layouts.navbar')
    <!-- End Navbar -->

    
    <main style="min-height: @yield('min-height','100vh');">
        @yield('content')
    </main>

    @include('landing_page.layouts.footer')

    {{-- library --}}
    @stack('prepend-script')

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
    </script>


    @stack('addon-script')
</body>

</html>
