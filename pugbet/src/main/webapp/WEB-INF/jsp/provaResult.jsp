<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Getting Started: Handling Form Submission</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
	<h1>Result</h1>
    <p th:text="'nome: ' + ${provaUtente.nome}" />
    <p th:text="'cognome: ' + ${provaUtente.cognome}" />
    <a href="/prova">Submit another message</a>
</body>
</html>