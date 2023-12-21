<div class="product-container">
    <h2 style="text-align: center">Gérer les produits</h2>
    <div class="add-product">
        <button class="btn add-product"><a href="<?=base_url?>product/create">Ajouter un produit</a> </button>

        <!-- feedback display when adding product -->
        <?php if(isset($_SESSION['product']) && $_SESSION['product'] == "completed"): ?>
            <p>Produit ajouté avec succès !</p>
            <?php elseif(isset($_SESSION['product']) && $_SESSION['product'] !== "completed"): ?>
            <p style="color: red;">Le produit n'a pas pu être ajouté !</p>
        <?php endif; ?>
        <?php Utils::deleteSession('product'); ?>

        <!-- feedback display when deleting product -->
        <?php if(isset($_SESSION['deleted']) && $_SESSION['deleted'] == "completed"): ?>
            <p>Suppression réussie !</p>
            <?php elseif(isset($_SESSION['deleted']) && $_SESSION['deleted'] !== "completed"): ?>
            <p style="color: red;">L'effacement a échoué !</p>
        <?php endif; ?>
        <?php Utils::deleteSession('deleted'); ?>
    </div>

    <table>
        <tr>
            <th>ID</th>
            <th>Produit</th>
            <th>Prix</th>
            <th>Stock</th>
            <th>Actions</th>
        </tr>
        
        <?php while($product = $products->fetch_object()): ?>
        <tr>
            <td><?=$product->id;?></td>
            <td><?=$product->name;?></td>
            <td><?=$product->price;?></td>
            <td><?=$product->stock;?></td>
            <td>
                <a href="<?=base_url?>product/delete&id=<?=$product->id;?>"><i class="trash-icon fas fa-trash"></i></a>
                <a href="<?=base_url?>product/edit&id=<?=$product->id;?>"><i class="edit-icon fas fa-edit"></i></a>
            </td>
        </tr>
        <?php endwhile; ?>
    </table>
</div>