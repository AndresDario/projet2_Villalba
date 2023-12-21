    <!-- Hero Area  -->
    <section class="hero">
        <div class="hero-img">
            <h2>le meilleur endroit pour trouver votre ami <span class="orange">félin</span> </h2>
        </div>
    </section>

    <!-- Products Area  -->
    <section class="products">
        <div class="products-title">
            <h2>Produits</h2>
        </div>
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
                <button class="btn btn-see-more"><a href="<?=base_url?>product/singleProduct&id=<?=$product->id?>">Voir plus</a> </button>
            </div>
            <?php endwhile; ?>         
        </div>
    </section>