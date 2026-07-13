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
            <a href="/index">Home</a>
            <a href="/details">Details</a>
            <a href="/about">About</a>
            <a href="/new-character-form">Add New Character</a>
        </ul>

        <header>
            <h1>Marvel Character Gallery</h1>
        </header>
    </nav>

    <div class="container">
        <div class="new-character-form">
            <h3>Add a New Character</h3>
            <form action="submit-character.php" method="POST">
                <label for="name">Character Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="description">Character Description:</label>
                <textarea id="description" name="description" required></textarea>

                <label for="image">Character Image URL:</label>
                <input type="url" id="image" name="image" required>

                <label for="role">Character Role:</label>
                <select id="role" name="role" required>
                    <option value="">Select a role</option>
                    <option value="hero">Hero</option>
                    <option value="villain">Villain</option>
                    <option value="civilian">Civilian</option>
                    <option value="ruler">Ruler</option>
                </select>

                <button type="submit">Add Character</button>
            </form>
    </div>
</body>

</html>