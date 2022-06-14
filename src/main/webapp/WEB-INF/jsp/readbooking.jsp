<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Read Bookings</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>Employee Name</th>
            <th>Customer id</th>
            <th>Package id</th>
            <th>Booked on</th>
            <th>Number of days</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="booking" items="${bookings}">
            <tr>
                <td>${booking.id}</td>
                <td>${booking.employeename}</td>
                <td>${booking.customerid}</td>
                <td>${booking.packageid}</td>
                <td>${booking.bookedon}</td>
                <td>${booking.numberofdays}</td>
                <td><a href="/update-booking/${booking.id}">Update</a></td>
                <td><a href="/delete-booking/${booking.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<a href="/add-booking">Create Bookings</a>