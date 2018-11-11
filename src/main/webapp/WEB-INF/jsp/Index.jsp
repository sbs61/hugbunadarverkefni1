<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

    <head>
        <title>PIGS Workout tracker</title>

        <link rel="stylesheet" type="text/css" href="<c:url value="/css/postitnote.css"/>"/>
    </head>
    <body>

    <div class="header">
    <h1>Choose an exercise category</h1>
    <div class="login">
    <input href="/Login" class="loginButton" type="button" VALUE="Login"/>
    <a href="/Register">Create new account</a>
    </div>
    </div>

    <ul>
        <li><a href="/Chest">Chest</a></li>
        <li><a href="/Back">Back</a></li>
        <li><a href="/Legs">Legs</a></li>
        <li><a href="/Abs">Abs</a></li>
    </ul>

    </body>
    <footer>Class HBV501G, University of Iceland</footer>
</html>
