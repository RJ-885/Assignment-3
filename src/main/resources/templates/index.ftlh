<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Web Page</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <nav>
        <ul class="main-nav">
            <a href="index.html">Home</a>
            <a href="details.html">Details</a>
            <a href="about.html">About</a>
            <a href="new-character-form.html">Add New Character</a>
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
        <article class="card">
            <header>
                <a href="details.html">
                    <h2>Black Panther</h2>
                </a>
            </header>

            <img src="black-panther.jpg" alt="Black Panther" />

            <div class="content">
                <p>
                    Also known as T’Challa, he is the king of Wakanda, known for his superhuman abilities, intelligence,
                    and leadership.
                </p>
            </div>

            <footer>
                <span class="badge-hero">Hero</span>
                <span class="badge-ruler">Ruler</span>
            </footer>
        </article>

        <article class="card">
            <header>
                <a href="details.html">
                    <h2>Doctor Doom</h2>
                </a>
            </header>

            <img src="doctor-doom.jpg" alt="Doctor Doom" />

            <div class="content">
                <p>
                    Doctor Doom, born Victor von Doom, is the ruler of Latveria, and archenemy
                    of the Fantastic Four.
                </p>
            </div>
            <footer>
                <span class="badge-villain">Villain</span>
                <span class="badge-ruler">Ruler</span>
            </footer>
        </article>

        <article class="card">
            <header>
                <a href="details.html">
                    <h2>Iron Man</h2>
                </a>
            </header>

            <img src="iron-man.jpg" alt="Iron Man" />

            <div class="content">
                <p>
                    Iron Man is the superhero alter ego of Tony Stark, a genius billionaire inventor who uses a powered suit of armor to fight evil and protect the world.
                </p>
            </div>
            <footer>
                <span class="badge-civilian">Civilian</span>
            </footer>
        </article>
        
        <article class="card">
            <header>
                <a href="details.html">
                    <h2>Thanos</h2>
                </a>
            </header>

            <img src="thanos.jpg" alt="Thanos" />
            <div class="content">
                <p>
                    Thanos is a powerful supervillain, known as the Mad Titan, who seeks to balance the universe by eliminating half of all life.
                </p>
            </div>
            <footer>
                <span class="badge-villain">Villain</span>
            </footer>
        </article>

        <article class="card">
            <header>
                <a href="details.html">
                    <h2>Spider Man</h2>
                </a>
            </header>

            <img src="spider-man.jpg" alt="Spider-Man" />
            <div class="content">
                <p>
                    Spider-Man is the superhero alter ego of Peter Parker, a teenager from Queens, New York, who gains superhuman abilities after being bitten by a radioactive spider.
                </p>
            </div>
            <footer>
                <span class="badge-hero">Hero</span>
            </footer>
        </article>
    </div>
</body>

</html>