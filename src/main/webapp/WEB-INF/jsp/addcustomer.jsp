<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Create Customer</h1>
<form:form method="post" action="/add-customer">
<div class="container">
    <table>
        <tr class = "row">
            <td>First Name: </td>
            <td><form:input path="firstname"/></td>
            <td>Last Name: </td>
            <td><form:input path="lastname"/></td>
        </tr>
         <tr class = "row">
            <td>Mobile Number: </td>
            <td><form:input path="mobile"/></td>
        </tr>
        <tr class = "row">
            <td>Email: </td>
            <td><form:input path="email"/></td>
            <td>Password: </td>
            <td><form:input path="password"/></td>
        </tr>
         <tr class = "row">
           <td>Address: </td>
           <td><form:input path="address"/></td>
            <td>Country: </td>
            <td><form:input path="country"/></td>
        </tr>
        <tr class = "row">
            <td></td>
            <td><input type="submit" value="Add"/></td>
        </tr>
<div>
    </table>
</form:form>