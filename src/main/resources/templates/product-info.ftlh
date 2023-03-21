
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>iShop</title>
</head>
<body>
<h1>iShop</h1><hr>
<h4>Подробная информация о товаре</h4>
<b>Название </b>${product.name}<br><br>
<b>Описание </b>${product.description}<br><br>
<b>Организация </b>${product.organization}<br><br>
<b>Цена </b>${product.price}<br><br>
<b>К-во на складе: </b>${product.quantityStorage}<br><br>
<b>Информация о скидках: </b>${product.discountInformation}<br><br>
<#--<b>Комментарии: </b>${product.comments}<br><br>-->
<b>Ключевые слова: </b>${product.keyWords}<br><br>
<b>Характеристики: </b>${product.characteristicsTable}<br><br>
<#--<b>Оценка: </b>${product.score}<br><br>-->

<hr>
<h3>создать новый товар</h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить"/>
</form>
<h3>добавить отзыв</h3>
<form action="/product/reviews" method="post">
    Отзыв: <input type="text" , name="feedback"/><br><br>
    Оценка: <input type="number", name="score"/><br><br>
    <input type="submit" value="Добавить">
</form>
</body>
</html>