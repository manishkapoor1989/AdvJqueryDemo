
<%@ page import="grails.converters.JSON" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>JSON Demo</title>
    <style type="text/css">
        p{background-color: tomato}
        div{background-color: turquoise}
    </style>
</head>

<body>
<h2>JSON Object Creation in JavaScript</h2>
<br>
<p id="demoJsonObject"></p>
<br>
<div id="demoJsonArray"></div>

<script type="application/javascript">
    $(document).ready(function(){
        var jsonObject = '{"name":"John Johnson","street":"Oslo West 16","phone":"555 1234567"}';
        var obj = JSON.parse(jsonObject);
        $("#demoJsonObject").append(obj.name + "<br>" + obj.street + "<br>" + obj.phone);


        var jsonArray='[100,200,300,400,500]';
        var obj2 = JSON.parse(jsonArray);
        $.each(obj2,function(index,value){
            $("#demoJsonArray").append(value+"<br>");
        });

    });
</script>

</body>
</html>