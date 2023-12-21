<?php
if(isset($_SESSION['register']) && $_SESSION['register'] == 'completed'): ?>
    <h2 style="text-align:center;">Enregistrement terminé !</h2>
<?php else: ?>
   <h2 style="text-align:center;">L'enregistrement a échoué, veuillez insérer les données correctement !</h2>
<?php endif; ?>

<?php Utils::deleteSession('register'); ?>
