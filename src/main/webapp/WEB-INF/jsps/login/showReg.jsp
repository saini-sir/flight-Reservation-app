<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Registrataion</title>
</head>
<body>
<h2>Create New Account</h2>
<form action="saveReg" method="post">
<pre>
First Name<input type = "text" name = "firstName" required placeholder = "Enter First Name"/>
Last Name <input type = "text" name ="lastName" required placeholder ="Enter Last Name" />
EmailId   <input type ="email" name = "email" reqired placeholder ="Enter Email"/>
Password  <input type = "number" name="password" required placeholder ="Enter Password"/>
          <input type = "submit" value = "Save" />
</pre>
</form>
</body>
</html>