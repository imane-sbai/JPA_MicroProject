 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="language" value="${not empty param.language ? param.language :not empty language ? language : pageContext.request.locale  }" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="messages.file" />

<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   
    <title>accueil</title>



    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/table.css">
</head>
<body>
<div class="main">
        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="http://is.am/4cmf" alt="sing up image"></figure>
                       
                    </div>

                    <div class="signin-form">
                    
                        <h2 class="form-title"><fmt:message key="home" /> </h2>
                        <h4 class="signup-image-link"><i class="zmdi zmdi-flag" style="margin-right:12px; "></i><fmt:message key="lang" /></h4>
								<div align="center">
								<form >
						  <a href="Home.jsp?language=fr"><img src="images/Flag_of_France.png"  style="weight:30px; height:25px; margin-right:10px;" /></a>
							<a href="Home.jsp?language=en"><img src="images/usflag.png" style="weight:30px; height:25px;" /></a>
						
									</form>
									 </div>
									 
                        <form method="POST" class="register-form" id="login-form" action="IdentifierCont" >
                            <div class="form-group">
                                <a href="SignUp.jsp" class="signup-image-link"><fmt:message key="insc" /></a>
                              <a href="SignIn.jsp" class="signup-image-link"><fmt:message key="ident" /></a>
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

</html>