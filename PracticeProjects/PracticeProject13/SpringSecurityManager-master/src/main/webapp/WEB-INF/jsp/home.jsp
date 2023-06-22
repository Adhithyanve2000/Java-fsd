<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
    <style>
        .center {
            text-align: center;
            padding-top: 10%;
            background-color: #f8f9fa;
            min-height: 100vh;
        }

        .jumbotron {
            background-color: #e9ecef;
            padding: 2em;
            border-radius: 15px;
        }

        .form-input {
            width: 100%;
            border: 2px solid #6c757d;
            border-radius: 4px;
            margin: 10px 0;
            padding: 15px;
        }

        .btn {
            background-color: #6c757d;
            color: black;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="center">
            <h1 class="display-4">Spring Security</h1>
            <div class="jumbotron">
                <p class="lead">Login below to access the user's table</p>

                <form method="post" action="index">
                    <input type="text" id="namelogin" name="namelogin" placeholder="Name" required class="form-input">
                    <input type="password" id="passwordlogin" name="passwordlogin" placeholder="Password" required class="form-input">   
                    <input type="submit" value="Enter" class="btn btn-primary mb-2" />
                </form>
            </div>
        </div>
    </div>
</body>
</html>
