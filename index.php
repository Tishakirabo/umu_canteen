<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<!-- For more projects: Visit codeastro.com  -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>UMU  Canteen Management System</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <!-- Styles -->
    <style>
        html,
        body {
            background-color: #800000;
            color: white;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
            border-style: dashed double none;
        }

        .title {
            font-size: 84px;
        }

        .links>a {
            color: white;
            padding: 0 25px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }
        .adimin{
            font-weight: 900;
            background-color: white;
            height: 50px;
            width: 150px;
            border-radius: 25px;
        }
    </style>
</head>
<!-- For more projects: Visit codeastro.com  -->
<body>
    <div class="flex-center position-ref full-height">
        <div class="content">
            <div class="title m-b-md">
                UMU - Canteen
            </div>

            <div class="links">
			<!-- For more projects: Visit codeastro.com  -->
               <button class="adimin"> <a href="Restro/admin/">Admin </a></button>
               <button class="adimin"> <a href="Restro/cashier/">Cashier </a></button>
               <button class="adimin"> <a href="Restro/customer">Customer </a></button>
            </div>
        </div>
    </div>
</body>
<!-- For more projects: Visit codeastro.com  -->
</html>