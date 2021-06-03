<?php
session_start();
require_once('headerFooter/header.php');
?>
<header>
</header>
<main>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-6">
                <div class="cool">
                    <h1 style="text-align: center">Les sélections de rugby France & All Blacks</h1><br/>
                    <form method="GET" action="recherche.php">
                        <input class="form-control" type="text" name="search-user" id="search-user" value="" placeholder="Rechercher un joueur" />
                        <div id="result-search"></div><!-- C'est ici que nous aurons nos résultats de notre recherche -->
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>

<?php
require_once('headerFooter/footer.php');
?>