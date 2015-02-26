<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<div id="errorAlert" class="alert alert-block alert-danger" style="display: none">
    <span class="errorMessage"></span>
</div>
<br/>
<div id="name"></div>
<a href="#createCompanyModal" id="showNameLink" >Show Random Name</a>
<br/>
<a href="#createCompanyModal" id="showNameLink2">Show Random Name (error)</a>
<br/>
<a href="#createCompanyModal" id="showNameLink3">Show Random Name($.get)</a>
<br/>
<a href="#createCompanyModal" id="showNameLink4">Show Random Name($.load)</a>
<br/>
<a href="#createCompanyModal" id="showNameLink5">Show Random Name($.post)</a>

<script type="text/javascript">
    var url = "${createLink(controller: 'util',action: 'randomName')}"
    jQuery("#showNameLink").on('click', function () {
        var $request = jQuery.ajax({
            url: url,
            data:{isAllowed:true},
            method: 'get'
        })
        $request.done(successCallback)
        $request.fail(failureCallback)
    })

    jQuery("#showNameLink2").on('click', function () {
        var $request = jQuery.ajax({
            url: url,
            data:{isAllowed:false},
            method: 'get'
        })
        $request.done(successCallback)
        $request.fail(failureCallback)
    })
    jQuery("#showNameLink3").on('click', function () {
      jQuery.get( url,{isAllowed:true}, successCallback)
    })
    jQuery("#showNameLink4").on('click', function () {
        jQuery("#name").load(url,{isAllowed:true});
    })
    jQuery("#showNameLink5").on('click', function () {
        jQuery.post(url,{isAllowed:true}, successCallback);
    })
    function successCallback(data) {
        if (data.status == false) {
            var errorMessage = data.errorMessage;
            showErrorAlert(errorMessage);
        } else {
            jQuery("#name").html(data);
        }
    }
    function failureCallback(jqXHR, textStatus) {
        alert("Some error has occurred.");
        console.log('Error in request: '+jqXHR.statusText);
        console.log('Error in request status: '+textStatus);
    }
    function showErrorAlert(errorMessage) {
        alert(errorMessage);
    }
</script>

</body>
</html>