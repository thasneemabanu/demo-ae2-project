<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Update Contact</h1>
<form:form method="post" action="/update-booking/${id}">
    <table>
        <tr>
            <td>Customer First Name: </td>
            <td><form:input path="cottagename"/></td>
        </tr>
        <tr>
            <td>Customer Last Name: </td>
            <td><form:input path="cottagetype"/></td>
        </tr>
        <tr>
            <td>Date: </td>
            <td><form:input path="cottageprice"/></td>
        </tr>
        <tr>
            <td>Date: </td>
            <td><form:input path="bookedon"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>