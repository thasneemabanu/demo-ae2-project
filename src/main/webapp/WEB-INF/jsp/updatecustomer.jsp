<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<body style="background-color:powderblue;">
<div class="container">
    <div class="card">
<h1 class="text-light text-center " style="background:black;" >Update Contact</h1>
<form:form method="post" action="/update-customer/${id}">
    <table>
        <tr>
            <td>First Name: </td>
            <td><form:input path="firstname"/></td>
        </tr>
        <tr>
            <td>Last Name: </td>
            <td><form:input path="lastname"/></td>
        </tr>
        <tr>
            <td>Mobile Number: </td>
            <td><form:input path="mobile"/></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td>Password: </td>
            <td><form:input path="password"/></td>
        </tr>
        <tr>
            <td>Address: </td>
            <td><form:input path="address"/></td>
        </tr>
        <tr>
            <td>Country: </td>
            <td><form:input path="country"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input class="btn btn-primary" type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>
    </div>
 </div>
</body>
<script src="/js/bootstrap.js"></script>