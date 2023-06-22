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
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="center">
            <h1 class="display-4">Search for a User By ID</h1>
            <div class="jumbotron">
                <h2 class="hello-title">Login Success</h2>
                <p class="lead">View user table <a href="/users">here</a></p>
                
                <form method="post" action="update">
                    <p class="lead">Enter an id from the table:</p>
                    <input type="text" id="id" name="id" placeholder="Type here" required class="form-input">
                    <input type="submit" value="Enter" class="btn btn-primary mb-2"/>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
