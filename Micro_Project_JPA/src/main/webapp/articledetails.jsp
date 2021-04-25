
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="java.util.List" %>
<%@ page import="com.models.Article" %>
<%@ page import="com.dao.ArticleDaoImpl" %>
<%@ page import="java.text.NumberFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="UTF-8" />
<html>
<fmt:setLocale value="${language}"  />
<fmt:bundle basename="messages.file">

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Catalogue</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="main">
        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                  <% Article article= (Article) request.getAttribute("article1");%>
                    <div class="signin-image">
                        <figure><img src="<%= article.getPhoto() %>" /></figure>
                       
                    </div>

                    <div class="signin-form">
                              <caption><h2><fmt:message key="title4" /></h2></caption>
       <hr>

      <h4>Designation :</h4>
<p><%= article.getDesignation() %></p>
 <h4><fmt:message key="c4" /></h4>
<p><%= article.getCateg() %></p>
 <h4>Stock :</h4>
<p><%= article.getStock() %></p>
 <h4><fmt:message key="c2" /></h4>
  
<p><fmt:formatNumber value="<%= article.getPrix() %>" type="currency"/></p>
<hr>


    <a href="CategCont" style="margin-right:50px; margin-left:40px; " ><i class="zmdi zmdi-skip-previous" style="margin-right:5px;"></i><b><fmt:message key="r" /></b></a>
    <a href="panier.jsp" > <i class="zmdi zmdi-shopping-cart-plus" style="margin-right:5px;"></i><b><fmt:message key="c6" /></b> </a>
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


