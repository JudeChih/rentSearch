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
            <a href="{{ route('logout') }}"
            onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();">
            Logout
            </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                {{ csrf_field() }}
            </form>
        </div>
    </div>
    <div id="app">
        <data-viewer source="projects"/>
    </div>
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/pikaday-package.js') }}"></script>
    <script>   
        var dateObject = pikadayResponsive(document.getElementById("date"));
        var dateTwoObject =  pikadayResponsive(document.getElementById("dateTwo"));
    </script>
</body>

</html>