<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <title>Employee List</title>
        <link href="<c:url value="/bootstrap/css/main.css" />" rel="stylesheet">
        <link href="<c:url value="/bootstrap/css/bootstrap.css" />" rel="stylesheet">
        <script type="text/javascript" src="<c:url value="/bootstrap/js/jquery-1.7.2.js" />"></script>
    </head>

    <body>
        <div class="container" style="margin-top: 50px;">	
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Employee Profile Information
                        </div>
                        <div class="panel-body">
                            <table class="table table-striped table-bordered table-hover table-responsive" id="">
                                <thead>
                                    <tr>
                                       <th class="col-sm-1" style="width: 3%">ID</th>
                                       <th class="col-sm-1" style="width: 9%">First Name</th>
                                       <th class="col-sm-1" style="width: 9%">Last Name</th>
                                       <th class="col-sm-1" style="width: 13%">Father Name</th>
                                       <th class="col-sm-1" style="width: 13%">Mother Name</th>
                                       <th class="col-sm-1" style="width: 9%">Qualification</th>
                                       <th class="col-sm-1" style="width: 10%">Address</th>
                                       <th class="col-sm-1" style="width: 6%">Gender</th>
                                       <th class="col-sm-1" style="width: 7%">E-mail</th>
                                       <th class="col-sm-1" style="width: 6%">Contact</th>
                                       <th class="col-sm-2" style="width: 13%"></th>
                                   </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${list}" var="list">
                                        <tr>
                                            <td class="col-sm-1" style="width: 3%">
                                                ${list.id}
                                            </td>
                                            <td class="col-sm-1" style="width: 10%">
                                                ${list.firstName}
                                            </td>
                                            <td class="col-sm-1" style="width: 10%">
                                                ${list.lastName}
                                            </td>
                                            <td class="col-sm-1" style="width: 13%">
                                                ${list.fatherName}
                                            </td>
                                            <td class="col-sm-1" style="width: 13%">
                                                ${list.motherName}
                                            </td>
                                            <td class="col-sm-1" style="width: 9%">
                                                ${list.qualification}
                                            </td>
                                            <td class="col-sm-1" style="width: 10%">
                                                ${list.address}
                                            </td>
                                            <td class="col-sm-1" style="width: 6%">
                                                ${list.gender}
                                            </td>
                                            <td class="col-sm-1" style="width: 7%">
                                                ${list.email}
                                            </td>
                                            <td class="col-sm-1" style="width: 6%">
                                                ${list.contact}
                                            </td>
                                            <td class="col-sm-2" style="width: 13%">
                                                <div class="col-xs-1" style="width: 6% ;padding-left: 0%; margin-left: 0px;">
                                                    <a href="update.htm?id=${list.id}" class="btn btn-xs btn-success">Update</a>
                                                </div>
                                                <div class="col-xs-1" style="width: 6% ;padding-left: 38%;">
                                                    <a href="remove.htm?id=${list.id}" onclick="myFunction()" class="btn btn-xs btn-danger">Delete</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
           $(function (){
                //myFunction();
            });
            function myFunction() {
                if (confirm("Are you sure to delete?")==true) {
                    alert("Deleted successfully");
                } else {
                    alert("Deletion failed");
                }
            }
        </script>
    </body>
</html>
