<!DOCTYPE html>
<html>
<head>
    <title>iShop</title>
</head>
<body>
<h1>iShop</h1><hr>
<h3>Подробная информация о пользователе ${user.name}</h3>
<b>Номер телефона: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<b>Имя: </b> ${user.name}<br>

<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>