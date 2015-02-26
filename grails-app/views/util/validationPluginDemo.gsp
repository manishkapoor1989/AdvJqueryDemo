
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
    <style type="text/css">
        .error{color:red;}
    </style>
</head>

<body>
    <g:form name="userForm">
           <div><p>Name</p><g:textField name="name" id="name"/></div><br/>
           <div><p>Age</p><g:textField name="age" id="age"/></div><br/>
           <div><p>Salary</p><g:textField name="salary" id="salary"/></div><br/>
           <g:submitButton name="submitUserForm" value="Save" class="save"/>
    </g:form>


<script>
    $(document).ready(function(){
        $('#userForm').validate({
            rules: {
                name: {
                  required: true
                },
                age: {
                    required: true,
                    digits:true,
                    remote:"validateAge"
                },
                salary: {
                    required: true,
                    digits:true
                }
            },
            messages:{
                name: {
                    required: "Please enter your name."
                },
                age: {
                    required: "Please enter your age.",
                    digits:"Please enter valid age.",
                    remote:"Please enter valid age."
                },
                salary: {
                    required:"Please anter your salary.",
                    digits:"Please enter valid salary."
                }
            },
            submitHandler: function () {
                $.ajax({
                    url: "${createLink(controller: "util", action: "createUser")}",
                    data: $('#userForm').serialize()
                }).done(function (data) {
                            alert('Submitted.')
                });
            }
        });

    })
</script>
</body>
</html>