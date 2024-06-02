<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        .login {
            background-color: #e4bcf5;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 90%;
            margin: 0 auto;
        }
        .login h1 {
            text-align: center;
        }
        .login label,
        .login input,
        .login button {
            display: block;
            width: 100%;
        }
        .login input {
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .login button {
            padding: 10px;
            background-color: #9b66e5;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .login button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1 style="font-size: 48px; color: #d3c6e3">WW HELP YOU</h1>
<div class="login">
    <form id="loginForm" action="/login" method="post">
        <label for="username">Логін:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Пароль:</label>
        <input type="password" id="password" name="password" required><br>

        <button type="submit">Увійти</button>

        <a href="registration">Зареєструватись</a>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>
</body>
</html>