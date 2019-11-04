<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta id="token" name="token" value="{{ csrf_token() }}">
    <title>
       website collect
    </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.0/css/pikaday.min.css" />
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
     <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>
</head>

<body>

    <div id="app">
        <data-viewer source="projects"/>
    </div>
    
    <a href="{{ route('logout') }}"
        onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
        Logout
    </a>

    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
        {{ csrf_field() }}
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/pikaday-package.js') }}"></script>
    <script>   
        var dateObject = pikadayResponsive(document.getElementById("date"));
        var dateTwoObject =  pikadayResponsive(document.getElementById("dateTwo"));
    </script>
</body>

</html>