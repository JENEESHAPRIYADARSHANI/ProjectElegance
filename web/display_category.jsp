<%-- 
    Document   : admin
    Created on : May 8, 2024, 9:44:09 PM
    Author     : DELL
--%>

<%@page import="com.eleganceeco.entities.Message"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
<%@page errorPage="error_exception.jsp"%>
<%
    Admin activeAdmin = (Admin) session.getAttribute("activeAdmin");
    if (activeAdmin == null) {
        Message message = new Message("You are not logged in! Login first!!", "error", "alert-danger");
        session.setAttribute("message", message);
        response.sendRedirect("adminlogin.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible"  content="IR=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/styleadmin.css">
        <link rel="stylesheet" href="CSS/style.css">
        <!----- Box icons importing-->
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>Admin Dashboard</title>
        <%@include file="Components/common_css_js.jsp"%>
    </head>     
    <body>
        <!--navbar -->
        <%@include file="Components/navbar.jsp"%>

        <!-- Add Category Button -->
        <div class="container-fluid mt-5"> <!-- Add margin-top here -->
            <div class="row">
                <div class="col-md-8 offset-md-3"> <!-- Offset the column to the right -->
                    <button type="button" class="btn btn-dark float-end mb-5 rounded-pill py-2 px-4 shadow" data-bs-toggle="modal" data-bs-target="#add-category" style="margin-top: 70px;">
                        <i class="fa-solid fa-plus me-2"></i> Add Category
                    </button>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <!-- Sidebar content -->
                </div>
                <div class="col-md-8">
                    <!-- Category -->
                    <div class="container">
                        <%@include file="Components/alert_message.jsp"%>
                        <table class="table table-hover">
                            <tr class="table-primary text-center" style="font-size: 20px;">
                                <th>Image</th>
                                <th>Category Name</th>
                                <th>Action</th>
                            </tr>
                            <% for (Category c : categoryList) {%>
                            <tr class="text-center">
                                <td><img src="Product_imgs\<%=c.getCategoryImage()%>"
                                         style="width: 60px; height: 60px; width: auto;"></td>
                                <td><%=c.getCategoryName()%></td>
                                <td>
                                    <a href="update_category.jsp?cid=<%=c.getCategoryId()%>" role="button" class="btn btn-secondary" >Update</a>
                                    &emsp;
                                    <a href="AddOperationServlet?cid=<%=c.getCategoryId()%>&operation=deleteCategory" class="btn btn-danger" role="button">Delete</a>
                                </td>
                            </tr>
                            <% }%>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- add category modal-->
        <div class="modal fade" id="add-category" tabindex="-1"
             aria-labelledby="addCategoryModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="addCategoryModalLabel">Add
                            Category Here</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <form action="AddOperationServlet" method="post"
                          enctype="multipart/form-data">
                        <div class="modal-body">
                            <input type="hidden" name="operation" value="addCategory">

                            <div class="mb-3">
                                <label class="form-label"><b>Category Name</b></label> <input
                                    type="text" name="category_name"
                                    placeholder="Enter category here" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label for="formFile" class="form-label"><b>Category
                                        Image</b></label> <input class="form-control" type="file"
                                                         name="category_img" id="formFile">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary"
                                    data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary me-3">Add
                                Category</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- end of modal -->

        <footer>
            <!-- Footer content -->
        </footer> 

        <script src="JS/adminscript.js"></script>
    </body>
</html>
