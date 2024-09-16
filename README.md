# test_jilfond

Работа реализована с двумя API методами:
1. /users/search/
2. /users/{id}

1. /users/search/
Метод принимает на вход GET параметр query.
Позволяет производить поиск пользователей по id или name. Поиск по полю id осуществляется по точному совпадению, name - по вхождению.
В качестве ответа метод возвращает json с ошибкой, например:
```json
# GET http://127.0.0.1:8000/users/search/
{
  "error":"Query is required"
}
```
или 
```json
# GET http://127.0.0.1:8000/users/search/?query=ghghgh
{
  "error":"No users found"
}
```

В случае удачного поиска - возвращает массив с найденными пользователями:
```json
# GET http://127.0.0.1:8000/users/search/?query=h
[
  {
    "id":4,
    "name":"Dasia Wintheiser",
    "lastname":"Rowe",
    "email":"zane.lakin@powlowski.com",
    "phone":"1-646-834-0769",
    "detail":"Corrupti eum sequi illum quo tempora quia iste vel. Nemo aut quia officiis maiores ipsum voluptatem sapiente. Et voluptas quibusdam odit eaque sint perspiciatis facilis.",
    "created_at":"2024-09-16T06:52:47.000000Z",
    "updated_at":"2024-09-16T06:52:47.000000Z"
  },
  {
    "id":6,
    "name":"Edgar Hudson",
    "lastname":"McGlynn",
    "email":"mcdermott.ed@hotmail.com",
    "phone":"(931) 861-9333",
    "detail":"Voluptatibus consequatur est omnis. Repellendus quaerat neque nemo dolores.",
    "created_at":"2024-09-16T06:52:47.000000Z",
    "updated_at":"2024-09-16T06:52:47.000000Z"
  }
]
```


2. /users/{id}
Метод принимает на вход ID пользователя.
Возвращает одного конкретного пользователя по его ID или ошибку, если пользователь не найден:

```json
# GET http://127.0.0.1:8000/users/1000
{
  "error":"User not found"
}
```

или
```json
{
  "id":1,
  "name":"Rosalee Klein",
  "lastname":"Streich",
  "email":"grady.keshaun@gmail.com",
  "phone":"+14789163883",
  "detail":"Et autem delectus veniam dolor minima voluptatibus ipsum quo. Libero mollitia ut molestiae nihil ut. Voluptatem cum delectus molestiae quam eum accusamus aspernatur.",
  "created_at":"2024-09-16T06:52:47.000000Z",
  "updated_at":"2024-09-16T06:52:47.000000Z"
}
```
