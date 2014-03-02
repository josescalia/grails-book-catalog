<%--
  Created by IntelliJ IDEA.
  User: josescalia
  Date: 2/20/14
  Time: 6:39 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <meta name="layout" content="custom-layout">
    <title></title>
</head>

<body>
<h3 style="text-align:center">Author List</h3>

<p>
    <a class="btn btn-default btn-info" href="add"><span class="glyphicon glyphicon-plus-sign"></span> Add New</a>
</p>
<table class="table table-bordered table-hovered">
    <thead>
    <tr style="background-color:gray">
        <td class="text-center" style="color:#ffffff;font-weight:bold">ID</td>
        <td class="text-center" style="color:#ffffff;font-weight:bold">Author Name</td>
        <td class="text-center" style="color:#ffffff;font-weight:bold">Age</td>
        <td class="text-center" style="color:#ffffff;font-weight:bold">Address</td>
    </tr>
    </thead>
    <tbody>
    <g:each in="${authorList}" var="author">
        <tr>
            <td style="text-align:center;width:25% ">
                <a href="${request.contextPath}/customAuthor/edit?id=${author.id}" class="btn btn-default btn-success"><span
                        class="glyphicon glyphicon-edit"></span> Edit</a>
                <a href="#" id="${author.id}" class="btn btn-default btn-danger delBtn"><span class="glyphicon glyphicon-trash"></span> Delete</a>
            </td>
            <td>${author.authorName}</td>
            <td>${author.age}</td>
            <td>${author.address}</td>
        </tr>
    </g:each>
    </tbody>
</table>

<div class="pagination">
    <g:paginate total="${totalData}"/>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $(".delBtn").click(function () {
            $.ajax({
                url: "delete",
                data: "id=" + $(this).attr("id"),
                type: 'POST',
                dataType: "json",
                success: function (data) {
                    alert("Result : " + data.res);
                    window.location.reload();
                }
            });
        })
    })
</script>
</body>
</html>