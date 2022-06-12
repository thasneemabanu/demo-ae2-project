<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Read Bookings</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>cottagename</th>
            <th>cottagetype</th>
            <th>cottageprice</th>
            <th>bookedon</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="booking" items="${bookings}">
            <tr>
                <td>${booking.id}</td>
                <td>${booking.cottagename}</td>
                <td>${booking.cottagetype}</td>
                <td>${booking.cottageprice}</td>
                <td>${booking.bookedon}</td>
                <td><a href="/update-booking/${booking.id}">Update</a></td>
                <td><a href="/delete-booking/${booking.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<a href="/add-booking">Create Bookings</a>