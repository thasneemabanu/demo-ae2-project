<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Update Feedback</h1>
<form:form method="post" action="/update-feedback/${id}">
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
            <td>Message: </td>
            <td><form:input path="message"/></td>
        </tr>
        <tr>
            <td>Ratings: </td>
            <td><form:input path="ratingsforthehotel"/></td>
        </tr>

        <tr>
            <td></td>
            <td><input type="submit" value="Update" /></td>
        </tr>
    </table>
</form:form>