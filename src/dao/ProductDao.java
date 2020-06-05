package dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Product;
import util.HibernateUtil;

public class ProductDao {
	
	private static ProductDao instance;
	
	public static ProductDao getInstance() {
		if(instance == null)
			instance = new ProductDao();
		return instance;
	}
	
	private ProductDao() {
		seedDB();
	}
	
	public void seedDB() {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();
			
			String product1Name = "Apple MacBook Pro (2019)";
			String product1Visual1 = "macbook1.png";
			String product1Visual2 = "macbook2.png";
			double product1Price = 1400;
			String product1Description = "Type de produit: Ordinateur portable</br>Diagonale d’écran (pouces): 13.3 \"</br>Système d'exploitation : macOS Mojave</br>Résolution d’écran: 2.560 x 1.600 pixels</br>Carte graphique: Intel® Iris® Plus Graphics 645</br>";
			
			Product product1 = new Product(product1Name, product1Visual1, product1Visual2, product1Price, product1Description);
			session.save(product1);
			
			String product2Name = "Apple iPhone SE";
			String product2Visual1 = "iphone SE1.png";
			String product2Visual2 = "iphone SE2.png";
			double product2Price = 599;
			String product2Description = "Résolution caméra frontale: 7 MP</br>Diagonale d’écran: 11.94 cm / 4.7 \"</br>Résolution (LxH): 1.334 x 750 pixels</br>Système d'exploitation : iOS 13</br>";
			
			Product product2 = new Product(product2Name, product2Visual1, product2Visual2, product2Price, product2Description);
			session.save(product2);
			
			String product3Name = "SAMSUNG Galaxy S10";
			String product3Visual1 = "galaxy1.png";
			String product3Visual2 = "galaxy2.png";
			double product3Price = 599;
			String product3Description = "Type de produit: Smartphone</br>Capacité de mémoire: 128 GB</br>Spécifications de la caméra arrière : 16 MP + 12 MP + 12 MP</br>Résolution caméra frontale: 10 MP</br>Diagonale d’écran: 15.51 cm / 6.1 \"</br>Résolution: 3.040 x 1.440 pixels</br>";
					
			Product product3 = new Product(product3Name, product3Visual1, product3Visual2, product3Price, product3Description);
			session.save(product3);
			
			String product4Name = "SAMSUNG QE55Q60R - TV";
			String product4Visual1 = "tv1.png";
			String product4Visual2 = "tv2.png";
			double product4Price = 599;
			String product4Description = "Type de produit: TV</br>Display-Typ: QLED</br>Qualité de l’image: UHD 4K</br>Diagonale d’écran: 138 cm (55 \")</br>High Dynamic Range (HDR): HDR10, HDR10+, HLG</br>Indice de fluidité d’image: 3000 PQI</br>Système d'exploitation : Tizen 5.0";
			
			Product product4 = new Product(product4Name, product4Visual1, product4Visual2, product4Price, product4Description);
			session.save(product4);
			
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	
	public List<Product> get() {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Product");
			List<Product> products = query.getResultList();  
			transaction.commit();
			System.out.println(products);
			return products;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
			return null;
		}
	}
	
	public Product getProduct(int id) {
        Transaction transaction = null;
        Product product = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            product = session.get(Product.class, id);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return product;
    }
	
	public void save(Product product) {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession()) {
			transaction = session.beginTransaction();
			session.save(product);
			transaction.commit();
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
}
