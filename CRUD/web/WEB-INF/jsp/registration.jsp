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
            <h1 class="well">Employee Information Registration Form</h1>
            <div class="col-lg-12 well">
                <div class="row">
                    <f:form action="registration" modelAttribute="employeeList">
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                        <label>First Name</label>
                                        <input type="text" name="firstName" autofocus="autofocus" placeholder="Enter First Name Here.." class="form-control required">
                                </div><!--name ta pojo class ar sathe mil kore rakha hoase--->
                                <div class="col-sm-6 form-group">
                                        <label>Last Name</label>
                                        <input type="text" name="lastName" placeholder="Enter Last Name Here.." class="form-control required">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                        <label>Father's Name</label>
                                        <input type="text" name="fatherName" autofocus="autofocus" placeholder="Enter Father's Name Here.." class="form-control required">
                                </div>
                                <div class="col-sm-6 form-group">
                                        <label>Mother's Name</label>
                                        <input type="text" name="motherName" placeholder="Enter Mother's Name Here.." class="form-control required">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Qualification</label>
                                    <input type="text" name="qualification" placeholder="Enter Qualification Here.." class="form-control required">
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Institution</label>
                                    <input type="text" name="institute" placeholder="Enter Institution Here.." class="form-control required">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Gender</label>
                                    <select name="gender" class="form-control required">
                                        <option value="None">None</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 form-group">
                                    <label>Address</label>
                                    <input type="text" name="address" placeholder="Enter Address Here.." rows="3" class="form-control required">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Email Address</label>
                                    <input type="text" name="email" placeholder="Enter Email Address Here.." class="form-control required">
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Phone Number</label>
                                    <input type="text" name="contact" placeholder="Enter Phone Number Here.." class="form-control required">
                                </div>
                            </div>
                            <button type="submit" id="submitbtn" class="btn btn-lg btn-info">Save</button>					
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
