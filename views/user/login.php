 <!-- Login Modal  -->
 <section class="login-section hidden">
        <div class="login-container">
            <div class="login-box">
                <i class="close fas fa-times-circle"></i>
                <div class="login-title">
                    <h3>Login:</h3>
                </div>
            <form action="<?=base_url?>user/login" method="POST" id="login-form" class="login-form">
                <div class="form-group">
                    <label for="mail-login">Email:</label>
                    <input type="email" name="mail-login" id="mail-login">
                </div>
                <div class="form-group">
                    <label for="password">Mot de passe :</label>
                    <input type="password" name="password" id="password">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-login" value="Login">
                </div>
            </form>
            <div class="isRegistered">
                <p>Vous n'êtes pas encore inscrit ?<span class="register-here strong"> Inscrivez-vous ici !</span></p>
            </div>
        </div>
    </div>
</section>





    