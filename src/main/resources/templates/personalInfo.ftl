<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Список пацієнтів</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .main-container {
            display: flex;
            align-items: flex-start;
            justify-content: center;
            width: 90%;
        }
        .sidebar {
            background-color: #f3e6ff;
            padding: 20px;
            border-radius: 8px;
            margin-right: 20px;
            width: 25%;
            border: 2px solid #8e53e7; /* Фіолетовий бордер */
        }
        .sidebar h3 {
            color: #8e53e7;
        }
        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }
        .sidebar ul li {
            margin-bottom: 10px;
        }
        .sidebar ul li a {
            color: #8e53e7;
            text-decoration: none;
            font-size: 18px; /* Збільшений розмір тексту */
        }
        .sidebar ul li a:hover {
            text-decoration: underline;
        }
        .container {
            background-color: #ddcaff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 70%;
        }
        .card {
            margin-bottom: 20px;
        }
        .card-header {
            background-color: #8e53e7 !important;
            color: #fff1f1 !important;
            font-weight: bold;
        }
        .label {
            font-weight: bold;
            color: #777;
        }
        h1, h2 {
            color: #974f9f;
        }
    </style>
</head>
<body>
<div class="main-container">
    <div class="main">
        <h3>Особистий кабінет лікаря</h3>
        <ul>
            <li><a href="#discharges">Виписки</a></li>
            <li><a href="#medications">Ліки</a></li>
            <li><a href="#patients">Пацієнти</a></li>
        </ul>
    </div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>
