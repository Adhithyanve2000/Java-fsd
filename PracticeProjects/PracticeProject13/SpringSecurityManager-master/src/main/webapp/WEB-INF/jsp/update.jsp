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
            <div class="jumbotron">
                <h2 class="display-4">Update Table</h2>
                
                <p class="lead"> User ID: ${ID}</p>
                
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

                <br>
                <form method="post" action="update2">
                    <h3>Edit user: ${ID}</h3>
                    <input type="text" id="nameedit" name="nameedit" placeholder="Name" required class="form-input">
                    <input type="text" id="emailedit" name="emailedit" placeholder="Email" required class="form-input">
                    <input type="text" id="passwordedit" name="passwordedit" placeholder="Password" required class="form-input">    
                    <input type="submit" value="Enter" class="btn btn-primary mb-2"/>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
