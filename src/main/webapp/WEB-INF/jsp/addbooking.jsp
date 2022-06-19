<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1> Booking Form</h1>
<form:form method="post" action="/add-booking">
    <table>
        <tr class = "row">
            <td>Employee Name: </td>
            <td><form:input path="employeename"/></td>
            <td>Customer Id: </td>
            <td><form:input path="customerid"/></td>
        </tr>
        <tr class = "row">
            <td>Package Id: </td>
            <td><form:input path="packageid"/></td>
            <td>Booked On: </td>
            <td><form:input path="bookedon"/></td>
        </tr>
        <tr class = "row">
            <td>Number of days: </td>
            <td><form:input path="numberofdays"/></td>
        </tr>
        <tr class = "row">
            <td></td>
            <td><input class="btn btn-primary"type="submit" value="Book"/></td>
        </tr>
    </table>
</form:form>