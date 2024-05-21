<!DOCTYPE html>
<html lang="az">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin - Panel</title>

    @isset($content)
        @if ($content === 'slider')
            <!-- Link Swiper's CSS -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
        @endif
    @endisset
    @isset($content)
        @if ($content === 'map')

            <link rel="stylesheet" href="../style/style.css" />
        @endif
    @endisset
    <link rel="stylesheet" href="{{ asset('style/admin/admin.css') }}">

</head>

<body>
    @yield('content')
</body>

</html>
