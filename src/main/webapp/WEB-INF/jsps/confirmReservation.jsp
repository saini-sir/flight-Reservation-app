<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
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
           

        }
        h3{
        background-color:blue;
        color:white;
        }
</style>
</head>
<body>
   <h3>Your ticket id booked. Your Reservation Id : ${reservationId}</h3>
   <h2 style="color:red;">Congratulations !! HAPPY JOURNEY</h2>
</body>
</html>