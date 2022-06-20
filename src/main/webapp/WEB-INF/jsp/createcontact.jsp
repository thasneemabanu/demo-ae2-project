<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<h1 class="text-dark text-center " style="background:silver;">Create Contact</h1>
<form:form method="post" action="/create-contact">
    <table>
        <tr>
            <td>Name: </td>
            <td><form:input path="name"/></td>
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
            <td><input class="btn btn-Dark" type="submit" value="Create"/></td>
        </tr>
    </table>
</form:form>
<script src="/js/bootstrap.js"></script>