<?php
require_once('bddClass.php');

class recherche extends bdd
{
    public function voirLesResultatsRecherches()
    { // Récupère les résultats de la barre de recherche Index
        if (isset($_GET['search-user'])) {
            $con = $this->connectDb();
            $user = (string) trim($_GET['search-user']); // $user == string et trim supp les ' ' espaces;
            $req = $con->prepare("SELECT * FROM infos WHERE nom LIKE '$user%' ORDER BY nom ASC "); // Like == comme $user == lettre tapé sur le clavier
            $req->execute();
            $res = $req->fetchAll();
            foreach ($res as $r) {
?>
                <div class="container">
                    <div class="row align items-center">
                        <a href="element.php/?id=<?= $r['id']; ?>">
                            <?php echo $r['nom'] . " " . $r['prenom'] . "<br/>" ?>
                        </a>
                    </div>
                </div>

<?php
            }
        } else {
            return false;
        }
    }
}
?>