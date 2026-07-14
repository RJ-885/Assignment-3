<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Web Page</title>
    <link rel="stylesheet" href="/style.css">
</head>

<body>
    <nav>
        <ul class="main-nav">
            <a href="/characters">Home</a>
            <a href="/about">About</a>
            <a href="/characters/new">Add New Character</a>
        </ul>

        <header>
            <h1>Marvel Character Gallery</h1>
        </header>
    </nav>



    <div class="container">
        <div class="character-details">
            <div class="row">
                <div class="description-header">
                    <h3>${post.name}</h3>
                </div>
                <div class="column-description">
                    <p>${post.description}</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <a href="/characters/update/${post.characterId}">
            <button class="button-outline">Edit</button>
        </a>

        <a href="/characters/delete/${post.characterId}">
            <button class="button-outline">Delete</button>
        </a>
    </div>
    <div class="container">
        <div class="new-character-form">
            <h3>Edit This Character</h3>
            <form action="/characters/save" method="post" enctype="multipart/form-data">
                <label for="name">Character Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="description">Character Description:</label>
                <textarea id="description" name="description" required></textarea>

                <label for="role">Character Role:</label>
                <select id="role" name="role" required>
                    <option value="">Select a role</option>
                    <option value="hero">Hero</option>
                    <option value="villain">Villain</option>
                    <option value="civilian">Civilian</option>
                    <option value="ruler">Ruler</option>
                </select>

                <label for="age">Character Age</label>
                <textarea id="age" name="age"></textarea>

                <label for="thumbnailFile">Thumbnail Image</label>
                <input type="file" id="thumbnailFile" name="thumbnailFile" required>

                <button type="submit">Add Character</button>
            </form>
    </div>
</body>

</html>