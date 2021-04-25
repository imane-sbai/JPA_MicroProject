<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.models.User"%>
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
    <title>Home</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/table.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<div class="main">
        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="http://is.am/4cmg" alt="sing up image"></figure>
                       
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title"><fmt:message key="v4" /> <br /><% 
User name=(User)session.getAttribute("currentUser"); 
out.print(name.getNom()+" "+name.getPrenom()); %></h2>
                        <form method="POST" class="register-form" id="login-form" action="IdentifierCont" >
                            <div class="form-group">
                                <a href="CategCont" class="signup-image-link"><i class="zmdi zmdi-collection-bookmark" style="margin-right:15px;"></i><fmt:message key="v1" /></a>
                              <a href="#" class="signup-image-link"><i class="zmdi zmdi-format-list-numbered" style="margin-right:15px;"></i><fmt:message key="v2" /></a>
                              <a href="panier.jsp" class="signup-image-link"><i class="zmdi zmdi-shopping-cart" style="margin-right:20px;"></i><fmt:message key="v3" /></a>
                            </div>
                          </form>
                        <div class="social-login" style="margin-left:50px;">
                            <span class="social-label"><fmt:message key="soci" /></span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>
                         <div class="form-group" align="center" style="margin-top:0px;">
                          <p>Belflora WAwawa Market &copy; 2021 | CO-Founder <a href="https://www.facebook.com/ilhame.elangui/">Imane Sbai &trade;</a></p>
                         </div>	
                </div>
                        
            </div>
            
                    </div>
               
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</fmt:bundle>
</html>