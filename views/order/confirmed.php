<?php if(isset($_SESSION['order']) && $_SESSION['order' ]== "completed"): ?>
    <div class="confirmed-container">
        <h1 class="text-align-center">Commande confirmée</h1>
        <h4 class="table-align">Votre commande a été acceptée ! Voici les informations :</h4>
        <table>
            <tr>
                <th>Order ID</th>
                <th>Adresse de livraison</th>
                <th>Date</th>
                <th>Time</th>
                <th>Prix total</th>
            </tr>
            <tr>
                <?php $lastOrder = $lastOrder->fetch_object(); ?>
                <td><?=$lastOrder->id;?></td>
                <td><?=$lastOrder->address;?></td>
                <td><?=$lastOrder->date;?></td>
                <td><?=$lastOrder->time;?></td>
                <td><?=$lastOrder->total_price;?></td>
            </tr>
        </table>
        <div class="table-align">
            <button class="btn">
                <a href="<?=base_url?>order/toDownload">
                    Télécharger la confirmation
                </a>
            </button>
        </div>
    </div>
<?php elseif(isset($_SESSION['order']) && $_SESSION['order' ] != "completed"):?>
    <h3 class="table-align">Désolé, votre commande n'a pas pu être traitée.</h3>
<?php endif; ?>