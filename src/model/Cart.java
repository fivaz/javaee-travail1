package model;

import java.util.ArrayList;
import java.util.List;

import org.apache.openejb.math.util.MathUtils;

public class Cart {

    List<Integer> quantities;
    List<Product> products;

    public Cart() {
        this.quantities = new ArrayList<>();
        this.products = new ArrayList<>();
    }

    public List<Integer> getQuantities() {
        return quantities;
    }

    public void setQuantities(List<Integer> quantities) {
        this.quantities = quantities;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
    
    public void addProduct(Product product) {
    	if(products.contains(product)) {
    		int index = products.indexOf(product);
    		int quantity = quantities.get(index);
    		quantity =+ 1;
    		quantities.add(index, quantity);
    	}else {
    		products.add(product);
    		int index = products.size() - 1;
    		quantities.add(index, 1);
    	}
    }
    
    public int size() {
    	return quantities.stream().mapToInt(Integer::intValue).sum();
    }
}