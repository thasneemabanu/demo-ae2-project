<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<h1 class="text-dark text-center " style="background:silver;">Create Hotel</h1>
<form:form method="post" action="/create-hotel">
    <table>
        <tr class = "row">
            <td>Name: </td>
            <td><form:input path="name"/></td>
        </tr>
        <tr <tr class = "row">>
            <td>Address1: </td>
            <td><form:input path="addressline1"/></td>
            <td>Address2: </td>
            <td><form:input path="addressline2"/></td>
        </tr>
        <tr <tr class = "row">>
            <td>Country: </td>
            <td><form:input path="country"/></td>
        </tr>
        <tr <tr class = "row">>
            <td>Number of employees </td>
            <td><form:input path="numberofemployees"/></td>
        </tr>
        <tr <tr class = "row">>
            <td></td>
            <td><input class="btn btn-Dark" type="submit" value="Create"/></td>
        </tr>
    </table>
</form:form>