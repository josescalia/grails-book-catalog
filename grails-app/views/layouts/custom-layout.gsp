<%--
  Created by IntelliJ IDEA.
  User: josescalia
  Date: 2/18/14
  Time: 7:06 AM
--%>
<!DOCTYPE html>
<html lang="en">
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails Book Catalog"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="stylesheet" href="${resource(dir: 'css/bootstrap/', file: 'bootstrap.min.css')}" type="text/css">
    %{--<link rel="stylesheet" href="${resource(dir: 'css/bootstrap', file: 'bootstrap-theme.min.css')}" type="text/css">--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom-layout.css')}" type="text/css">
    <g:layoutHead/>
    <script type="text/javascript" src="${resource(plugin:'jquery',  dir: 'js/jquery',file: 'jquery-1.8.3.min.js' )}"></script>
    <r:layoutResources/>
</head>

<body>
    %{--menu bootstrap style--}%
    <div id="menu" class="nav navbar navbar-fixed-top navbar-inverse">
        <a href="#" class="navbar-brand">Grails Book Catalog</a>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="${request.contextPath}/customAuthor/list"><span class="glyphicon glyphicon-user"></span> Author</a> </li>
            <li><a href="${request.contextPath}/customBook/list"><span class="glyphicon glyphicon-book"></span> Book</a> </li>
        </ul>
    </div>
    %{--end of bootstrap menu--}%

    %{--layout body here--}%
    <div class="container">
        <g:layoutBody/>
    </div>

    <g:javascript library="application"/>

    <script type="text/javascript" src="${resource(dir: 'js/bootstrap',file: 'bootstrap.min.js' )}"></script>
    <r:layoutResources />
</body>
</html>