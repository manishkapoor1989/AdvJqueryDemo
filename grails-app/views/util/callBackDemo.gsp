
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Call-Back-Demo</title>
    <script>
        $(document).ready(function(){
            $("button").click(function(){
                $("p").hide(2000, function(){
                    alert("The paragraph is now hidden");
                });
            });
        });
    </script>
</head>

<body>
<button>Hide</button>

<p>This is a paragraph with little content.</p>
</body>
</html>