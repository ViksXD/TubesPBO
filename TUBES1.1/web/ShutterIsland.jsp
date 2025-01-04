<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shutterisland Review</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
        <style>
            /* Navigation Bar */
            nav {
                display: flex;
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
        </style>
</head>
<body class="bg-gray-100 font-sans">
    <nav>
        <img src="Images/logo.png" alt="Logo" />
        <a href="indexPengguna.jsp">MOVIES</a>
        <a href="">MY REVIEW</a>
        <a href="watchlist.jsp">WATCHLIST</a>
        <a href="profile.jsp">PROFILE</a>
    </nav>

    <div class="movie-header bg-white shadow rounded-lg p-6 m-6 flex">
        <img src="Images/shutter-island.jpg" alt="shutterisland Movie Poster" class="w-64 h-auto rounded-md shadow-md">
        <div class="details ml-6">
            <h1 class="text-2xl font-bold text-gray-800">Shutterisland
                <a href="reviewShutterIsland.jsp" class="ml-4 px-4 py-2 bg-blue-500 text-white rounded-md shadow hover:bg-blue-600">Review</a>
            </h1>
            <div class="synopsis mt-4">
                <h2 class="text-xl font-semibold text-gray-700">Sinopsis :</h2>
                <p>Dua detektif, Teddy Daniels dan Chuck Aule, dikirim ke rumah sakit jiwa di Shutter Island untuk menyelidiki hilangnya seorang pasien. Namun, semakin dalam mereka menyelidiki, semakin banyak rahasia gelap yang terungkap tentang fasilitas tersebut. Teddy juga menghadapi bayang-bayang masa lalunya, yang mengaburkan batas antara kenyataan dan ilusi. Film ini adalah thriller psikologis yang penuh dengan plot twist yang memukau.</p>
            </div>
            <!-- Watchlist Button -->
            <form action="addToWatchlist" method="POST" class="mt-6">
                <input type="hidden" name="filmId" value="5"> <!-- Film ID for Shutter Island -->
                <% 
                    Integer userId = (Integer) session.getAttribute("userId");
                    if (userId != null) { 
                %>
                    <input type="hidden" name="userId" value="<%= userId %>">
                    <button type="submit" class="px-6 py-2 bg-red-500 text-white font-semibold rounded-md shadow hover:bg-red-600">
                        Add to Watchlist
                    </button>
                <% } else { %>
                    <p class="text-red-500 mt-4">Please log in to add this movie to your watchlist.</p>
                <% } %>
            </form>
        </div>
    </div>

    <!-- Reviews Section -->
    <div class="reviews-section bg-white shadow rounded-lg p-6 m-6">
        <h2 class="text-xl font-bold text-gray-800">Reviews</h2>
        <%
            List<Map<String, Object>> reviews = (List<Map<String, Object>>) request.getAttribute("reviews");
            if (reviews != null) {
                for (Map<String, Object> review : reviews) {
        %>
            <div class="review-item mt-4">
                <p class="text-gray-700"><strong><%= review.get("pengirim") %></strong> - Rating: <%= review.get("rating") %>/5</p>
                <p class="text-gray-600 mt-2"><%= review.get("pesan") %></p>
            </div>
        <%
                }
            } else {
        %>
            <p class="text-gray-500 mt-4">No reviews available for this movie.</p>
        <%
            }
        %>
    </div>

        <!-- Updated Recommended Movies Section -->
        <div class="recommended-movies bg-white shadow rounded-lg p-6 m-6">
            <h2 class="text-xl font-bold text-gray-800">Recommended Movies</h2>
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 mt-4">
                <!-- Movie Item 1 -->
                <a href="Interstellar.jsp" class="movie-item hover:shadow-lg text-center">
                    <img src="Images/interstellar.jpg" alt="Interstellar Movie Poster" class="w-58 h-auto mx-auto">
                    <h3 class="text-lg font-semibold mt-0">Interstellar</h3>
                    <p class="text-gray-600 mt-3">A mind-bending thriller by Christopher Nolan.</p>
                </a>
                <!-- Movie Item 2 -->
                <a href="BackToTheFuture.jsp" class="movie-item hover:shadow-lg text-center text-center">
                    <img src="Images/back-to-future.jpg" alt="Back to the Future Movie Poster" class="w-58 h-auto mx-auto ">
                    <h3 class="text-lg font-semibold mt-0">Back To The Future</h3>
                    <p class="text-gray-600 mt-3">is a 1985 science fiction film directed by Robert Zemeckis.</p>
                </a>
                <!-- Movie Item 3 -->
                <a href="Jaws.jsp" class="movie-item hover:shadow-lg text-center text-center">
                    <img src="Images/jaws.jpg" alt="Jaws Movie Poster" class="w-58 h-auto mx-auto">
                    <h3 class="text-lg font-semibold mt-0">Jaws</h3>
                    <p class="text-gray-600 mt-3">Jaws is a 1975 thriller film directed by Steven Spielberg.</p>
                </a>
                <!-- Movie Item 4 -->
                <a href="Joker.jsp" class="movie-item hover:shadow-lg text-center text-center">
                    <img src="Images/joker.jpg" alt="Shutter Island Movie Poster" class="w-58 h-auto mx-auto ">
                    <h3 class="text-lg font-semibold mt-0">Joker</h3>
                    <p class="text-gray-600 mt-3">A cult classic exploring identity and chaos.</p>
                </a>
            </div>
        </div>
    </body
</html>
