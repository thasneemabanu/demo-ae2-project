<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<h1>Create Package</h1>
<form:form method="post" action="/add-package">
    <table>
        <tr class = "row">
            <td>Package: </td>
            <td><form:input path="packagename"/></td>
            <td>Package Name: </td>
            <td><form:input path="packagetype"/></td>
        </tr>
        <tr class = "row">
            <td>Price: </td>
            <td><form:input path="packageprice"/></td>
            <td>Details: </td>
            <td><form:input path="packagedetails"/></td>
        </tr>
        <tr class = "row">
            <td></td>
            <td><input class="btn btn-Dark" type="submit" value="Create"/></td>
        </tr>
    </table>
</form:form>
<script src="/js/bootstrap.js"></script>