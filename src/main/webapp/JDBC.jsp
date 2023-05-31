<%--
  Created by IntelliJ IDEA.
  User: X541UV
  Date: 30.05.2023
  Time: 09:39 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>JDBCinJSTL</title>
</head>
<body>
    <h1>All users are: </h1>
    <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/students" user="root" password="rexrk" var="ds"></sql:setDataSource>
    <sql:query dataSource="${ds}" var="rs">Select * from students;</sql:query>

    <table>
        <tr>
            <td>Name</td>
            <td>User Id</td>
        </tr>

        <c:forEach items="${rs.rows}" var="row"></c:forEach>
        <tr><c:out value="row.sname"></c:out></tr>
        <tr><c:out value="row.sid"></c:out></tr>
    </table>
</body>
</html>
