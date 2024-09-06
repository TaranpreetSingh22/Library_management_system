<%-- 
    Document   : Studentlist
    Created on : 18-Aug-2023, 11:35:02 am
    Author     : Student
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="ServletPackages.Borrowed" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="stylesheets/stylesheet.css">
  </head>
  <body>
    <header>
     <div id="logo">
       <img src="./images/logo.png" alt="logo" />
     </div>

     <div id="title">
        <span>Welcome To The Library</span>
     </div>

     <div class="desktop_menu">
        <div>
           <a href="#">Admin Dashboard</a>
        </div>
        <div>
            <a href="./addbook.html">Add Book</a>
         </div>
        <div>
           <a href="MessageDisplayServlet">Messages</a>
        </div>
        <div>
            <a href="AdminLogoutServlet">Logout</a>
         </div>
     </div>
     <div id="menu_bar">
       <div>
       </div>
       <div>
       </div>
       <div>
       </div>
     </div>
     
     <div id="mobile_menu_list">
       <ul>
         <li><a href="#">Admin Dashboard</a></li>
         <li><a href="./addbook.html">Add Book</a></li>
         <li><a href="MessageDisplayServlet">Messages</a></li>
         <li><a href="AdminLogoutServlet">Logout</a></li>
       </ul>
     </div>
   </header>
    
    <section>
      <div id="studentBorrowedlist">
        <table border="5px">
          <thead>
            <th>Student id</th>
            <th>Book id</th>
            <th>Student Name</th>
            <th>Book Name</th>
            <th>Borrowed Date</th>
            <th>Return Date</th>
            <th>Action</th>
          </thead>
          <tbody>
             <% 
                List<Borrowed> bookList=(List<Borrowed>) request.getAttribute("bookList");
                for (Borrowed borrowed: bookList ) { %>
                <tr>
                    <td><%=borrowed.getUserId()%></td>
                    <td><%=borrowed.getBookId()%></td>
                    <td><%=borrowed.getFirstName()+" "+borrowed.getLastName()%></td>  
                    <td><%=borrowed.getBookName()%></td>
                    <td><%=borrowed.getBorrowDate()%></td>
                    <td><%=borrowed.getReturnDate()%></td>
                    <td>
                        <a href="DeleteBorrowedList?BorrowId=<%=borrowed.getBorrowId()%>">
                            <button>Delete</button>
                        </a>
                    </td>
                </tr>    
             <% } %>
          </tbody>
        </table>
      </div>
    </section>
    
    <footer>
      <div>
        <span>&#169; Copyright Terms</span>
      </div>
    </footer>
  </body>
  <script src="./scripts/script.js"></script>
</html>
