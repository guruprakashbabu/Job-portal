<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn Page</title>
<style>
    .bg-custom {
        background: #283593 !important;
    }
    .navbar .nav-item .nav-link {
        font-size: 20px;
        color: white;
    }
    .navbar .nav-item:hover .nav-link {
        background: grey;
        color: black;
        border-radius: 10px;
    }
</style>
<%@ include file="/Components/all_css.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-custom">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active"><a class="nav-link"
                    href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <a href="login.jsp" class="btn btn-light"><i
                    class="fas fa-sign-in-alt"></i> Login</a>
                <a href="signup.jsp" class="btn btn-light"><i class="fa-regular fa-user"></i> SignUp</a>
            </form>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row p-5">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center">
                            <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                            <h5>Login Page</h5>
                        </div>
                        <form action="login" method="post">
                            <div class="form-group">
                                <label>Enter Email</label>
                                <input type="email" required="required" class="form-control" name="email">
                            </div>
                            <div class="form-group">
                                <label for="password">Enter Password</label>
                                <input type="password" required="required" class="form-control" name="password">
                            </div>
                            <button type="submit" class="btn btn-primary badge-pill btn-block">LogIn</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
