 <!-- Login Modal  -->
 <?php if(isset($_SESSION['register']) && $_SESSION['register'] == 'completed'): ?>
    <h2 style="text-align:center;">Register Completed!</h2>
<?php elseif(isset($_SESSION['register']) && $_SESSION['register'] == 'failed'): ?>
   <h2 style="text-align:center;">Register failed, please insert the data correctly!</h2>
<?php endif; ?>

<?php Utils::deleteSession('register'); ?>


 <section class="register-section hidden">
        <div class="register-container">
            <div class="register-box">
                <i class="close fas fa-times-circle"></i>
                <div class="register-title">
                    <h3>S'inscrire :</h3>
                </div>
                <form action="<?=base_url?>user/save" method="POST" class="register-form">
                    <div class="form-group">
                        <label for="first-name-register">Prénom :</label>
                        <input type="text" name="first-name-register" id="first-name-register">
                    </div>
                    <div class="form-group">
                        <label for="last-name-register">Nom de famille :</label>
                        <input type="text" name="last-name-register" id="last-name-register">
                    </div>
                    <div class="form-group">
                        <label for="mail-register">Email:</label>
                        <input type="text" name="mail-register" id="mail-register">
                    </div>
                    <div class="form-group">
                        <label for="password-register">Mot de passe :</label>
                        <input type="password" name="password-register" id="password-register">
                    </div>
                    <div class="form-group">
                        <label for="confirm-password-register">Confirmer le mot de passe :</label>
                        <input type="password" name="confirm-password-register" id="confirm-password-register">
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-register" value="Sign Up">
                    </div>
                </form>
            </div>
        </div>
    </section>