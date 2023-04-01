
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>iShop</title>
</head>
<body>
<h1 style="color: blueviolet"><a href="/">iShop</a><h1/>
<h1>Авторизация</h1>


<form class="box" action="/login" method="post">
    <h1>Email</h1>
    <input type="email" name="username" placeholder="email">
    <input type="password" name="password" placeholder="password">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>
    <a href="/registration">Зарегистрироваться</a>
</body>
</html>