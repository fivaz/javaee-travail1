package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Product {
    @Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String name;
    private String visual1;
    private String visual2;
    private double price;
    private String description;

    public Product() {
    }

    public Product(int id, String name, String visual1, String visual2, double price, String description) {
        this.id = id;
        this.name = name;
        this.visual1 = visual1;
        this.visual2 = visual2;
        this.price = price;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVisual1() {
        return visual1;
    }

    public void setVisual1(String visual1) {
        this.visual1 = visual1;
    }

    public String getVisual2() {
        return visual2;
    }

    public void setVisual2(String visual2) {
        this.visual2 = visual2;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Product)) return false;
        Product product = (Product) o;
        return id == product.id &&
                Double.compare(product.price, price) == 0 &&
                Objects.equals(name, product.name) &&
                Objects.equals(visual1, product.visual1) &&
                Objects.equals(visual2, product.visual2) &&
                Objects.equals(description, product.description);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, visual1, visual2, price, description);
    }
}