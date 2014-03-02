<%--
  Created by IntelliJ IDEA.
  User: josescalia
  Date: 2/22/14
  Time: 12:00 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="custom-layout">
    <title></title>
</head>
<body>
<form action="addNew" method="post" class="col-md-4">
    <g:render template="form"/>
    %{--button area here--}%
    <p>
      <input type="submit" class="btn btn-info btn-sm" value="Save">
      <input type="button" class="btn btn-info btn-sm btnCancel" value="Cancel">
    </p>
    %{--end button area--}%
</form>
<script type="text/javascript">
    $(document).ready(function(){
        $(".btnCancel").click(function(){
            window.location = "${request.contextPath}/customAuthor/list"
        });
    })
</script>
</body>
</html>