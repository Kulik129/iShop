
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>iShop</title>
</head>
<body>
    <h1>iShop | <a href="/login">Войти</a></h1><hr>
<h1>Список товаров</h1>
<form action="/" method="get">
    Поиск по названию: <input type="text" name="name"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.name}</b> ${product.price} руб.  ${product.quantityStorage} | <a href="/product/${product.id}">подробнее...</a></p>
        <p><b>${product.name}</b> | <a href="/feedback">отзывы</a></p>
    </div>
    <#else>
    <h3>Список пуст...</h3>
</#list>

<hr>
    <h3>создать новый товар</h3>
<form action="/product/create" method="post">
    Название: <input type="text", name="name"/><br><br>
    Описание: <input type="text", name="description"/><br><br>
    Организация: <input type="text", name="organization"/><br><br>
    Цена: <input type="number", name="price"/><br><br>
    К-во на складе: <input type="number", name="quantityStorage"/><br><br>
    Информация о скидках: <input type="text", name="discountInformation"/><br><br>
<#--    Комментарии: <input type="text", name="comments"/><br><br>-->
    Ключевые слова: <input type="text", name="keyWords"/><br><br>
    Характеристики: <input type="text", name="characteristicsTable"/><br><br>
<#--    Оценка: <input type="number", name="score"/><br><br>-->
    <input type="submit" value="добавить"/>
</form>
</body>
</html>