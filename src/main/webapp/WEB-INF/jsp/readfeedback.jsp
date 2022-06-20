<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<h1>Read customer feedback</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th scope="col" bgcolor="7DF2F8">Id</th>
            <th scope="col" bgcolor="7DF2F8">name</th>
            <th scope="col" bgcolor="7DF2F8">Email</th>
            <th scope="col" bgcolor="7DF2F8">Message</th>
            <th scope="col" bgcolor="7DF2F8">Ratings</th>

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
<a class="btn btn-Dark"href="/create-feedback">Create Customer feedback</a>
<script src="/js/bootstrap.js"></script>