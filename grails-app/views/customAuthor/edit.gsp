<%--
  Created by IntelliJ IDEA.
  User: josescalia
  Date: 2/22/14
  Time: 9:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="custom-layout"/>
    <title></title>
</head>

<body>
<form action="update" method="POST">
    <input type="hidden" id="id" name="id" value="${model?.id}">
    %{--template here--}%
    <g:render template="form"/>
    %{--button action here--}%
    <p>
     <input type="submit" class="btn btn-default btn-info btn-sm" value="Update">
     <input type="button" class="btn btn-default btn-info btn-sm btnCancel" value="Cancel">
    </p>
</form>
<script type="text/javascript">
    $(document).ready(function(){
        $(".btnCancel").click(function(){
            window.location = "${request.contextPath}/customAuthor/list";
        });
    })
</script>
</body>
</html>