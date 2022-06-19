<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Update Hotel Informations</h1>
<form:form method="post" action="/update-hotel/${id}">
    <table>
        <tr class = "row">
            <td>Hotel Name: </td>
            <td><form:input path="name"/></td>
        </tr>
        <tr class = "row">
            <td>Address Line 1: </td>
            <td><form:input path="addressline1"/></td>
            <td>Address Line 2 : </td>
            <td><form:input path="addressline2"/></td>
        </tr>
        <tr class = "row">
             <td>Country : </td>
             <td><form:input path="country"/></td>
        </tr>
        <tr class = "row">
             <td>Number of employees : </td>
             <td><form:input path="numberofemployees"/></td>
        </tr>
        <tr class = "row">
            <td></td>
            <td><input type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>