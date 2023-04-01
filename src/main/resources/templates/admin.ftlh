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
<h2>Панель администратора</h2>
<table border="1">
    <tr>
        <th>Email:</th>
        <th>Номер телефона:</th>
        <th>Активность</th>
        <th>Роли:</th>
        <th>Блокировка:</th>
        <th>Редактирование</th>
        <th>Подробная информация:</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as rol>${rol}, </#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Бан">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Редактировние</a></th>
            <th><a href="/user/${user.id}">Подробная информация</a></th>
        </tr>
    <#else>
        Пользовати отсутствуют
    </#list>
</table>
<hr>
<hr>

<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Название: <input type="text" , name="name"/><br><br>
    Описание: <input type="text" , name="description"/><br><br>
    Организация: <input type="text" , name="organization"/><br><br>
    Цена: <input type="number" , name="price"/><br><br>
    К-во на складе: <input type="number" , name="quantityStorage"/><br><br>
    Информация о скидках: <input type="text" , name="discountInformation"/><br><br>
    Ключевые слова: <input type="text" , name="keyWords"/><br><br>
    Характеристики: <input type="text" , name="characteristicsTable"/><br><br>
    Фото 1: <input type="file" , name="file1"/><br><br>
    Фото 2: <input type="file" , name="file2"/><br><br>
    Фото 3: <input type="file" , name="file3"/><br><br>

    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Добавить"/>

</form>
<hr>
<hr>
<h3>Удалить товар</h3>
<#list products as product>
    <b>Название</b> ${product.name}<br><br>
    <img src="/images/${product.previewImageId?c}" height="120px"><br>
    <b>Описание</b> ${product.description}<br><br>
    <b>Организация</b> ${product.organization}<br><br>
    <form action="/product/delete/${product.id?c}" method="get">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Удалить товар"/>
    </form>
</#list>

</body>
</html>