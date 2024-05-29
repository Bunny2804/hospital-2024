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
        .container {
            background-color: #ddcaff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 50%;
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
        .btn-add {
            background-color: #8e53e7;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            margin-right: 20px;
            cursor: pointer;
            border-radius: 5px;
        }
        .btn-add:hover {
            background-color: #e698fd;
        }
        .btn-container {
            text-align: right;
        }
    </style>
</head>
<body>
<div class="container position-relative">
    <h1 class="text-center mb-4">WW HELP YOU</h1>
    <h2 class="text-center my-4">Список пацієнтів</h2>
    <div class="row">
        <!-- Карта 1 -->

        <#if patients??>
            <#list patients as ppp>
        <div class="col-12">
            <div class="card">
                <div class="card-header bg-primary text-white">${ppp.firstName+ " " +ppp.lastName }</div>
                <div class="card-body">
                    <div class="mb-3">
                        <span class="label">Вік:</span> ${ppp.age} років</div>
                    <form action="patient/${ppp.id}" method="get">
                        <input type="submit" value="Info">

                    </form>
                </div>
            </div>
        </div>
        </#list>
        </#if>
    <div class="btn-container">
        <button class="btn-add">Додати пацієнта</button>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>
