<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dojo Survey Index</title>
</head>
<body>
	<form method="POST" action="/login">
	    <label>Your Name: <input type="text" name="username"></label>
	    
	     <label for="dojo">Your Dojo: </label>
		  <select id="dojo" name="dojo">
		    <option value="San Jose">San Jose</option>
		    <option value="Los Angeles">Los Angeles</option>
		    <option value="Chicago">Chicago</option>
		    <option value="other">Other</option>
		  </select>
		  
		 <label for="language">Your Favorite Language: </label>
		  <select id="language" name="language">
		    <option value="Python">Python</option>
		    <option value="Java">Java</option>
		    <option value="C++">C++</option>
		    <option value="Other">Other</option>
		  </select>
		  
		  <p> Comments (Optional): <textarea name = "comments"> </textarea> </p>
		  <input type="submit">
	</form>
</body>
</html>