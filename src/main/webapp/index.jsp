<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form:form action="loginValidate.htm" commandName="login">
            <form:input path="username"></form:input>
            <form:password path="password"></form:password>
            <form:button name="loginButton" value="SignIn"></form:button>
        </form:form>
    </body>
</html>
