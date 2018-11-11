<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <title>Exercise</title>

    <link rel="stylesheet" type="text/css" href="<c:url value="/css/postitnote.css"/>"/>
</head>
<body>

<h1>Login</h1>
<%--Choose what code to generate based on tests that we implement--%>
<c:choose>
    <%--If the model has an attribute with the name `postitNotes`--%>
    <c:when test="${not empty sessionScope.login}">
        <h1>You are already logged in!</h1>
    </c:when>

    <%--If all tests are false, then do this--%>
    <c:otherwise>
        <c:if test="${not empty error}"><h3>${error}</h3></c:if>
        <%--Note that the `commandName` given here HAS TO MATCH the name of the attribute--%>
        <%--that is added to the model that is passed to the view.--%>
        <%--See PostitNoteController, method postitNoteViewGet(), and find where this attribute is added to the model.--%>
        <sf:form method="POST" modelAttribute="login" action="/login">

            <table>
                <tr>
                    <td>Username: </td>
                        <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                    <td><sf:input path="username" type="text" placeholder="Username" required="required"/></td>
                </tr>
                <tr>
                    <td>Password: </td>
                        <%--the `path` attribute matches the `note` attribute of the Entity that was passed in the model--%>
                    <td><sf:input path="password" type="password" placeholder="Password" required="required"/></td>
                </tr>
            </table>

            <input type="submit" VALUE="Login"/>

        </sf:form>
    </c:otherwise>
</c:choose>


</body>
</html>
