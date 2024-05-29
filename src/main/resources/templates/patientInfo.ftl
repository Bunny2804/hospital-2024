<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            background:#cccccc;
            margin-top: 20px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .section-title {
            font-size: 1.2em;
            margin-bottom: 10px;
            color: #555;
        }
        .label {
            font-weight: bold;
            color: #777;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center mb-4 ">WW HELP YOU</h1>
    <div class="card mb-4">
        <div class="card-header bg-primary text-white">
            Основна інформація
        </div>
        <div class="card-body">
            <div class="mb-3">
                <span class="label">Ім'я:</span> ${patients.firstName+ " " +patients.lastName}
            </div>
            <div class="mb-3">
                <span class="label">Вік:</span> ${patients.age} років
            </div>
    </div>
    <div class="card mb-4">
        <div class="card-header bg-success text-white">
            Медична інформація
        </div>
        <div class="card-body">
            <div class="section-title">Діагнози:</div>
            <div class="mb-3">
                <span class="label">Поточний діагноз:</span> Гострий бронхіт
            </div>
            <div class="mb-3">
                <span class="label">Попередні діагнози:</span> Гіпертонія, Остеохондроз
            </div>
            <div class="section-title">Призначення:</div>
            <div class="mb-3">
                <span class="label">Ліки:</span> Амоксицилін, Парацетамол
            </div>
            <div class="mb-3">
                <span class="label">Процедури:</span> Інгаляції
            </div>
            <div class="mb-3">
                <span class="label">Операції:</span> Немає
            </div>
            <div class="mb-3">
                <span class="label">Дата початку лікування:</span> 15.05.2024
            </div>
            <div class="mb-3">
                <span class="label">Лікуючий лікар:</span> д-р Олексій Коваленко
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>