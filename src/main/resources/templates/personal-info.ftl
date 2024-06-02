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
            flex-direction: column;
            padding-top: 20px;
        }
        .header {
            text-align: center;
            margin-bottom: 40px;
            width: 100%;
        }
        .header h1 {
            font-size: 64px;
            color: #d3c6e3;
        }
        .main-container {
            display: flex;
            align-items: flex-start;
            justify-content: center;
            width: 90%;
            max-width: 1600px;
            margin: 0 auto;
        }
        .sidebar {
            background-color: #ffd1dc;
            padding: 30px;
            border-radius: 8px;
            margin-right: 40px;
            width: 30%;
            border: 3px solid #8e53e7;
        }
        .sidebar h3 {
            color: #8e53e7;
            text-align: center;
            font-size: 28px;
        }
        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }
        .sidebar ul li {
            margin-bottom: 20px;
            text-align: center;
        }
        .sidebar ul li a {
            color: #8e53e7;
            text-decoration: none;
            font-size: 24px;
        }
        .sidebar ul li a:hover {
            text-decoration: underline;
        }
        .container {
            background-color: #ddcaff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            width: 70%;
        }
        .card {
            margin-bottom: 30px;
        }
        .card-header {
            background-color: #8e53e7 !important;
            color: #fff1f1 !important;
            font-weight: bold;
            font-size: 24px;
        }
        .label {
            font-weight: bold;
            color: #777;
            font-size: 18px;
        }
        h1, h2 {
            color: #974f9f;
            font-size: 32px;
        }
    </style>
</head>
<body>
<div class="header">
    <h1>WW HELP YOU</h1>
</div>
<div class="main-container">
    <div class="sidebar">
        <h3>Особистий кабінет лікаря</h3>
        <ul>
            <li><a href="#personal-info">Особиста інформація</a></li>
            <li><a href="#doctor-info">Інформація про лікарів</a></li>
            <li><a href="#operations">Операції</a></li>
            <li><a href="#appointments">Призначення</a></li>
            <li><a href="#discharges">Виписки</a></li>
            <li><a href="#medications">Ліки</a></li>
            <li><a href="/workPlace">Пацієнти</a></li>
        </ul>
    </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>
