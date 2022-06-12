<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Read Package</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>Package</th>
            <th>Email</th>
            <th>Country</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="packag" items="${packages}">
            <tr>
                <td>${packag.id}</td>
                <td>${packag.pack}</td>
                <td>${packag.email}</td>
                <td>${packag.country}</td>
                <td><a href="/update-package/${packag.id}">Update</a></td>
                <td><a href="/delete-package/${packag.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<a href="/add-package">add Package</a>