<?php if(!isset($_SESSION['identity'])): ?>
    <h3 class="table-align">Veuillez vous connecter pour finaliser votre achat !</h3>
<?php else: ?>
    <div class="table-align">
        <button class="btn"><a href="<?=base_url?>/cart/index">Retourner au panier</a></button>
    </div>
    <h1 class="text-align-center">Formulaire de commande</h1>
    <div class="order-form table-align">
        <form action="<?=base_url?>order/add" method="POST">
        <div class="form-group">
                <label for="city">Address:</label>
                <input type="text" name="address" id="address">
            </div>
            <div class="form-group">
                <label for="city">Ville:</label>
                <input type="text" name="city" id="city">
            </div>
            <div class="form-group">
                <label for="province">Province:</label>
                <input type="text" name="province" id="province">
            </div>
            <input type="submit" class="btn" value="Buy Now">
        </form>
    </div>
<?php endif; ?>