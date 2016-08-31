<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="<c:url value="/bootstrap/css/bootstrap.css" />" rel="stylesheet">
        <title>Edit Employee</title>
    </head>
    <body>
        <div class="container">
            <h1 class="well">Employee Profile Information Update</h1>
            <div class="col-lg-12 well">
                <div class="row">
                    <f:form action="edit.htm" modelAttribute="employeeList">
                        <div class="col-sm-12">
                            <input type="hidden" name="id" value="${list.id}" />
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                        <label>First Name</label>
                                        <input type="text" name="firstName" value="${list.firstName}" autofocus="autofocus" class="form-control">
                                </div>
                                <div class="col-sm-6 form-group">
                                        <label>Last Name</label>
                                        <input type="text" name="lastName" value="${list.lastName}" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                        <label>Father's Name</label>
                                        <input type="text" name="fatherName" value="${list.fatherName}" class="form-control">
                                </div>
                                <div class="col-sm-6 form-group">
                                        <label>Mother's Name</label>
                                        <input type="text" name="motherName" value="${list.motherName}" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Qualification</label>
                                    <input type="text" name="qualification" value="${list.qualification}" class="form-control">
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Institution</label>
                                    <input type="text" name="institute" value="${list.institute}" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Gender</label>
                                    <select name="gender" class="form-control">
                                        <option selected="">${list.gender}</option>
                                        <c:choose>
                                            <c:when test="${list.gender=='Male'}">
                                                <option value="None">None</option>
                                                <option value="Female">Female</option>
                                            </c:when>

                                            <c:when test="${list.gender=='Female'}">
                                                <option value="None">None</option>
                                                <option value="Male">Male</option>
                                            </c:when> 

                                            <c:otherwise>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 form-group">
                                    <label>Address</label>
                                    <input type="text" name="address" value="${list.address}" rows="3" class="form-control">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Email Address</label>
                                    <input type="text" name="email" value="${list.email}" class="form-control">
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Phone Number</label>
                                    <input type="text" name="contact" value="${list.contact}" class="form-control">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-lg btn-info">Update</button>					
			</div>
                    </f:form>
                </div>    
            </div>
        </div>
    </body>
</html>
