package model;

import java.util.ArrayList;
import java.util.List;


public class Cart {

    List<ProductWithQuantity> products;

    public Cart() {
        this.products = new ArrayList<>();
    }

    public List<ProductWithQuantity> getProducts() {
        return products;
    }
   
    public void addProduct(Product product) {
    	boolean found = false;
		for(ProductWithQuantity productWithQuantity: products) {
    		if(productWithQuantity.getProduct().equals(product)) {
    			productWithQuantity.increaseQuantity();
    			found = true;
    		}
		}
		if(!found)
			products.add(new ProductWithQuantity(product));
    }
    
    public int size() {
    	int quantity = 0;
    	for(ProductWithQuantity product: products)
    		quantity += product.getQuantity();
    	return quantity;
    }
}