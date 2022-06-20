<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<h1>Login User</h1>
<form:form method="post" action="/login-customer">
    <table>
        <tr>
            <td>Email : </td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td>Password: </td>
            <td><form:input path="password"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input class="btn btn-primary" type="submit" value="Login"/></td>
            <td><a href="/add-customer">register a customer<input class="btn btn-Primary" type="submit" value="Login"/></a></td>
        </tr>
    </table>
</form:form>
<script src="/js/bootstrap.js"></script>