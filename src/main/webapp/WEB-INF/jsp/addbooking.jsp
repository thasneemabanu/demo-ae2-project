<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Create Contact</h1>
<form:form method="post" action="/add-booking">
    <table>
        <tr>
            <td>Cottage Name: </td>
            <td><form:input path="cottagename"/></td>
        </tr>
        <tr>
            <td>Cottage Type: </td>
            <td><form:input path="cottagetype"/></td>
        </tr>
        <tr>
            <td>Cottage Price: </td>
            <td><form:input path="cottageprice"/></td>
        </tr>
            <td>Booked On: </td>
            <td><form:input path="bookedon"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Add"/></td>
        </tr>
    </table>
</form:form>