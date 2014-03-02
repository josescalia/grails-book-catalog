<%--
  Created by IntelliJ IDEA.
  User: josescalia
  Date: 2/22/14
  Time: 9:50 PM
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
    <a href="${request.contextPath}/customAuthor/list" class="btn btn-default btn-warning btn-sm">
        <span class="glyphicon glyphicon-arrow-left"></span> Back to List
    </a>
</p>
</body>
</html>