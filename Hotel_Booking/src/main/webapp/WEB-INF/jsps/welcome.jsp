<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<h1>HI ${name}</h1>
<a href="showRoom?userId=${userId}">CLICK HERE TO BOOK ROOM</a><br><br>
<a href="myBookings?userId=${userId}">MY BOOKINGS</a>
</body>
</html>