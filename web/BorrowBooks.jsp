<%-- 
    Document   : books
    Created on : 17-Aug-2023, 12:03:12 pm
    Author     : Student
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ServletPackages.Book" %>
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
           <a href="#">About</a>
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
         <li><a href="#">User Dashboard</a></li>
         <li><a href="./About.html">About</a></li>
         <li><a href="./contact.html">Contact</a></li>
         <li><a href="UserLogoutServlet">Logout</a></li>
       </ul>
     </div>
   </header>

   <section>
       <% 
            List<Book> bookList=(List<Book>) request.getAttribute("bookList");
            for (Book book: bookList ) { %>
            <div id="book_title">
                <%=book.getBookName()%>
            </div>
           <div class="book_box" id=<%=book.getBookId()%>>
           <img src="<%=book.getBookImage()%>" alt="Book Image" srcset="">
            <div id="book_Details">
              <div>
                  <%=book.getBookName()%>
              </div>
              <div>
                  <%=book.getBookAuthor()%>
              </div>
              <div>
                  <%=book.getpublishYear()%>
              </div>
              <div>
                  <%=book.getBookDesc()%>
              </div>
              <div>
                  <form action="ActuallyBorrowedServlet" method="post">
                      <input type="hidden" name="bookId" value="<%=book.getBookId()%>" />
                      <input type="submit" value="Borrow" />
                  </form>
            </div>
            </div>
      <% } %> 
    </section>

<footer>
  <div>
    <span>&#169; Copyright Terms</span>
  </div>
</footer>

</body>
<script src="./scripts/script.js"></script>
</html>
