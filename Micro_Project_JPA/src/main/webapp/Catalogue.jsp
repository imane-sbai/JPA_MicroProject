<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.models.Article" %>
<%@ page import="com.dao.ArticleDaoImpl" %>
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
      
    <div align="center">
       <caption><h2 style="margin-left:30px;"><fmt:message key="title3" /></h2></caption>
       <hr color="#6dabe4"  width="820px">
      
	<form method="post" action="CategCont" >
		<select name="categorie"  style="width:100px;  -webkit-appearance: none;
   
 
    border: 1px solid #E8EAED;
    border-radius: 3px;
    background: white;
    box-shadow: 0 1px 3px -2px #9098A9;
    cursor: pointer;
    font-family: inherit;
    font-size: 16px;
    transition: all 150ms ease;">
			<option value="jazz" >Jazz</option>
			<option value="pop" >Pop</option>
			<option value="rock" >Rock</option>
		</select>
		<input type="submit" value="<fmt:message key="c" />"   style=" margin-top:6px ; width:170px;  border-radius: 5px;  background: #6dabe4;
  color: #fff;"/>
	</form>
       
       
    <table  border="1" cellpadding="5" style="margin-left:50px;" >
            <tr>
              <th><fmt:message key="c1" /></th>
                <th><fmt:message key="c2" /></th>
                <th><fmt:message key="c3" /></th>
                <th><fmt:message key="c4" /></th>
                 <th><fmt:message key="c5" /></th>
                <th><fmt:message key="c6" /></th>
        </tr>
      
          <% List<Article> articles=(ArrayList<Article>)request.getAttribute("articles");
			for(Article article:articles){
				 %>
        
        <tr>
            <td  align="center">
            <a href="ArticleCont?id=<%= article.getCodearticle() %>" > <b><%= article.getCodearticle() %></b></a>
            </td>
            <td align="center"> <fmt:formatNumber value="<%= article.getPrix() %>" type="currency"/> </td>
            <td  align="center"> <%= article.getStock() %> </td>
            <td  align="center"> <%= article.getCateg() %> </td>
             <td><img   style="width:50pt; height:80pt;" src="<%= article.getPhoto() %>" /> </td>
           <td  align="center"><a href="panier.jsp" > <i class="zmdi zmdi-shopping-cart-plus" style="margin-right:5px;"></i><fmt:message key="c6" /></a></td>
              <%
        }
        %>
    </table>
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
