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
    </style>
</head>
<body>
    <div class="container">
        <div class="center">
            <div class="jumbotron">
                <h2 class="display-4">Users</h2>
                
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Password</th>
                    </tr>
                    <c:forEach items="${users}" var="user" varStatus="count">
                        <tr id="${count.index}">
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>${user.password}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</body>
</html>

