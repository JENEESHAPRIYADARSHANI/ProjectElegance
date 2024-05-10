<%@page import="com.eleganceeco.entities.Admin"%>
<%@page import="com.eleganceeco.entities.Category"%>
<%@page import="com.eleganceeco.dao.CategoryDao"%>
<%@page import="com.eleganceeco.entities.User"%>
<%@page import="java.util.List"%>
<%@page import="com.eleganceeco.helper.ConnectionProvider"%>
<%
    User user = (User) session.getAttribute("activeUser");
    Admin admin = (Admin) session.getAttribute("activeAdmin");

    CategoryDao catDao = new CategoryDao(ConnectionProvider.getConnection());
    List<Category> categoryList = catDao.getAllCategories();
%>

<%-- admin nav bar --%>
<%
if (user != null || admin != null) {
%>
<nav class="sidebar close">
    <header>
        <div class="image-text">
            <div class="text header-test">
            </div>
        </div>
        <i class='bx bxs-right-arrow-circle  toogle'></i>
    </header>        
    <div class="menu-bar">
        <div class="menu">
            <ul class="menu-links">
                <li class="nav-link">                        
                    <a href="administrator.jsp">
                        <i class='bx bx-home icon' ></i>
                        <span class="text nav-text">Dashboard</span>
                    </a>
                </li>
                <!-- Other menu items -->
                <li class="nav-link">                        
                    <a href="display_category.jsp">
                        <i class='bx bx-category icon' ></i>
                        <span class="text nav-text">Category</span>
                    </a>
                </li>
                <li class="nav-link">                        
                    <a href="display_products.jsp">
                        <i class='bx bx-shopping-bag icon'></i>
                        <span class="text nav-text">Products</span>
                    </a>
                </li>
                <li class="nav-link">                        
                    <a href="display_orders.jsp">
                        <i class='bx bx-cart-alt icon' ></i>
                        <span class="text nav-text">Orders</span>
                    </a>
                </li>    
                <li class="">                        
                    <a href="display_users.jsp">
                        <i class='bx bx-user icon' ></i>
                        <span class="text nav-text">Users</span>
                    </a>
                </li> 
                <li class="">                        
                    <a href="">
                        <i class='bx bx-user-circle icon' ></i>
                        <span class="text nav-text">Admins</span>
                    </a>
                </li>
                <br>
                <br>   
                <br>
                <br>  
                <hr>                               
                <li class="nav-link">                        
                    <a href="LogoutServlet?user=user">
                        <i class='bx bx-log-out icon'></i>
                        <span class="text nav-text">Log Out</span>
                    </a>
                </li>
            </ul>               
        </div>
    </div>
</nav>
<%-- Top bar --%>
<nav class="top-bar close home ml-auto">
    <div class="logo">
        <img src="Images/logo.png" alt="logo" width="150px" height="auto">
    </div>
    <div class="fixed-section">
        <% if (admin != null) { %>
        <div class="profile">
            <span class="username">
                <%-- Java code to retrieve the username and display it --%>
                <%= admin.getName() %>
            </span>
            <a href="">
                <i class='bx bxs-user-circle icon'></i>
            </a>             
        </div>
        <% } %>
    </div>
</nav>
<%
} else {
%>
<%-- Navbar content for non-logged users --%>
<ul class="navbar-nav ml-auto">
    <li class="nav-item active pe-2">
        <a class="nav-link" aria-current="page" href="register.jsp"> <i class="fa-solid fa-user-plus" style="color: #ffffff;"></i>&nbsp;Register
        </a>
    </li>
    <li class="nav-item pe-2"><a class="nav-link" aria-current="page" href="login.jsp">
        <i class="fa-solid fa-user-lock" style="color: #fafafa;"></i>&nbsp;Login</a>
    </li>
    <li class="nav-item pe-2"><a class="nav-link" aria-current="page" href="adminlogin.jsp">&nbsp;Admin</a></li>
</ul>
</div>
<%
}
%>
