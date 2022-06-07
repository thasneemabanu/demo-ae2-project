<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Read customer feedback</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>name</th>
            <th>Email</th>
            <th>Message</th>
            <th>Ratings</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="feedback" items="${feedbacks}">
            <tr>
                <td>${feedback.id}</td>
                <td>${feedback.name}</td>
                <td>${feedback.email}</td>
                <td>${feedback.message}</td>
                <td>${feedback.ratingsforthehotel}</td>
                <td><a href="/update-feedback/${feedback.id}">Update</a></td>
                <td><a href="/delete-feedback/${feedback.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<a href="/create-feedback">Create Customer feedback</a>