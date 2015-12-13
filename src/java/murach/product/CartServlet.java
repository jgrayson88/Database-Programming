package murach.product;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import murach.data.*;
import murach.business.*;

public class CartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();

        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "addToCart";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
 
        if (action.equals("addToCart")) {
            String productCode = request.getParameter("productCode");
            String quantityString = request.getParameter("quantity");

            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }
            
            //if the user enters a negative or invalid quantity,
            //the quantity is automatically reset to 1.
            int quantity;
            try {
                quantity = Integer.parseInt(quantityString);
                if (quantity < 0) {
                    quantity = 1;
                }
            } catch (NumberFormatException nfe) {
                quantity = 1;
            }

            Product product = ProductDB.selectProduct(productCode);

            LineItem lineItem = new LineItem();
            lineItem.setProduct(product);
            lineItem.setQuantity(quantity);
            if (quantity > 0) {
            cart.addItem(lineItem);}
            else if (quantity == 0) {
                cart.removeItem(lineItem);
            }

            session.setAttribute("cart", cart);
            url = "/shoppigcart/cart.jsp";
        }
        else if (action.equals("checkout")) {
            String grandTotal = request.getParameter("grandTotal");
            session.setAttribute("grandTotal", grandTotal);
            url = "/checkout/checkout.jsp";
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