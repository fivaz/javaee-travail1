package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
    @Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    int id;
    String name;
    String visual1;
    String visual2;
    double price;
    String description;

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

    private Product(Builder builder) {
        setId(builder.id);
        setName(builder.name);
        setVisual1(builder.visual1);
        setVisual2(builder.visual2);
        setPrice(builder.price);
        setDescription(builder.description);
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

    public static final class Builder {
        private int id;
        private String name;
        private String visual1;
        private String visual2;
        private double price;
        private String description;

        public Builder() {
        }

        public Builder id(int val) {
            id = val;
            return this;
        }

        public Builder name(String val) {
            name = val;
            return this;
        }

        public Builder visual1(String val) {
            visual1 = val;
            return this;
        }

        public Builder visual2(String val) {
            visual2 = val;
            return this;
        }

        public Builder price(double val) {
            price = val;
            return this;
        }

        public Builder description(String val) {
            description = val;
            return this;
        }

        public Product build() {
            return new Product(this);
        }
    }
}