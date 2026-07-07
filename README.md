# Assignment-3


### 1. Get All Posts

```http
GET /api/post
````

**Response:**

```json
[
  {
    "id": 1,
    "name": "Iron-Man",
    "description": "Tony Stark, an inventor turned superhero after he developed a powerful metal suit.",
    "role": "Hero"
    "age": 38
  },
  {
    "id": 2,
    "name": "Spider-Man",
    "description": "Peter Parker, a young high-school student who was bitten by a radioactive spider.",
    "role": "Hero"
    "age": 17
  },
  {
    "id": 3,
    "name": "Every-Man",
    "description": "Just a guy.",
    "role": Civilian,
    "age": 21
  }
]
```

### 2. Get Post by ID

```http
GET /api/post/{id}
```

**Response:**

```json
{
    "id": 1,
    "name": "Iron-Man",
    "description": "Tony Stark, an inventor turned superhero after he developed a powerful metal suit.",
    "role": "Hero"
    "age": 38
}
```

### 3. Create a New Post

```http
POST /api/post
request body:
{
    "name": "New Guy",
    "description": "Someone never before seen!",
    "role": "Unknown"
    "age": 50
}
```

**Response:**

```json
{
    "id": 4,
    "name": "New Guy",
    "description": "Someone never before seen!",
    "role": "Unknown"
    "age": 30
}
```

### 4. Update an Existing Post

```http
PUT /api/post/{id}
request body:
{
    "name": "New Guy",
    "description": "Someone never before seen!",
    "role": "Unknown"
    "age": 50
}
```

**Response:**

```json
{
    "id": 1,
    "name": "New Guy",
    "description": "Someone never before seen!",
    "role": "Unknown"
    "age": 50

}
```

### 5. Delete a Post

```http
DELETE /api/post/{id}
```

**Response:** <Empty>

### 6. Search Posts by Title or Content

```http
GET /api/post/search?query={searchTerm}
```

**Response:**

```json
[
  {
    "id": 1,
    "name": "Iron-Man",
    "description": "Tony Stark, an inventor turned superhero after he developed a powerful metal suit.",
    "role": "Hero"
    "age": 38
  }
]
```

### 7. Search Character by Role

```http
GET /api/post/search?role={role}
```

**Response:**

```json
[
  {
    "id": 3,
    "name": "Every-Man",
    "description": "Just a guy.",
    "role": Civilian,
    "age": 21
  }
]
```