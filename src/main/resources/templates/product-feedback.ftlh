
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
<h4>Отзывы о товаре</h4>
<#list reviews as review>
    <p>Отзыв: ${review.feedback} отценка: ${review.score}</p>
    <form action="/product/delete-feedback/${review.id}" method="post">
        <input type="submit" value="Удалить"/>
    </form>
</#list>

<hr>

</body>
</html>