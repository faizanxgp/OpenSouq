<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="assets/ico/favicon.png">
    <title>SooqAliBaba</title>
    <!-- Bootstrap core CSS -->
    <link href="{{ URL::to('src/assets/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="{{ URL::to('src/assets/css/style.css') }}" rel="stylesheet">

    <!-- styles needed for carousel slider -->
    <link href="{{ URL::to('src/assets/css/owl.carousel.css') }}" rel="stylesheet">
    <link href="{{ URL::to('src/assets/css/owl.theme.css') }}" rel="stylesheet">

    <link href="{{ URL::to('src/css/custom.css') }}" rel="stylesheet">

    <!-- Just for debugging purposes. -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

    <!-- include pace script for automatic web page progress bar  -->

    <script>
        paceOptions = {
            elements: true
        };
    </script>
    <script src="{{ URL::to('src/assets/js/pace.min.js') }}"></script>
</head>
<body>

<div id="wrapper">

    @include('partials.header')

    @yield('content')

    @include('partials.footer')


</body>
</html>