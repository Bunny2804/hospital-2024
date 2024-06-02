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
            background-color: #ddcaff;
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
        .btn-action {
            background-color: #8e53e7;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            margin-top: 20px;
            cursor: pointer;
        }
        .btn-action:hover {
            background-color: #6a3cb4;
        }
        .form-section {
            background-color: #ffd1dc;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
        }
        .card-header-bg {
            background-color: #8e53e7 !important;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center mb-4">WW HELP YOU</h1>
    <div class="card mb-4">
        <div class="card-header bg-primary text-white card-header-bg">
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
    </div>
    <div class="card mb-4">
        <div class="card-header bg-success text-white card-header-bg">
            Медична інформація
        </div>
        <div class="card-body">
            <div class="form-section">
                <div class="mb-3">
                    <label for="currentDiagnosis" class="label">Поточний діагноз:</label>
                    <input type="text" id="currentDiagnosis" name="currentDiagnosis" class="form-control" placeholder="Введіть поточний діагноз">
                </div>
            </div>
            <div class="mb-3">
                <label for="previousDiagnosis" class="label">Попередні діагнози:</label>
                <span>Гіпертонія, Остеохондроз</span>
            </div>
            <div class="form-section">
                <div class="section-title">Призначення:</div>
                <div class="mb-3">
                    <label for="medications" class="label">Ліки:</label>
                    <input type="text" id="medications" name="medications" class="form-control" placeholder="Введіть ліки">
                </div>
                <div class="mb-3">
                    <label for="procedures" class="label">Процедури:</label>
                    <input type="text" id="procedures" name="procedures" class="form-control" placeholder="Введіть процедури">
                </div>
                <div class="mb-3">
                    <label for="operations" class="label">Операції:</label>
                    <input type="text" id="operations" name="operations" class="form-control" placeholder="Введіть операції">
                </div>
                <div class="mb-3">
                    <label for="startDate" class="label">Дата початку лікування:</label>
                    <input type="date" id="startDate" name="startDate" class="form-control">
                </div>
            </div>
        </div>
    </div>
    <button class="btn btn-action" onclick="location.href='/workPlace';">Виписати</button>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>
