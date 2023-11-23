<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>CheckOut Details</h1>
<form>
<table border="1">
<tr>
<td>Booking Id</td>
<td>Guest Name</td>
<td>Age</td>
<td>Check In Date</td>
<td>Check Out Date</td>
<td>Room No</td>
<td>User Id</td>
<td>Phone No</td>
<td>Gender</td>
<td>No of Guests</td>
<td>Max Capacity</td>
<td>Room Type</td>
<td>CheckIN Time</td>
<td>Paid Amount</td>
<td>Click Here</td>
</tr>
<c:forEach var="Details" items="${check}">
<tr><td style="font-size: 24px;">
${Details.bookingId}</td>
<td>${Details.guestName}</td>
<td>${Details.age}</td>
<td>${Details.checkInDate}</td>
<td>${Details.checkOutDate}</td>
<td>${Details.roomId}</td>
<td>${Details.userId}</td>
<td>${Details.phone}</td>
<td>${Details.gender}</td>
<td>${Details.noOfGuests}</td>
<td>${Details.maxCapacity}</td>
<td>${Details.roomType}</td>
<td>${Details.timestamp}</td>
<td style="font-size: 28px;">
${Details.payableAmount}
</td>
<td>
<a href="checkOut?roomId=${Details.roomId}&guestName=${Details.guestName}&maxCapacity=${Details.maxCapacity}&noOfGuests=${Details.noOfGuests}&age=${Details.age}
&checkInDate=${Details.checkInDate}&checkOutDate=${Details.checkOutDate}&phone=${Details.phone}&gender=${Details.gender}&bookingId=${Details.bookingId}&payableAmount=${Details.payableAmount}&userId=${Details.userId}
&timestamp=${Details.timestamp}&roomType=${Details.roomType}">Check Out</a>
</td>
</tr>
</c:forEach>
</table>

</form>

</body>
</html>