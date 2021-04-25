<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<html>
<fmt:setLocale value="${language}"  />
<fmt:bundle basename="messages.file">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up </title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title"><fmt:message key="title1" /></h2>
                        <form method="POST" class="register-form" id="register-form" action="InscrireCont">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="prenom" id="name" placeholder="<fmt:message key="pl2" />"/>
                            </div>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="nom" id="name" placeholder="<fmt:message key="pl3" />"/>
                            </div>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-pin"></i></label>
                                <input type="text" name="adresse" id="name" placeholder="<fmt:message key="pl5" />"/>
                            </div>
                             <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-parking"></i></label>
                                <input type="text" name="cp" id="name" placeholder="<fmt:message key="pl4" />"/>
                            </div>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-city"></i></label>
                                <input type="text" name="ville" id="name" placeholder="<fmt:message key="pl6" />"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="<fmt:message key="pl" />"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="pass" placeholder="<fmt:message key="pl1" />"/>
                            </div>
                           
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span><fmt:message key="agree" /> <a href="#" class="term-service"><fmt:message key="agree1" /></a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="<fmt:message key="title1" />"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="http://is.am/4cmh" alt="sing up image"></figure>
                        <a href="SignIn.jsp" class="signup-image-link"><fmt:message key="ident" /></a>
                    </div>
                </div>
            </div>
        </section>

       
    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</fmt:bundle>
</html>