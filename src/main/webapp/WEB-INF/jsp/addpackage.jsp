<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Create Package</h1>
<form:form method="post" action="/add-package">
    <table>
        <tr>
            <td>Package: </td>
            <td><form:input path="packagename"/></td>
        </tr>
        <tr>
            <td>Package Name: </td>
            <td><form:input path="packagetype"/></td>
        </tr>
        <tr>
            <td>Price: </td>
            <td><form:input path="packageprice"/></td>
        </tr>
        <tr>
            <td>Details: </td>
            <td><form:input path="packagedetails"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Create"/></td>
        </tr>
    </table>
</form:form>