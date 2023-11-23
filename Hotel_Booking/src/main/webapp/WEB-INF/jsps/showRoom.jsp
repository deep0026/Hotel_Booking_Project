<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "a" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rooms</title>
</head>
  <style>
        table:first-child {
            margin-bottom: 20px; 
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
    </style>
<body>
<h1>ROOMS</h1>
<form>
<table border="1">
<tr>
<th>Room Type</th>
<th>Max Capacity</th>
<th>Room No</th>
<th>Click Here</th>
</tr>
<a:forEach var="room" items="${rooms}">
<tr>
<td>${room.roomType}</td>
<td>${room.maxCapacity}</td>
<td>${room.roomId}</td>
<td><a href="bookingDetails?roomId=${room.roomId}&userId=${userId}&maxCapacity=${room.maxCapacity}
&roomType=${room.roomType}">BOOK NOW</a></td>
</tr>

</a:forEach>
</table>
<table border="1">
<tr>
<th>Amenities</th>
</tr>
<tr>
<td>AC<br>
TV<br>
Free Wifi<br>
Kitchen<br>
Geyser<br>
Power backup<br>
</td></tr>
</table>
</form>

</body>
</html>