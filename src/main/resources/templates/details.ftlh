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
</body>

</html>