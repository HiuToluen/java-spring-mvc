<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Table User</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-12 mx-auto">
                            <div class=" heaeder d-flex justify-content-between">
                                <h3>Table users</h3>
                                <a href="/admin/user/create " class="btn btn-primary">Create a User</a>
                            </div>
                            <hr>

                            <table class="table table-hover table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Full Name</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="user" items="${users}">
                                        <tr>
                                            <th>${user.getId()}</th>
                                            <td>${user.getEmail()}</td>
                                            <td>${user.getFullname()}</td>
                                            <td>
                                                <a href="/admin/user/${user.getId()}" class="btn btn-success">View</a>
                                                <a href="/admin/user/update/${user.getId()}"
                                                    class="btn btn-warning mx-2">Update</a>
                                                <a href="/admin/user/delete/${user.getId()}"
                                                    class="btn btn-danger mx-2">Delete</a>
                                            </td>
                                        </tr>
                                    </c:forEach>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </body>

            </html>