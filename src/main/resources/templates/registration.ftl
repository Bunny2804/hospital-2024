<#import "/spring.ftl" as spring>
<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Сторінка реєстрації</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .main-container {
            background-color: #ddcaff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 90%;
            max-width: 600px;
            text-align: center;
        }
        .form-label {
            font-size: 18px;
            color: #6a3cb4;
            margin-top: 10px;
        }
        .form-control {
            padding: 10px;
            font-size: 16px;
            margin-top: 5px;
        }
        .btn-purple {
            background-color: #8e53e7;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            border-radius: 5px;
            margin-top: 20px;
            text-decoration: none;
        }
        .btn-purple:hover {
            background-color: #6a3cb4;
            color: white;
        }
        .show-errors {
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="main-container">
    <h2>Сторінка реєстрації</h2>
    <form action="/registration" method="post">
        <@spring.bind "users"/>
        <label for="name" class="form-label">Логін</label><br>
        <@spring.formInput "users.name" ' class="form-control" placeholder="username"'/><br>
        <div class="show-errors"><@spring.showErrors "<br>"/></div>
        <label for="code" class="form-label">Пароль</label><br>
        <@spring.formInput "users.code" ' class="form-control" placeholder="password"'/><br>
        <div class="show-errors"><@spring.showErrors "<br>"/></div>
        <@spring.bind "doctor"/>
        <label for="firstName" class="form-label">Ім'я</label><br>
        <@spring.formInput "doctor.firstName" ' class="form-control" placeholder="first name"'/><br>
        <div class="show-errors"><@spring.showErrors "<br>"/></div>
        <label for="lastName" class="form-label">Прізвище</label><br>
        <@spring.formInput "doctor.lastName" ' class="form-control" placeholder="last name"'/><br>
        <div class="show-errors"><@spring.showErrors "<br>"/></div>
        <label for="phone" class="form-label">Номер телефону</label><br>
        <@spring.formInput "doctor.phone" ' class="form-control" placeholder="phone"'/><br>
        <div class="show-errors"><@spring.showErrors "<br>"/></div>
        <input type="submit" value="Зареєструватись" class="btn btn-purple">
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>
