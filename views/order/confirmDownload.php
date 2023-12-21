<?php $lastOrder = $toFetch->fetch_object(); ?>
<style>
    span{
        font-weight: bold;
    }

    .product-group img, .product-group p{
        display: inline;
    }

    h4{
        margin-bottom: 0px;
    }
</style>

<h1 style="text-align: center;">Votre commande</h1>
<hr>
<p><span>Order ID:</span> <?=$lastOrder->id?></p>
<p><span>Address:</span> <?=$lastOrder->address?>, <?=$lastOrder->city?>, <?=$lastOrder->state?></p>
<p><span>Date Commande:</span> <?=$lastOrder->date?></p>
<p><span>Time Commande:</span> <?=$lastOrder->time?></p>


<div style="margin-top: 20px;">
        <?php if(isset($_SESSION['cart'])){
            $cart = $_SESSION['cart'];
        }  
        ?> 
        <h2>Articles achetés</h2>       
         <?php if(isset($_SESSION['cart'])): 
          foreach($cart as $index => $product): 
            $item = $product['product'];        
            ?>

            
        
            <h4><span>Article <?=$index+1?>:</span>
                <a href="<?=base_url?>product/singleProduct&id=<?=$item->id?>"><?= $item->name; ?></a>
            </h4>
            <ul>
                <li>
                    <span>
                    Prix :
                    </span>
                    <?= $item->price?>
                </li>
                <li>
                    <span>
                    Unités :
                    </span>
                    <?= $product['unities']?>
                </li>
            </ul>
        
            <?php endforeach;
        endif;
        ?>
    </div>

    <h3><span>Prix total :</span> $<?=$lastOrder->total_price?></h3>
