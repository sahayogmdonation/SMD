/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package User;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rahul
 */
@WebServlet(name = "UserRegisteration", urlPatterns = {"/UserRegisteration"})
public class UserRegisteration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserRegisteration</title>");            
            out.println("</head>");
            out.println("<body>");
            RequestDispatcher dis = null;
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            String cpass = request.getParameter("cpass");
            String con = request.getParameter("con");
            String about = request.getParameter("about");
            String profile = request.getParameter("profile");
            String mgender = request.getParameter("mgender");
            String date = request.getParameter("date"); 
                        out.println(con);

           Connection cnn=null;        
         try{
                Class.forName("com.mysql.jdbc.Driver");
		cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/sahayog_mdonation","root","root");

		Statement stmt=cnn.createStatement(); 	
               
                String sql = "INSERT INTO userreg(uname, uemail, pass, cpass, ucon, about, upic, gender, regdate) VALUES('"+name+"', '"+email+"', '"+pass+"', '"+cpass+"', '"+con+"', '"+about+"','"+profile+"', '"+mgender+"', '"+date+"')";
                int st=stmt.executeUpdate(sql);
                dis= request.getRequestDispatcher("login.jsp");               
                cnn.close(); 
                if(st > 0){
                    request.setAttribute("status", "success");
                }else{
                    request.setAttribute("status", "Failed");
                }
		dis.forward(request, response);
            }catch(ClassNotFoundException | SQLException e){
			System.out.println(e);
		}
          
            out.println("<h1>Servlet UserRegisteration at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UserRegisteration.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(UserRegisteration.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
