<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Update Contact</h1>
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
            <td><form:input path="passwored"/></td>
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
            <td><input type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>