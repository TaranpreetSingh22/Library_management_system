<%@page import="ServletPackages.Student"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit details</title>
    <link rel="stylesheet" href="stylesheets/signup.css">
    <link rel="stylesheet" href="./stylesheets/stylesheet.css">
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
        <div class="signup">
            
            <form action="UserDetailsChangeServlet" method="post">
                <div id="heading" style="color:black">
                    <span>EDIT DETAILS</span>
                </div>
                 <% 
                List<Student> bookList=(List<Student>) request.getAttribute("bookList");
            for (Student student: bookList ) { %>
                <div>
                    <input type="text" name="eid" id="" value="<%=student.getCollegeId()%>" >
                </div>
                <div>
                    <input type="text" name="fname" id="" value="<%=student.getFirstName()%>">
                </div>
                <div>
                    <input type="text" name="lname" id="" value="<%=student.getLastName()%>">
                </div>
                <div id="dob">
                    <div id="dob_text_div">
                        <span>Date Of Birth</span>
                    </div>
                    <div id="dob_input_div">
                        <input type="date" name="date_of_birth" value="<%=student.getDateOfBirth()%>">
                    </div>
                </div>
                <div>
                    <input type="text" name="iname" id="" value="<%=student.getInstitutionName()%>">
                </div>
                <div id="select_gender">
                    <div id="gender_text_div">
                        <span>Gender</span>
                    </div>
                    <div>
                        <select name="gender" id="" value="<%=student.getGender()%>">
                            <option value="select">Select</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                </div>
                <div>
                    <input type="number" name="phno" id="" value="<%=student.getPhoneNumber()%>">
                </div>
                
                <% } %>
                <div id="buttons">
                    <div id="sub_div">
                        <input type="submit" value="Update" id="create_btn">
                    </div>
                    <div id="res_div">
                        <input type="reset" value="Reset" id="reset_btn">
                    </div>
                </div>
            </form>
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