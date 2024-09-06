<%-- 
    Document   : messages
    Created on : 21-Aug-2023, 10:16:50 am
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="ServletPackages.Message" %>
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
           <a href="./admin_dashboard.jsp">Admin Dashboard</a>
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
         <li><a href="./admin_dashboard.jsp">Admin Dashboard</a></li>
         <li><a href="./addbook.html">Add Book</a></li>
         <li><a href="MessageDisplayServlet">Messages</a></li>
         <li><a href="AdminLogoutServlet">Logout</a></li>
       </ul>
     </div>
   </header>

   <section>
       
        <div id="messagelist">
        <table border="5px">
          <thead>
            <th>Student College id</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Address</th>
            <th>Message</th>
            <th>Action</th>
          </thead>
          <tbody>
             <% 
                List<Message> bookList=(List<Message>) request.getAttribute("bookList");
                for (Message message: bookList ) { %>
                <tr>
                    <td><%=message.getCollegeId()%></td>
                    <td><%=message.getEmailId()%></td>
                    <td><%=message.getPhoneNumber()%></td>
                    <td><%=message.getAddress()%></td>
                    <td><%=message.getMessage()%></td>
                    <td>
                        <a href="DeleteMessageServlet?contactId=<%=message.getContactId()%>">
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
