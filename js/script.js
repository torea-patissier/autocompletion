    $(document).ready(function() {     // Cette ligne permet d'exécuter le code JS une fois la page chargée.
      $('#search-user').keyup(function() {      //fonction JavaScript qui permet de capter la sortie d'appui d'une touche d'un clavier
          $('#result-search').html('');      // permet de mettre à blanc le résultat de notre recherche à chaque fois que nous effectuerons un appui
          var utilisateur = $(this).val();      //permets de récupérer notre saisie.
          if (utilisateur != "") {      // Si l'input n'est pas vide 
              $.ajax({      // Ajax pour communiquer avec un fichier php ou autre
                  type: 'GET',      // Le type de méthode pour les données
                  url: 'element.php',      //L'URL de la page où l'on souhaite s'adresser
                  data: 'user=' + encodeURIComponent(utilisateur),      // Valeur des saisies sur le clavier
                  success: function(data){      // Message de retour contenant des données s'il n'y a pas d'erreurs de communication avec l'adresse URL.
                      if (data != "") {
                          $('#result-search').append(data);
                      } else {
                        $('#result-search').html("<div> Aucun utilisateur </div>");
                      }
                  }
              });
          }
      });
  });

