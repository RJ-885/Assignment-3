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



    <div class="search-section">
        <div class="search-container">
            <input type="text" class="search-bar" placeholder="Search by Character">
            <button>Search</button>
        </div>

        <div class="filter-buttons">
            <button class="button-outline">Hero</button>
            <button class="button-outline">Villain</button>
            <button class="button-outline">Civilian</button>
            <button class="button-outline">Ruler</button>
        </div>
    </div>

    <h3>Character Gallery</h3>

    <div class="cards">
        <#list characterList as character>
            <article class="card">
                <header>
                    <a href="/characters/${character.characterId?c}">
                        <h2>${post.name}</h2>
                    </a>
                </header>

                <img src="black-panther.jpg" alt="Black Panther" />

                <div class="content">
                    <p>
                        ${post.description}
                    </p>
                </div>

                <footer>
                    <h3>${post.role}</h3>
                </footer>
            </article>
        </#list>
    </div>
</body>

</html>