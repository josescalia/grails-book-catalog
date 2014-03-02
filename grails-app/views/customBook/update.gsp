<%--
  Created by IntelliJ IDEA.
  User: josescalia
  Date: 2/23/14
  Time: 12:26 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="custom-layout"/>
    <title></title>
</head>

<body>
<p>
    ${msg}
</p>

<p class="text-center">
    <a href="${request.contextPath}/customBook/list" class="btn btn-default btn-warning btn-sm">
        <span class="glyphicon glyphicon-arrow-left"></span> Back to List
    </a>
</p>
</body>
</html>