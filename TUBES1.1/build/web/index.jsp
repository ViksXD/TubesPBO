<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Review Website</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Inter', sans-serif;
            background-color: #f9f9f9;
            color: #333;
        }

        /* Navigation Bar */
        nav {
            display: flex;
            flex-direction: row;
            justify-content: center;
            padding: 1.5rem;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            gap: 2.5rem;
            background-color: white;
        }

        nav img {
            height: 30px;
            width: 10%;
        }

        nav a {
            font-family: 'Montserrat', sans-serif;
            font-weight: bold;
            color: #FF0000;
            text-decoration: none;
        }

        nav a:hover {
            text-decoration: underline;
        }

        /* Hero Section */
        section {
            justify-content: center;
        }

        .hero {
            margin-top: 9rem;
            display: flex;
            flex-direction: row;
        }

        .hero-left {
            display: flex;
            flex-direction: column;
            width: 50%;
            justify-content: center;
            margin-left: 8rem;
        }

        .hero-left h1 {
            font-family: 'Montserrat', sans-serif;
            font-weight: bold;
            font-size: 3rem;
            margin-bottom: 1.75rem;
            background: linear-gradient(to right, black, #FF0000);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero-left h2 {
            font-size: 1.25rem;
            width: 83.333%;
            margin-bottom: 4rem;
        }

        .hero-left a {
            background-color: #FF0000;
            color: white;
            padding: 0.5rem;
            width: 11rem;
            border-radius: 9999px;
            text-align: center;
            font-family: 'Montserrat', sans-serif;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
        }

        .hero-left a:hover {
            background-color: #c70000;
        }

        .hero img {
            max-width: 100%;
            height: auto;
        }

        /* Movies Section */
        .container {
            width: 90%;
            margin: 3rem auto;
            text-align: center;
        }
        
        h1.section-title {
            color: #b00;
            font-size: 2rem;
            margin-bottom: 2rem;
        }

        .movies {
            display: flex;
            justify-content: center;
            gap: 30px; /* Menambah jarak antar gambar */
            flex-wrap: wrap;
        }

        .movie {
            width: 300px; /* Menambah ukuran lebar gambar */
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        .movie img {
            width: 100%; /* Pastikan gambar memenuhi kontainer */
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        .movie p {
            margin-top: 10px;
            font-weight: bold;
            font-size: 1.2rem; /* Menambah ukuran teks */
            font-family: 'Montserrat', sans-serif;
            color: red;
        }
        
        html {
            scroll-behavior: smooth;
        }
        
                /* Top Films Section */
                
        .ranking-section {
            margin: 3rem auto;
            width: 90%;
            text-align: center;
        }
                
        h2.section-title {
            font-size: 2rem;
            font-weight: bold;
            color: #FF0000;
            margin-bottom: 2rem;
        }
               

        .ranking-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px;
        }

        .ranking-card {
            width: 200px;
            text-align: center;
            padding: 1rem;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        .ranking-card:hover {
            transform: translateY(-10px);
        }

        .ranking-number {
            font-size: 1.5rem;
            font-weight: bold;
            color: #FF0000;
        }

        .ranking-poster {
            width: 100%;
            height: auto;
            border-radius: 8px;
            margin: 0.5rem 0;
        }

        .ranking-title {
            font-family: 'Montserrat', sans-serif;
            font-weight: bold;
            margin: 0.5rem 0;
            color: #333;
        }

        .ranking-rating {
            font-size: 1rem;
            color: #555;
        }

    </style>
</head>
<body>
    <nav>
        <img src="Images/logo.png" alt="Logo" />
        <a href="signUp.jsp">CREATE ACCOUNT</a>
        <a href="#movies-section">MOVIES</a>
        <a href="signIn.jsp">SIGN IN</a>
    </nav>

    <section>
        <div class="hero">
            <div class="hero-left">
                <h1>Bagikan Pendapatmu, Temukan Perspektif Baru.</h1>
                <h2>"Bagikan ulasan film favoritmu dan temukan perspektif baru dari sesama pecinta film. Jadilah bagian dari komunitas ini sekarang!"</h2>
                <a href="#">Ayo Mulai!</a>
            </div>
            <img src="Images/gambar.png" alt="Hero Image" />
        </div>
    </section>

    <div class="container" id="movies-section">
        <h1 class="section-title">MOVIES</h1>
        <div class="movies">
            <a href="signUp.jsp">
                <div class="movie">
                    <img src="Images/interstellar.jpg" alt="Interstellar">
                    <p>Interstellar</p>
                </div>
            </a>
            <a href="signUp.jsp">
                <div class="movie">
                    <img src="Images/back-to-future.jpg" alt="Back To The Future">
                    <p>Back To The Future</p>
                </div>
            </a>
            <a href="signUp.jsp">
                <div class="movie">
                    <img src="Images/jaws.jpg" alt="Jaws">
                    <p>Jaws</p>
                </div>
            </a>
            <a href="signUp.jsp">
                <div class="movie">
                    <img src="Images/joker.jpg" alt="Joker">
                    <p>Joker</p>
                </div>
            </a>
            <a href="signUp.jsp">
                <div class="movie">
                    <img src="Images/shutter-island.jpg" alt="Shutter Island">
                    <p>Shutter Island</p>
                </div>
            </a>
        </div>
    </div>

    <section class="ranking-section">
        <h2 class="section-title">Top Films</h2>
        <div class="ranking-container">
            <!-- Film 1 -->
            <div class="ranking-card">
                <div class="ranking-number">#1</div>
                <img class="ranking-poster" src="Images/interstellar.jpg" alt="Interstellar Poster">
                <h3 class="ranking-title">Interstellar</h3>
                <p class="ranking-rating">⭐ 4.9</p>
            </div>
            <!-- Film 2 -->
            <div class="ranking-card">
                <div class="ranking-number">#2</div>
                <img class="ranking-poster" src="Images/joker.jpg" alt="Joker Poster">
                <h3 class="ranking-title">Joker</h3>
                <p class="ranking-rating">⭐ 4.8</p>
            </div>
            <!-- Film 3 -->
            <div class="ranking-card">
                <div class="ranking-number">#3</div>
                <img class="ranking-poster" src="Images/back-to-future.jpg" alt="Back to the Future Poster">
                <h3 class="ranking-title">Back to the Future</h3>
                <p class="ranking-rating">⭐ 4.7</p>
            </div>
            <!-- Film 4 -->
            <div class="ranking-card">
                <div class="ranking-number">#4</div>
                <img class="ranking-poster" src="Images/jaws.jpg" alt="Jaws Poster">
                <h3 class="ranking-title">Jaws</h3>
                <p class="ranking-rating">⭐ 4.6</p>
            </div>
            <!-- Film 5 -->
            <div class="ranking-card">
                <div class="ranking-number">#5</div>
                <img class="ranking-poster" src="Images/shutter-island.jpg" alt="Shutter Island Poster">
                <h3 class="ranking-title">Shutter Island</h3>
                <p class="ranking-rating">⭐ 4.5</p>
            </div>
        </div>
    </section>

    
</body>
</html>
