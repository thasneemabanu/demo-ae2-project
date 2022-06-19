<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Create Feedback</h1>
<form:form method="post" action="/create-feedback">
    <table>
        <tr class = "row">
            <td>First Name: </td>
            <td><form:input path="name"/></td>
            <td>Email: </td>
            <td><form:input path="email"/></td>
        </tr>
         <tr class = "row">
            <td>Your Message: </td>
            <td><form:input path="message"/></td>
            <td>Ratings from A,B or C: </td>
            <td><form:input path="ratingsforthehotel"/></td>
        </tr>
        <tr class = "row">
            <td></td>
            <td><input type="submit" value="Create"/></td>
        </tr>
    </table>
</form:form>