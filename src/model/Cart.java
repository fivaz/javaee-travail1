package model;

import java.util.ArrayList;
import java.util.List;

//Use a Map with Product as Key
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
    
    public void increaseProduct(int productId) {
		for(ProductWithQuantity productWithQuantity: products) 
    		if(productWithQuantity.getProduct().getId() == productId) 
    			productWithQuantity.increaseQuantity();
    }
    
    public void reduceProduct(int productId) {
		for(ProductWithQuantity productWithQuantity: products) 
    		if(productWithQuantity.getProduct().getId() == productId) 
    			productWithQuantity.reduceQuantity();
    }
    
    public int size() {
    	int quantity = 0;
    	for(ProductWithQuantity product: products)
    		quantity += product.getQuantity();
    	return quantity;
    }
}