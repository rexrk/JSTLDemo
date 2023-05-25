<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body bgcolor="#72ffb1">
<h1><%= "JSTL Demo!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

<%--Set Tag--%>
<c:set var="i" value="0" scope="page"></c:set>

<%--Out tag--%>
<h1><c:out value="${i}"></c:out></h1>

<%--Remove Tag--%>
<%--<c:remove var="i"></c:remove>--%>
<hr>

<%--if tag || only prints when tru ||--%>
<c:if test="${i <= 13}">
    <h2>i is less than equal. Nice</h2>
</c:if>

<%--choose, when, otherwise--%>
<c:choose>
    <c:when test="${i < 0}">
        <h2>i is less than 0</h2>
    </c:when>

    <c:when test="${i > 0}">
        <h2>i is greater than 0</h2>
    </c:when>

    <c:otherwise>
        <h2>i is equal to zero</h2>
    </c:otherwise>

</c:choose>

</body>
</html>