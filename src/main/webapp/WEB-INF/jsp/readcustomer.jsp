<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Read Customers</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Mobile</th>
            <th>Email</th>
            <th>Address</th>
            <th>Country</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="customer" items="${customer}">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.firstname}</td>
                <td>${customer.lastname}</td>
                <td>${customer.mobile}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td>${customer.country}</td>
                <td><a href="/update-customer/${customer.id}">Update</a></td>
                <td><a href="/delete-customer/${customer.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<a href="/add-customer">Create Customer</a>