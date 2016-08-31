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
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <h1 class="well"> User Login Form</h1>
            <div class="col-lg-12 well">
                <div class="row">
                    <f:form action="checkUser" modelAttribute="user">
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                        <label>Name:</label>
                                        <input type="text" name="firstName" autofocus="autofocus" placeholder="Enter First Name Here.." class="form-control required">
                                </div><!--name ta pojo class ar sathe mil kore rakha hoase--->
<!--                                <div class="col-sm-6 form-group">
                                        <label>Last Name</label>
                                        <input type="text" name="lastName" placeholder="Enter Last Name Here.." class="form-control required">
                                </div>-->
                            </div> 
                            <div class="row">
                               <div class="col-sm-6 form-group">
                                        <label>Last Name:</label>
                                        <input type="text" name="lastName" placeholder="Enter Last Name Here.." class="form-control required">
                                </div>
                                
                            </div>
                            <button type="submit" id="submitbtn" class="btn btn-lg btn-info">OK</button>					
			</div>
                    </f:form>
                </div>    
            </div>
        </div>
        
        
        <script>
            $(function (){
                $("#submitbtn").click(function(e){
                    var isValid= true;
                    $("input[type='text'].required").each(function(){
                        if(($(this).val())===''){
                            isValid=false;
                            $(this).css({
                                "border":"1px solid red"
                            });
                        }else{
                            $(this).css({
                                "border":""
                            });
                        }
                    });
                    if(isValid===false){
                        e.preventDefault();
                    }else{
                        
                    }
                });
            });
        </script>
    </body>
</html>
