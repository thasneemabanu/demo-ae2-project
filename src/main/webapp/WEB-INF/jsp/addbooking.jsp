<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Create Contact</h1>
<form:form method="post" action="/add-booking">
    <table>
        <tr>
            <td>Customer First Name: </td>
            <td><form:input path="customerfirstname"/></td>
        </tr>
        <tr>
            <td>Customer Last Name: </td>
            <td><form:input path="customerlasstname"/></td>
        </tr>
        <tr>
            <td>Date: </td>
            <td><form:input path="date"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Add"/></td>
        </tr>
    </table>
</form:form>