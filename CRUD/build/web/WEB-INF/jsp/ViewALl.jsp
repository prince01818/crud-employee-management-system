<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
        <link href="<c:url value="/bootstrap/css/main.css" />" rel="stylesheet">
        <link href="<c:url value="/bootstrap/css/bootstrap.css" />" rel="stylesheet">
        
        <script type="text/javascript" src="<c:url value="/bootstrap/js/jquery-1.7.2.js" />"></script>
        <title>Registration Employee</title>
    </head>
    <body>
        <div class="container">
            <h1 class="well">Who you are ??</h1>
            <div class="col-lg-12 well">
                <div class="row">
                    <f:form>
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-4 form-group">
                                       
                                        <a href="adminlogin.htm">ADMIN LOGIN</a>
                                </div>
                                <div class="col-sm-4 form-group">
                                        
                                       <a href="userLogin.htm">USER LOGIN</a>
                                </div>
                                 <div class="col-sm-4 form-group">
                                        
                                        <a href="registration.htm">NEW REGISTRATION</a>
                                </div>
                            </div>
                            
                        				
			</div>
                    </f:form>
                </div>    
            </div>
        </div>
        


    </body>
</html>
