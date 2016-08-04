<%-- 
    Document   : loginPage
    Created on : Aug 4, 2016, 11:10:30 AM
    Author     : Udit S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<style>
    .error {
        color: #ff0000;
    }
    .errors {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>

<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  prefix="msg" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form:form action="loginValidate.htm" commandName="user" method="POST">
            <form:errors path="*" cssClass="errors" element="div" />
            <form:input path="userName"></form:input></br>
            <form:errors path="userName" cssClass="error" element="div" />
            
            <form:password path="password"></form:password></br>
             <form:errors path="password" cssClass="error" element="div" />
             <%----%>
            <input type="submit" value="<msg:message code="NotEmpty.user.password"/>"/>
        </form:form>
    </body>
</html>

