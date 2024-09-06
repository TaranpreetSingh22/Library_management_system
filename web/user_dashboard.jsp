<%-- 
    Document   : user_dashboard
    Created on : 22-Aug-2023, 12:18:41 pm
    Author     : Student
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ServletPackages.Student" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <link rel="stylesheet" href="stylesheets/stylesheet.css">
    <link rel="stylesheet" href="./stylesheets/books.css">
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
           <a href="UserDashBoardServlet">User Dashboard</a>
        </div>
        <div>
           <a href="./About.html">About</a>
        </div>
        <div>
           <a href="./contact.html">Contact</a>
        </div>
        <div>
          <a href="UserLogoutServlet">Logout</a>
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
         <li><a href="UserDashBoardServlet">User Dashboard</a></li>
         <li><a href="./About.html">About</a></li>
         <li><a href="./contact.html">Contact</a></li>
         <li><a href="UserLogoutServlet">Logout</a></li>
       </ul>
     </div>
   </header>

   <section>
       <div>
        <div>
            <span>Your Details</span>
        </div>
        
           <% 
                List<Student> bookList=(List<Student>) request.getAttribute("bookList");
            for (Student student: bookList ) { %>
        <div>
            <span><%=student.getFirstName()+" "+student.getLastName()%></span>
        </div>
        <div>
            <span><%=student.getUserId()%></span>
        </div>
        <div>
            <span><%=student.getEmail()%></span>
        </div>
        <div>
            <span><%=student.getPhoneNumber()%></span>
        </div>
        <% } %>
        <div>
            <a href="UserEditRedirectServlet"> <button type="submit">Edit Details</button></a>
        </div>
        <div>
            <span>Or</span>
        </div>
        <div>
            <a href="./NewPassword.html"><button>Change Password</button></a>
        </div>
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