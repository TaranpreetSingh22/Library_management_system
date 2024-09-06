<%-- 
    Document   : admin_dashboard.jsp
    Created on : 23-Aug-2023, 10:16:02 am
    Author     : Student
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <link rel="stylesheet" href="stylesheets/stylesheet.css">
    <link rel="stylesheet" href="./stylesheets/admin_dashboard.css">
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
    
    <%     String db = "library_mgmt";
                String user = "admin"; // assumes database name is the same as username
                String password="admin";
                java.sql.Connection con;
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+db, user, password);
                Statement st=con.createStatement();
                String query1="select count(book_id) from books;";
                ResultSet totalBooks=st.executeQuery(query1);
                int countBook=0;
                
                if(totalBooks.next())
                {
                    countBook=totalBooks.getInt(1);
                }
                
                String query2="select count(uid) from user_info;";
                ResultSet totalStudents=st.executeQuery(query2);
                
                int countStudent=0;
                
                if(totalStudents.next())
                {
                    countStudent=totalStudents.getInt(1);
                }
                
                String query3="select count(borrow_id) from borrowed_books";
                ResultSet totalBorrowed=st.executeQuery(query3);
                
                int countBorrowed=0;
                
                if(totalBorrowed.next())
                {
                    countBorrowed=totalBorrowed.getInt(1);
                }
     %>

   <section>
       <a href="TotalNoOfStudentsServlet">
           <div class="box1">
                <div>
                    <span>Total no of Students</span>
                </div>
                <div id="number">
                    <span><%=countStudent%></span>
                </div>
            </div>
        </a>

        <a href="TotalNoOfBooksServlet">
            <div class="box1">
               <div>
                <span>Total no of Books</span>
               </div>
               <div id="number">
                <span><%=countBook%></span>
               </div>
            </div>
        </a>

        <a href="BorrowedListServlet">
            <div class="box1">
                <div>
                    <span>Total no of Books Borrowed</span>
                </div>
                <div id="number">
                    <span><%=countBorrowed%></span>
                </div>
            </div>
        </a>

    </section>

    <footer class="admin_dash">
  <div>
    <span>&#169; Copyright Terms</span>
  </div>
</footer>

</body>
<script src="./scripts/script.js"></script>
</html>
