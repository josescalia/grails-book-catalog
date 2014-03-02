<%--
  Created by IntelliJ IDEA.
  User: josescalia
  Date: 2/22/14
  Time: 11:17 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="custom-layout"/>
    <title></title>
</head>

<body>
   <h4>Add New Book</h4>
   <form action="addNew" method="post" style="width:45%">
       %{--include form here--}%
       <g:render template="form"/>
       %{--button action here--}%
       <p>
       <input type="submit" class="btn btn-default btn-info btn-sm" value="Save">
       <input type="button" class="btn btn-default btn-info btn-sm btnCancel" value="Cancel">
       </p>
   </form>
<script type="text/javascript">
    $(document).ready(function(){
        $(".btnCancel").click(function(){
            window.location = "${request.contextPath}/customBook/list";
        });
    });
</script>
</body>
</html>