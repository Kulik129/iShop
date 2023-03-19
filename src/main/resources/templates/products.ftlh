
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
<h1>Список товаров</h1>
<#list products as product>
    <div>
        <p><b>${product.name}</b> ${product.price} ${product.quantityStorage} | <a href="/product/${product.id}">подробнее...</a></p>
    </div>
</#list>
<hr>
    <h3>создать новый товар</h3>
<form action="product/create" method="post">
    Название: <input type="text", name="name"/><br><br>
    Название: <input type="text", name="description"/><br><br>
    Название: <input type="text", name="organization"/><br><br>
    Название: <input type="text", name="price"/><br><br>
    Название: <input type="text", name="quantityStorage"/><br><br>
    Название: <input type="text", name="discountInformation"/><br><br>
    Название: <input type="text", name="comments"/><br><br>
    Название: <input type="text", name="keyWords"/><br><br>
    Название: <input type="text", name="characteristicsTable"/><br><br>
    Название: <input type="text", name="score"/><br><br>
    <input type="submit" value="добавить"/>
</form>
</body>
</html>