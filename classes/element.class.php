<?php
require_once('bddClass.php');
class element extends bdd
{
    public function ficheJoueur()
    {
        $con = $this->connectDb();
        $stmt = ("SELECT * FROM infos where id = '" . $_GET['id'] . "' ");
        $req = $con->prepare($stmt);
        $req->execute();
        $res = $req->fetchall();
        foreach ($res as $r) {
            $nom = $r['nom'];
            $prenom = $r['prenom'];
            $age = $r['age'];
            $poste = $r['poste'];
            $equipe = $r['equipe'];
?>
            <div class="container">
                <div class="row align-items-center">
                    <?php
                    echo '<h5>' . $nom . ' ' . $prenom . ' est âgé de ' . $age . ' ans, il évolue au poste de ' . ' ' . $poste. '. </h5>';

                    if ($equipe == 'All blacks') {
                        echo '<h5>C\'est un joueur des All blacks</h5><br/><br/>';
                    } else {
                        echo '<h5>C\'est un joueur de l\'équipe de France</h5><br/><br/>';
                    }
                    ?>
                    <img src="../images/<?php echo $r['nom']; ?>.jpg" class="rounded float-start" width="500px">
                </div>
            </div>
            <?php
        }
    }

    public function voirSuggestion()
    {
        if (trim($_GET['user'])) {
            $con = $this->connectDb();
            $user = (string) trim($_GET['user']); // $user == string et trim supp les ' ' espaces;
            $req = $con->prepare("SELECT * FROM infos WHERE nom LIKE '$user%' ORDER BY nom "); // Like == comme $user == lettre tapé sur le clavier
            $req->execute();
            $res = $req->fetchAll();
            foreach ($res as $r) {
            ?>
                <div class="list-group">
                    <a href="element.php/?id=<?= $r['id']; ?>">
                        <button type="button" class="list-group-item list-group-item-action">
                            <?php echo $r['nom'] . " " . $r['prenom'] . "<br/><br/>" ?>
                        </button>
                    </a>
                </div>


<?php
            }
        } else {
            return false;
        }
    }
}


?>