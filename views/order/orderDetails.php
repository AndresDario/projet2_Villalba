<h1 class="text-align-center">Détails de la commande</h1>

<?php
$lastOrder = $lastRes->fetch_object();
?>

<?php if(isset($_SESSION['admin'])): ?>
    <h2 class="table-align">Changement de statut de la commande</h2>
    <form style="margin-bottom: 20px;" class="table-align" action="<?=base_url?>order/status" method="POST">
    <div class="form-group">
        <input type="text" class="hidden" name="orderId" value="<?=$lastOrder->id?>">
        <select name="status" style="width: 35%" id="order-status">
            <option value="confirmed" <?=$lastOrder->status == "confirmed" ? 'selected' : ''?>>Livraison confirmée</option>
            <option value="processing" <?=$lastOrder->status == "processing" ? 'selected' : ''?>>En cours de traitement</option>
            <option value="sent" <?=$lastOrder->status == "sent" ? 'selected' : ''?>>Déjà envoyé</option>
            <option value="delivered" <?=$lastOrder->status == "delivered" ? 'selected' : ''?>>Commande livrée</option>
        </select>
    </div>   
    <div>
        <input type="submit" value="Change Status" class="btn">
    </div>
    </form>
<?php endif; ?>

<div class="order-details-container" style="margin-bottom: 50px;">
        <h2 class="table-align">Informations sur la commande</h2>
        <table>
            <tr>
                <th>Order ID</th>
                <th>Adresse de livraison</th>
                <th>Date</th>
                <th>Time</th>
                <th>Prix total</th>
                <th>Statut</th>
            </tr>
            <tr>
                <td><?=$lastOrder->id;?></td>
                <td><?=$lastOrder->address;?></td>
                <td><?=$lastOrder->date;?></td>
                <td><?=$lastOrder->time;?></td>
                <td>$<?=$lastOrder->total_price;?></td>
                <td><?=$lastOrder->status;?></td>
            </tr>
        </table>
   


    <h2 class="table-align" style="margin-top: 20px;">Produits Info</h2>
    <table>
        <tr>
            <th>Image</th>
            <th>Nom</th>
            <th>Prix</th>
            <th>Unités</th>
        </tr>
        <?php while($item = $products->fetch_object()) :?>
            <tr>
                <td>
                    <img width="115px;" src="<?=base_url?>/uploads/images/<?=$item->image?>" alt="product image"> 
                </td>
                <td>
                    <a style="color: blue" href="<?=base_url?>product/singleProduct&id=<?=$item->id?>"><?= $item->name; ?></a>
                </td>
                <td>
                    $<?= $item->price?>
                </td>
                <td>
                    <?= $item->unities;?>
                </td>
            </tr>
        <?php endwhile; ?>
    </table>
</div>

