<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

        table {
            width: 100%;
            margin-top: 2em;
            border-collapse: collapse;
        }

        th, td {
            padding: 1em;
            border: 1px solid #6c757d;
        }

        th {
            background-color: #6c757d;
            color: white;
        }

        .return-home {
            margin-top: 2em;
            font-size: 1.25em;
        }

        .return-home a {
            color: #007bff;
            text-decoration: none;
        }

        .return-home a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="center">
            <h2 class="display-4">Successfully Updated User</h2>

            <div class="jumbotron">
                <p class="lead"> User ID: ${IDedit}</p>

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Password</th>
                    </tr>
                    <c:forEach items="${user}" var="userE" varStatus="count">
                        <tr id="${count.index}">
                            <td>${userE.id}</td>
                            <td>${userE.name}</td>
                            <td>${userE.email}</td>
                            <td>${userE.password}</td>
                        </tr>
                    </c:forEach>
                </table>

                <div class="return-home">
                    <h3>Return to Homepage</h3>
                    <a href="/">Return</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
