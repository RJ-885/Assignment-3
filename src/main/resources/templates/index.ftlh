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
        <#list postsList as post>
            <article class="card">
                <header>
                    <a href="/characters/${post.characterId?c}">
                        <h2>${post.name}</h2>
                    </a>
                </header>

                <img src="post_4.png" />

                <div class="content">
                    <p>
                        ${post.description}
                    </p>
                </div>

                <footer>
                    <h4>${post.role}</h4>
                </footer>
            </article>
        </#list>
    </div>
</body>

</html>