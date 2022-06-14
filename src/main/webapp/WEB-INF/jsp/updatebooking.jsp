<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Update Contact</h1>
<form:form method="post" action="/update-booking/${id}">
    <table>
        <tr>
            <td>Employee Name: </td>
            <td><form:input path="employeename"/></td>
        </tr>
        <tr>
            <td>Customer Id: </td>
            <td><form:input path="customerid"/></td>
        </tr>
        <tr>
            <td>Package Id: </td>
            <td><form:input path="packageid"/></td>
        </tr>
        <tr>
            <td>Booked On: </td>
            <td><form:input path="bookedon"/></td>
        </tr>
        <tr>
            <td>Number of days: </td>
            <td><form:input path="numberofdays"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>