/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package murach.product;

import java.io.*;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;

import murach.data.*;
import murach.business.*;

/**
 *
 * @author janina
 * registers and logs in a user
 */
public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String url = "/index.jsp";
        
        String action = request.getParameter("action");
        if (action == null) {
            //action = "displayProducts";  // default action
        }
        //when action is register, get user provided info
        if(action.equals("register")){
            String userName = request.getParameter("userName");
            String firstName = request.getParameter("first");
            String lastName = request.getParameter("last");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            String phone = request.getParameter("phone");
            String birth = request.getParameter("birth");

            //create a user with the above info
            User user = (User) session.getAttribute("user");
            if (user == null) {
                user = new User();
            }
            
            user.setUserName(userName);
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setUserPassword(password);
            user.setGender(gender);
            user.setPhone(phone);
            user.setBirth(birth);
        
            //if user exists already based on email,update the info in db
            //if new user, add to database
            if (UserDB.emailExists(email)) {
                UserDB.update(user);
            } else {
                UserDB.insert(user);
            }        

            session.setAttribute("user", user);

            url= "/user.jsp";
        }
        else if(action.equals("login")){//logging in a user with email and password
            String email = request.getParameter("inputUsername3");
            String password = request.getParameter("inputPassword3");

            User user = (User) session.getAttribute("user");
            if (user == null) {
                user = new User();
            }
            
            user.setEmail(email);
            user.setUserPassword(password);
        
            User u = UserDB.selectUser(email);
            //compare user entered password to db stored password
            if(user.getUserPassword().equals(u.getUserPassword())) {
                u.getBirth();
                u.getFirstName();
                u.getLastName();
                u.getUserName();
                u.getPhone();
                u.getEmail();
                
                Invoice invoice = new Invoice();
                List<Invoice> i = InvoiceDB.selectInvoice(u.getPhone());
                
                session.setAttribute("user", u);
                session.setAttribute("invoice", i);
                url= "/user.jsp";
            } 
            else{
                url= "/index.jsp";
            }

            

            
        }


        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
        
        
    }


}
