<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Functions in JSTL</h1>
<c:set var="name" value="Bhagugugugu"></c:set>
<h1><c:out value="${name}"></c:out></h1>

<%--Length of String--%>
<h1><c:out value="${fn:length(name)}"></c:out></h1>

<%--to Lower Case--%>
<h3><c:out value="${fn:toLowerCase(name)}"></c:out></h3>

<%--Contains string--%>
<h5> This String contains gugu:
<c:out value="${fn:contains(name, 'raman')}"></c:out>
</h5>

</body>
</html>
