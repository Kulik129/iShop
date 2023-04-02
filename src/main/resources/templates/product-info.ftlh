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
<h4>Подробная информация о товаре</h4>
<#list images as img>
    <img src="/images/${img.id?c}" height="120px"/><br><br>
</#list>

<b>Название </b>${product.name}<br><br>
<b>Описание </b>${product.description}<br><br>
<b>Организация </b>${product.organization}<br><br>
<b>Цена </b>${product.price}<br><br>
<b>К-во на складе: </b>${product.quantityStorage}<br><br>
<b>Информация о скидках: </b>${product.discountInformation}<br><br>
<b>Ключевые слова: </b>${product.keyWords}<br><br>
<b>Характеристики: </b>${product.characteristicsTable}<br><br>
<hr>

<hr>
<h3>Добавить отзыв</h3>
<form action="/product/reviews" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    Отзыв: <input type="text" , name="feedback"/><br><br>
    Оценка: <input type="number" , name="score"/><br><br>
    <input type="submit" value="Добавить">
</form>
<a href="/feedback">отзывы</a>
    <hr>
</body>
</html>