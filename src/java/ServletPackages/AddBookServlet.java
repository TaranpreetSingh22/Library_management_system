/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ServletPackages;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.UUID;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Student
 */
@MultipartConfig 
public class AddBookServlet extends HttpServlet {

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
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet AddBookServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet AddBookServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");

            Part imagePart=request.getPart("book_img");
            String bookName=request.getParameter("book_name");
            String bookAuthor=request.getParameter("book_author");
            String bookDesc=request.getParameter("book_desc");
            int bookYear=Integer.parseInt(request.getParameter("book_year"));
            
            String filename=UUID.randomUUID().toString()+"_"+Paths.get(imagePart.getSubmittedFileName()).getFileName(); //generating unique filename
            
            String book_path=getServletContext().getRealPath("images/books");
            Path imagePath=Paths.get(book_path,filename);
            
            try (InputStream inputStream=imagePart.getInputStream()) {
                Files.copy(inputStream, imagePath);
            }
            
            try {
                String db = "library_mgmt";
                String user = "admin"; // assumes database name is the same as username
                String password="admin";
                java.sql.Connection con;
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db, user, password);
                Statement st=con.createStatement(); 
                
                int i=st.executeUpdate("insert into books(book_img,book_name,book_author,book_desc,publish_year)values('images/books/"+filename+"','"+bookName+"','"+bookAuthor+"','"+bookDesc+"',"+bookYear+")");
                out.println("Data is successfully inserted!");
                //RequestDispatcher dis=request.getRequestDispatcher("index.html");          
               // dis.include(request, response);                                

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
