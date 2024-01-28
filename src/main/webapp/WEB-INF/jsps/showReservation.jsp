<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
</head>
<body>
<h2>Flight Details</h2>
<table border="">
<tr>
<td>Flight Number:</td><td> ${flight.flightNumber}</td>
</tr>
<tr>
<td>Operating AirLines:</td><td> ${flight.operatingAirlines}</td>
</tr>
<tr>
<td>Departure City:</td><td> ${flight.departureCity}</td>
</tr>
<tr>
<td>Arrival City :</td><td> ${flight.arrivalCity}</td>
</tr>
<tr>
<td>Departure Date:</td><td> ${flight.dateOfDeparture}</td>
</tr>
</table>
<br>
<h2>Enter Passenger Details</h2>
<form action ="confirmReservation" method ="post">
<table >
<tr>
<td>First Name:</td><td> <input type = "text" name = "firstName"/></td>
</tr>
<tr>
<td>Last Name:</td><td><input type="text" name ="lastName" /> </td>
</tr>
<tr>
<td>Middle Name:</td><td><input type = "text" name="middleName" /> </td>
</tr>
<tr>
<td>Email Address:</td><td><input type = "email" name = "email" /></td>
</tr>
<tr>
<td>Phone Number:</td><td> <input type = "number" name = "phone" /> </td>
</tr>
</table>
<input type = "hidden" name="flightId" value="${flight.id}" />


<h2>Enter The Payment Details</h2>
<table >
<tr>
<td>Name of the card:</td><td> <input type = "text" name = "nameOfTheCard"/></td>
</tr>
<tr>
<td>Card Number:</td><td><input type="text" name ="cardNumber" /> </td>
</tr>
<tr>
<td>Cvv:</td><td><input type = "text" name="cvv" /> </td>
</tr>
<tr>
<td>Expiry Date:</td><td><input type = "text" name = "expiryDate" /></td>
</tr>
</table>
<input type = "submit" value = "complete Reservation" />
</form>
</body>
</html>