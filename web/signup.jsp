<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="shapka.jsp"%>
<div class="container mt-3">
    <div class="row mt-3">
        <div class="col-md-6 offset-md-3">
            <div class="card" style="width: 37rem">
                <h7 class="card-header text-left">Login Page</h7>
                <div class="card-body">
                    <form method="post" action="login">
                        <div class="mb-3 row">
                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="email" name="email" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="password" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <% if (request.getAttribute("text") != null) { %>
    <div class="row mt-3">
        <div class="col-md-6 offset-md-3">
            <div class="alert alert-danger" role="alert">
                <%= request.getAttribute("text") %>
            </div>
        </div>
    </div>
    <% } %>
</div>
</body>
</html>