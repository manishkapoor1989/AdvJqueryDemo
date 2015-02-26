
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Call-Back-Demo</title>

    <script>
        $(document).ready(function(){


            // Below one showing async behavior

            $("#hideWithoutCallBAck").click(function(){
                $("p").hide(2000);
                alert("The paragraph is now hidden");
            });


            // achieving sync behavior using call back

            $("#hideWithCallBAck").click(function(){
                $("p").hide(2000, function(){
                    alert("The paragraph is now hidden");
                });
            });


            $("#each").click(function(){
              $.each(["Hello","World"],function(index,value){
               $('#eachCallBack').append("<div>"+value+" at index "+index+"</div><br>");
              });

            });
        });
    </script>

    <style type="text/css">
    p {background-color:#006dba}
    div{background-color: #ff8888}
    </style>
</head>

<body>
<button id="hideWithoutCallBAck">Hide Blue Paragraph Without callback</button>
<br><br>
<p>This is a paragraph with little content.</p>
<br>
<button id="hideWithCallBAck">Hide Blue Paragraph With callback</button>
<br><br>
<hr>
<br>
<button id="each">Show Hello World From Array With Index</button>
<br>
<div id="eachCallBack"></div>
</body>
</html>

<!--
// Basic call Back Demo

var increment= function(value){
  console.log(value+1);
}

var print= function(value){
  console.log(value);
}


var array = [1,2,3,4,5];

function processArray(array, callback){
  for(var i in array){
  callback(array[i]);
  }
}

processArray(array,print);
console.log('----------------------')
processArray(array,increment);

-->