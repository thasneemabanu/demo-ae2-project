<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Update Package</h1>
<form:form method="post" action="/update-package/${id}">
    <table>
        <tr>
            <td>Package: </td>
            <td><form:input path="pack"/></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td><form:input path="email"/></td>
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