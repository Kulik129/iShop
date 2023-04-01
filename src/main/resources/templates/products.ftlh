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
<hr>
<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Панель администратора</a>
    </#if>
<#else>
    <h4><a href="/login">Войти</a></h4>
</#if>
<hr>

<h1>Список товаров</h1>
<form action="/" method="get">
    Поиск по названию: <input type="text" name="name">
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <a href="/product/${product.id?c}">
        <p><b>${product.name}</b></p>
        <img src="/images/${product.previewImageId?c}" height="120px">
        <h3>${product.price} ₽</h3>
    </a>

<#else>
    <h3>Список пуст...</h3>
</#list>

<hr>
</body>
</html>