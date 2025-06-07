<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Dashboard - SB Admin</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Manager User</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                                    <li class="breadcrumb-item active">User</li>
                                </ol>

                                <div class="container mt-5">
                                    <div class="row">
                                        <div class="col-12 mx-auto">
                                            <div class=" heaeder d-flex justify-content-between">
                                                <h3>User details with id = ${user.getId()}</h3>
                                            </div>
                                            <hr />

                                            <div class="card" style="width: 60%">
                                                <div class="card-header">
                                                    User information
                                                </div>
                                                <ul class="list-group list-group-flush">
                                                    <li class="list-group-item">ID: ${user.getId()}</li>
                                                    <li class="list-group-item">
                                                        Avatar:
                                                        <br>
                                                        <img src="${pageContext.request.contextPath}/images/avatar/${user.avatar}"
                                                            alt="Avatar" style="max-height: 200px;">
                                                    </li>
                                                    <li class="list-group-item">Email: ${user.getEmail()}</li>
                                                    <li class="list-group-item">FullName: ${user.getFullname()}</li>
                                                    <li class="list-group-item">Address: ${user.getAddress()}</li>
                                                    <li class="list-group-item">Role: ${user.role.name}</li>

                                                </ul>
                                            </div>

                                            <a href="/admin/user" class="btn btn-success mt-2">Back</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
                <script src="/js/scripts.js"></script>

            </body>

            </html>