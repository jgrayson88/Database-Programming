
package murach.data;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import murach.business.Product;

public class ProductDB {

    
    //insert method using JPA
    public static void insert(Product product){
                EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();        
        try {
            em.persist(product);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
    
    //update method using JPA
    public static void update(Product product){
                EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();        
        try {
            em.merge(product);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
    
    //delete method using JPA
    public static void delete(Product product){
                EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();        
        try {
            em.remove(product);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
    //check if product exists based on product code
    public static boolean productExists(String code) {
        Product product = selectProduct(code);
        return product != null;
    }
    //select product
    public static Product selectProduct(String code) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM Product p " +
                "WHERE p.ProductCode = :ProductCode";
        TypedQuery<Product> q = em.createQuery(qString, Product.class);
        q.setParameter("ProductCode", code);
        try {
            Product user = q.getSingleResult();
            return user;
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }
    
    public static List<Product> selectProducts() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT p from Product p";
        TypedQuery<Product> q = em.createQuery(qString, Product.class);

        List<Product> users;
        try {
            users = q.getResultList();
            if (users == null || users.isEmpty())
                users = null;
        } finally {
            em.close();
        }
        return users;
    }
    
        //insert method when using JDBC
//    public static int insert(Product product) {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        PreparedStatement ps = null;
//
//        String query
//                = "INSERT INTO Product (ProductCode, ProductDescription, ProductPrice) "
//                + "VALUES (?, ?, ?)";
//        try {
//            ps = connection.prepareStatement(query);
//            ps.setString(1, product.getCode());
//            ps.setString(2, product.getDescription());
//            ps.setDouble(3, product.getPrice());
//            return ps.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println(e);
//            return 0;
//        } finally {
//            DBUtil.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//    }
    
    //update method when using JDBC
//    public static int update(Product product) {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        PreparedStatement ps = null;
//
//        String query = "UPDATE Product SET "
//                + "ProductDescription = ?, "
//                + "ProductPrice = ? "
//                + "WHERE ProductCode = ?";
//        try {
//            ps = connection.prepareStatement(query);
//            ps.setString(1, product.getDescription());
//            ps.setDouble(2, product.getPrice());
//            ps.setString(3, product.getCode());
//
//            return ps.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println(e);
//            return 0;
//        } finally {
//            DBUtil.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//    }
    //delete method when using JDBC
//    public static int delete(Product product) {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        PreparedStatement ps = null;
//
//        String query = "DELETE FROM Product "
//                + "WHERE ProductCode = ?";
//        try {
//            ps = connection.prepareStatement(query);
//            ps.setString(1, product.getCode());
//
//            return ps.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println(e);
//            return 0;
//        } finally {
//            DBUtil.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//    }

    //when using JDBC
//    public static boolean productExists(String code) {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//
//        String query = "SELECT ProductCode FROM Product "
//                + "WHERE ProductCode = ?";
//        try {
//            ps = connection.prepareStatement(query);
//            ps.setString(1, code);
//            rs = ps.executeQuery();
//            return rs.next();
//        } catch (SQLException e) {
//            System.out.println(e);
//            return false;
//        } finally {
//            DBUtil.closeResultSet(rs);
//            DBUtil.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//    }

//    public static Product selectProduct(String code) {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//
//        String query = "SELECT * FROM Product "
//                + "WHERE ProductCode = ?";
//        try {
//            ps = connection.prepareStatement(query);
//            ps.setString(1, code);
//            rs = ps.executeQuery();
//            Product product = null;
//            if (rs.next()) {
//                product = new Product();
//                product.setCode(rs.getString("ProductCode"));
//                product.setDescription(rs.getString("ProductDescription"));
//                product.setPrice(rs.getDouble("ProductPrice"));
//            }
//            return product;
//        } catch (SQLException e) {
//            System.out.println(e);
//            return null;
//        } finally {
//            DBUtil.closeResultSet(rs);
//            DBUtil.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//    }
    
//    public static List<Product> selectProducts() {
//        ConnectionPool pool = ConnectionPool.getInstance();
//        Connection connection = pool.getConnection();
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        
//        String query = "SELECT * FROM Product";
//        try {
//            ps = connection.prepareStatement(query);
//            rs = ps.executeQuery();
//            ArrayList<Product> products = new ArrayList<Product>();
//            while (rs.next())
//            {
//                Product product = new Product();
//                product.setCode(rs.getString("ProductCode"));
//                product.setDescription(rs.getString("ProductDescription"));
//                product.setPrice(rs.getDouble("ProductPrice"));
//                products.add(product);
//
//            }
//            return products;
//        } catch (SQLException e) {
//            System.out.println(e);
//            return null;
//        } finally {
//            DBUtil.closeResultSet(rs);
//            DBUtil.closePreparedStatement(ps);
//            pool.freeConnection(connection);
//        }
//    }    
}
