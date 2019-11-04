<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta id="token" name="token" value="{{ csrf_token() }}">
    <title>
       租網檢索列表
    </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.0/css/pikaday.min.css" />
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">


     <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>
    <style>
        @font-face {
            font-family: 'rentSearch';
            src: url("{{ asset('fonts/rentSearch.eot?vqk3o6') }}");
            src: url("{{ asset('fonts/rentSearch.eot?vqk3o6#iefix') }}") format('embedded-opentype'),
            url("{{ asset('fonts/rentSearch.ttf?vqk3o6') }}") format('truetype'),
            url("{{ asset('fonts/rentSearch.woff?vqk3o6') }}") format('woff'),
            url("{{ asset('ffonts/rentSearch.svg?vqk3o6#rentSearch') }}") format('svg');
            font-weight: normal;
            font-style: normal;
        }
    </style>
</head>

<body>
    <div id="login" class="login">
       <div class="wrapper login-wrap">
        @if (Route::has('login'))
            <div class="top-right links">
                @if (Auth::check())
                    <a href="{{ url('/home') }}">Admin</a>
                @else
                    <a href="{{ url('/login') }}">Login</a>
                @endif
            </div>
        @endif
        </div>
    </div>
    
    <div id="app">
        <data-users source="users"/>
    </div>
    
    <script src="{{ asset('js/app.js') }}"></script>
</body>

</html>
