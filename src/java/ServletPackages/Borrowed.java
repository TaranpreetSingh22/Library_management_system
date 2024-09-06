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

/**
 *
 * @author Student
 */
public class Borrowed extends HttpServlet {
    
     private int borrowId;
     private int userId;
     private int bookId;
    private String firstName;
    private String lastName;
    private String bookName;
    private String borrowDate;
    private String returnDate;
    
    public int getBorrowId(){
        return borrowId;
    }
    
    public void setBorrowId(int borrowId){
        this.borrowId=borrowId;
    }
    
     public int getUserId(){
        return userId;
    }
    
    public void setUserId(int userId){
        this.userId=userId;
    }
    
     public int getBookId(){
        return bookId;
    }
    
    public void setBookId(int bookId){
        this.bookId=bookId;
    }
    
    public String getFirstName(){
        return firstName;
    }
    
    public void setFirstName(String firstName){
        this.firstName=firstName;
    }
    
    public String getLastName(){
        return lastName;
    }
    
    public void setLastName(String lastName){
        this.lastName=lastName;
    }
    
     public String getBookName(){
        return bookName;
    }
    
    public void setBookName(String bookName){
        this.bookName=bookName;
    }
    
    public String getBorrowDate(){
        return borrowDate;
    }
    
    public void setBorrowdate(String borrowdate){
        this.borrowDate=borrowdate;
    }
    
    public String getReturnDate(){
        return returnDate;
    }
    
    public void setReturnDate(String returnDate){
        this.returnDate=returnDate;
    }
    

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
//            out.println("<title>Servlet Borrowed</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet Borrowed at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
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
