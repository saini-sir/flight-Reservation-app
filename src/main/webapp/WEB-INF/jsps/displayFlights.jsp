<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Flights</title>
   <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url("https://media.istockphoto.com/id/1256620949/photo/travel-booking-web-page-concept-booking-on-the-internet.jpg?s=1024x1024&w=is&k=20&c=pbAmoZJUqJx5uRWgQRJH0nBo7Hn5zJu20aFLFImSZg8=");
            background-size: cover;
            background-position: center;
            font-family: 'Arial', sans-serif;
            color: #ffffff; /* Text color */
            text-align: center;
            height: 100vh; /* Full viewport height */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .tbl{
        background-color:black;
        margin-bottom:200px;
        }
        a{
        color:yellow;
        }
         a:hover {
             /* Button background color on hover */
            color:white;
        }
</style>
</head>
<body>
   <h2 style="color:red; text-decoration:underline;">Flights Search Results</h2>
   <h2 style="color:blue">List of Flights</h2>
   <table border="" class="tbl">
   <thead>
   <tr>
   <th>Airlines</th>
   <th>Departure City</th>
   <th>Arrival City</th>
   <th>Departure Time</th>
   <th>Select Flight</th>
   </tr>
   </thead>
   <c:forEach items="${findFlights}" var ="findFlights">
   <tbody>
     <tr> 
     <td>${findFlights.operatingAirlines}</td>
     <td>${findFlights.departureCity}</td>
     <td>${findFlights.arrivalCity}</td>
     <td>${findFlights.estimatedDepartureTime}</td>
     <td><a href="showCompleteReservation?flightId=${findFlights.id}">Select</a></td>
     </tr>
   </tbody>
   </c:forEach>
  </table>
  </body>
  </html> 

