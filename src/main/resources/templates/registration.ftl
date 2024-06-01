<#import "/spring.ftl" as spring>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<h2> Сторінка реєстрації </h2>

<div class="row">

    <div class="col-3"></div>

    <div class="col-6">
        <form action="/registration" method="post">

            <@spring.bind "users"/>

            <label for="name">Name</label><br>
            <@spring.formInput "users.name" ' placeholder="username"'/><br>
            <@spring.showErrors "<br>"/><br>

            <label for="code">Code</label><br>
            <@spring.formInput "users.code" ' placeholder="password"'/><br>
            <@spring.showErrors "<br>"/><br>
            <br>

            <@spring.bind "doctor"/>
            <label for="firstName">first name</label><br>
            <@spring.formInput "doctor.firstName" ' placeholder="first name"'/><br>
            <@spring.showErrors "<br>"/>

            <label for="lastName">last name</label><br>
            <@spring.formInput "doctor.lastName" ' placeholder="last name"'/><br>
            <@spring.showErrors "<br>"/>

            <label for="phone">phone</label><br>
            <@spring.formInput "doctor.phone" ' placeholder="phone"'/><br>
            <@spring.showErrors "<br>"/>

<#--            <label for="email">email</label><br>-->
<#--            <@spring.formInput "doctor.email" ' placeholder="email"'/><br>-->
<#--            <@spring.showErrors "<br>"/>-->


            <input type="submit" value="addNewUser">

        </form>
    </div>

    <div class="col-3"></div>

</div>






<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>
</body>
</html>