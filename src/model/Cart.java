package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {

    private List<ProductWithQuantity> products;

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
    
    public void removeProduct(int productId) {
    	int i;
		for(i=0; i < products.size(); i++) 
    		if(products.get(i).getProduct().getId() == productId) 
    			break;
		products.remove(products.get(i));
    }
    
    public int size() {
    	int quantity = 0;
    	for(ProductWithQuantity product: products)
    		quantity += product.getQuantity();
    	return quantity;
    }
    
    public double total() {
    	double total = 0;
    	for(ProductWithQuantity productWithQuantity: products) 
    		total += productWithQuantity.price();
    	return total;
    }
    
    public void clearCart(){
    	products.clear();
    }
}