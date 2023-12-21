<?php if(isset($category)): ?>
    <h1 style="text-align: center;"><?=ucfirst($category->name);?></h1>
    <div class="products-display">
    <?php while ($product = $products->fetch_object()):?>
            <div class="product">
                <div class="product-img" style="background-image: url('<?=base_url?>uploads/images/<?=$product->image?>');">
                   
                </div>
                <div class="product-title">
                    <h4><?=$product->name?></h4>
                </div>
                <div class="product-title">
                    <p>$<?=$product->price?></p>
                </div>
                <div class="product-description">
                    <p>
                        <?=$product->description?>
                    </p>
                </div>
                <button class="btn btn-see-more"><a href="<?=base_url?>product/singleProduct&id=<?=$product->id?>">Voir plus</a></button>
            </div>
            <?php endwhile; ?>  
    </div>       
<?php else: ?>
    <h1>Aucune catégorie trouvée...</h1>
<?php endif; ?>