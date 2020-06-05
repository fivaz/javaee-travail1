package model;

public class ProductWithQuantity {

    Product product;
    int quantity;

    public ProductWithQuantity(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }
    
    public ProductWithQuantity(Product product) {
        this.product = product;
        this.quantity = 1;
    }


    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void increaseQuantity() {
        quantity += 1;
    }
    
    public void reduceQuantity() {
    	if(quantity > 1)
    		quantity -= 1;	
    }
}