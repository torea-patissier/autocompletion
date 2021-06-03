<?php
session_start();
require_once('headerFooter/header.php');
require_once('classes/recherche.class.php');
$search = new recherche;
?>

<header>
    <div class="divSearch">
        <h1>Résultats des recherches</h1><br />
        <?php
        $search->voirLesResultatsRecherches();
        ?>
    </div>
</header>
</header>
<main>
</main>
<?php
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="js/script.js"></script>
</body>
<footer>

</footer>

</html>