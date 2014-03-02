<%--
  Created by IntelliJ IDEA.
  User: josescalia
  Date: 2/22/14
  Time: 11:53 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="custom-layout">
    <title></title>
</head>

<body>
<form method="post" action="update" style="width:45%">
    <input type="hidden" id="id" name="id" value="${model?.id}">
    <g:render template="form"/>
    <p>
        <input type="submit" class="btn btn-default btn-info" value="Update">
        <input type="button" class="btn btn-default btn-info btnCancel" value="Cancel">
    </p>
</form>
<script type="text/javascript">
    $(document).ready(function () {
        $(".btnCancel").click(function () {
            window.location = "${request.contextPath}/customBook/list";
        });
    })
</script>
</body>
</html>