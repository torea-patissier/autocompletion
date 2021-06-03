<div class="coco">
    <?php
    session_start();
    require_once('headerFooter/header.php');
    require_once('classes/element.class.php');
    $element = new element;
    echo '<main>';
    if (isset($_GET['user'])) {
        $element->voirSuggestion();
    } // Concerne les lettres tapés sur le clavier

    if (isset($_GET['id'])) {
        $element->ficheJoueur();
    } // Récupère un ID séléctionné et affiche la fiche d'un joueur
    echo '</main>';
    require_once('headerFooter/footer.php');

    ?>
</div>