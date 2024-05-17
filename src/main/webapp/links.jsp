<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I18N(Internationalization)</title>
</head>
<body>
	View website in:
	<a href="?locale=en_Us">English(Us)</a>
	<a href="?locale=es_AR">Spanish</a>
	<a href="?locale=ru_RU">Russian</a>
	<a href="?locale=hi_IN">Hindi</a>
	<a href="?locale=mr_IN">Marathi</a>
	<a href="?locale=gu_IN">Gujrati</a>
	<a href="?locale=de_DE">Germany</a>
	<br />
	<br />
	<hr />
	<fmt:setLocale value="${param.locale}" />

	<fmt:bundle basename="i18n/website">
		<p><fmt:message key="label.hello" />Shraddha,
		<p><fmt:message key="label.welcome" />
		<p><fmt:message key="label.message" />
		<p><fmt:message key="label.thanks" />
	</fmt:bundle>
	<br /> Locale: ${param.locale}




</body>
</html>