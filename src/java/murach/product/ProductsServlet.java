package murach.product;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.util.List;
import murach.business.Cart;
import murach.business.LineItem;

import murach.data.ProductIO;
import murach.business.Product;
import murach.data.ProductDB;

public class ProductsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String url = "/index.jsp";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            //action = "displayProducts";  // default action
        }
        
        // perform action and set URL to appropriate page
        if (action.equals("getProduct")) {            
            String productCode = request.getParameter("productCode");
            Product product = ProductDB.selectProduct(productCode);
            session.setAttribute("product", product);
            url = "/product.jsp";

            
        } 
        else if (action.equals("goToAddProduct")) {
            url = "/addProducts.jsp";
        }
        else if (action.equals("goToEditProduct")) {

            String productCode = request.getParameter("productCode");
            //Product product = ProductIO.selectProduct(productCode);
            Product product = ProductDB.selectProduct(productCode);
            
            session.setAttribute("product", product);
            
            url = "/editProducts.jsp";
        }
        else if (action.equals("goToDeleteProduct")) {

            String productCode = request.getParameter("productCode");
            //Product product = ProductIO.selectProduct(productCode);   
            Product product = ProductDB.selectProduct(productCode);
            session.setAttribute("product", product);           
            url = "/deleteProduct.jsp";
        }
        else if (action.equals("register")) {
            // update user in database
            // get current user list and set as request attribute
            // forward to index.jsp
            String productCode = request.getParameter("code");
            String description = request.getParameter("description");
            String priceStr = request.getParameter("price");
                        
            // get and update user
            //validate the parameters
            String message;
            if(productCode == null || description == null || priceStr == null || productCode.isEmpty() || description.isEmpty() || priceStr.isEmpty()){
            message = "Please fill out all three text boxes.";
            url = "/addProducts.jsp";   
            session.setAttribute("message", message);
            }
            else if(ProductDB.productExists(productCode)){
                message = "Product already exists. Please enter a new product.";
                url = "/addProducts.jsp";   
                session.setAttribute("message", message);
            }
            else{
            Double price = Double.parseDouble(priceStr);
            Product product = new Product();       
            product.setCode(productCode);
            product.setDescription(description);
            product.setPrice(price);
 
            ProductDB.insert(product);
            //ProductIO.insertProduct(product);
            }
            // get and set updated users
            //List<Product> products = ProductIO.selectProducts();
            List<Product> products = ProductDB.selectProducts();
            session.setAttribute("products", products);
        }
        else if (action.equals("editProduct")) {
            // update user in database
            // get current user list and set as request attribute
            // forward to index.jsp
            String productCode = request.getParameter("code");
            String description = request.getParameter("description");
            Double price = Double.parseDouble(request.getParameter("price"));
            // get and update user
            Product product = (Product) session.getAttribute("product");        
            product.setCode(productCode);
            product.setDescription(description);
            product.setPrice(price);

            //ProductIO.updateProduct(product);
            ProductDB.update(product);

            // get and set updated users
            //List<Product> products = ProductIO.selectProducts();
            List<Product> products = ProductDB.selectProducts();
            session.setAttribute("products", products);
        }
        else if (action.equals("deleteProduct")) {
            // get the user for the specified email
            // delete the user            
            // get current list of users
            // set as request attribute
            // forward to index.jsp
            String productCode = request.getParameter("code");

            //Product product = ProductIO.selectProduct(productCode);
            //ProductIO.deleteProduct(product);
            //List<Product> products = ProductIO.selectProducts();
            
            Product product = ProductDB.selectProduct(productCode);
            ProductDB.delete(product);
            List<Product> products = ProductDB.selectProducts();
            session.setAttribute("products", products);
        }
        if (action.equals("addToCart")) {
            String productCode = request.getParameter("productCode");
            //String quantityString = request.getParameter("quantity");

            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }

            //String path = sc.getRealPath("/WEB-INF/products.txt");
            //Product product = ProductIO.getProduct(productCode, path);
            Product product = ProductDB.selectProduct(productCode);

            LineItem lineItem = new LineItem();
            lineItem.setProduct(product);
            //lineItem.setQuantity(quantity);
            //if (quantity > 0) {
            cart.addItem(lineItem);

            session.setAttribute("cart", cart);
            url = "/shoppig/cart.jsp";
        }
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }    
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }    
}
