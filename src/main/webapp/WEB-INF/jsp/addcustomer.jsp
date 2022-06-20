<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<body style="background-color:powderblue;">
<div class="container">
    <div class="card">
<h1 class="text-light text-center " style="background:black;">Create Customer</h1>
<form:form method="post" action="/add-customer">
<div class="container">
    <table>
        <tr class = "row">
            <td class="col">First Name: </td>
            <td><form:input path="firstname"/></td>
            <td class="column">Last Name: </td>
            <td><form:input path="lastname"/></td>
        </tr>
         <tr class = "row">
            <td class="col">Mobile Number: </td>
            <td><form:input path="mobile"/></td>
        </tr>
        <tr class = "row">
            <td class="col">Email: </td>
            <td><form:input path="email"/></td>
            <td class="column">Password: </td>
            <td><form:input path="password"/></td>
        </tr>
         <tr class = "row">
           <td class="col">Address: </td>
           <td><form:input path="address"/></td>
            <td class="col">Country: </td>
            <td><form:input path="country"/></td>
        </tr>
        <tr class = "row">
            <td></td>
            <td><input class="btn btn-outline-success" type="submit" value="Add"/></td>
        </tr>
<div>
    </table>
</form:form>
    </div>
 </div>
</body>
<script src="/js/bootstrap.js"></script>