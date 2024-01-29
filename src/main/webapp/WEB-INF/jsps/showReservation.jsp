<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
   <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url("https://media.istockphoto.com/id/1256620949/photo/travel-booking-web-page-concept-booking-on-the-internet.jpg?s=1024x1024&w=is&k=20&c=pbAmoZJUqJx5uRWgQRJH0nBo7Hn5zJu20aFLFImSZg8=");
            background-size: cover;
            background-position: center;
            font-family: 'Arial', sans-serif;
             /* Text color */
            text-align: center;
            height: 100vh; /* Full viewport height */
            display: flex;
            flex-direction: row;
           

            
        }
        .div1 {
    display: flex;
    /* Set the direction to row (horizontal) */
    border: 1px solid #ccc; /* Added a border for visibility */
    padding: 10px; /* Added padding for better appearance */
    margin-bottom: 20px;
}

.innerDiv {
    flex: 1; /* Make inner divs take equal width */
    background-color: lightblue;
    border: 1px solid #ddd; /* Added a border for visibility */
    padding: 10px; /* Added padding for better appearance */
    margin: 5px; /* Added margin for spacing between inner divs */
}
.Div {
 background-image: url("https://images.unsplash.com/photo-1568696331348-b166dcf47057?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
            background-size: cover;
            background-position: center;
     /* Make inner divs take equal width */
    background-color: lightblue;
    border: 1px solid #ddd; /* Added a border for visibility */
    padding: 10px; /* Added padding for better appearance */
    margin: 5px; /* Added margin for spacing between inner divs */
}
        .btn{
        background-color:blue;
        color:white;
        margin-top:10px;
        font-size:20px;
        border:none;
        }
        .btn:hover{
        background-color:lightred;
       
        }
</style>
</head>
<body>
<div class="Div">
<h2 style="text-decoration:underline;">Flight Details</h2>
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
</div>
<br>

<form action ="confirmReservation" method ="post">
<div class="div1">
<div class="innerDiv">
<h2>Enter Passenger Details</h2>
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
</div>

<div class="innerDiv">
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
<input type = "submit" value = "Complete Reservation" class="btn" />
</div>
</div>
</form>
</body>
</html>