/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ServletPackages;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author Student
 */
public class UserDetails extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           /* out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserDetails</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserDetails at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
            try {
                String db = "library_mgmt";
                String user = "admin"; // assumes database name is the same as username
                String password="admin";
                java.sql.Connection con;
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db, user, password);
                Statement st=con.createStatement();
                
                int collegeid=Integer.parseInt(request.getParameter("eid"));
                String fname=request.getParameter("fname");
                String lname=request.getParameter("lname");
                String dob=request.getParameter("date_of_birth");
                String email=request.getParameter("email_id");
                String institutename=request.getParameter("iname");
                String gender=request.getParameter("gender");
                double phno=Double.parseDouble(request.getParameter("phno"));
                int passwd=Integer.parseInt(request.getParameter("passwd"));
                
                int i=st.executeUpdate("insert into user_info(cid,fname,lname,dob,email,instname,gender,phno,password)values("+collegeid+",'"+fname+"','"+lname+"','"+dob+"','"+email+"','"+institutename+"','"+gender+"',"+phno+","+passwd+")");
                out.println("Data is successfully inserted!");
                RequestDispatcher dis=request.getRequestDispatcher("index.html");          
                dis.include(request, response);                                

            }
            catch(Exception e)
            {
                out.print(e);
                e.printStackTrace();
            }
 
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
        processRequest(request, response);
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
        processRequest(request, response);
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
