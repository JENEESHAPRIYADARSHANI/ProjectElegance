<%@page import="com.eleganceeco.entities.Message"%>
<%@page import="com.eleganceeco.entities.User"%>
<%
    User user1 = (User) session.getAttribute("activeUser");
    if (user1 == null) {
        Message message = new Message("You are not logged in! Login first!!", "error", "alert-danger");
        session.setAttribute("message", message);
        response.sendRedirect("login.jsp");
        return;
    }
%>

<style>
    label {
        font-weight: bold;
    }
</style>
<div class="container px-3 py-3">
    <h3>Personal Information</h3>
    <form id="update-user" action="UpdateUserServlet" method="post">
        <input type="hidden" name="operation" value="updateUser">
        <div class="row">
            <div class="col-md-6 mt-2">
                <label class="form-label">Your name</label> <input type="text"
                                                                   name="name" class="form-control" placeholder="First and last name"
                                                                   value="<%=user1.getUserName()%>">
            </div>
            <div class="col-md-6 mt-2">
                <label class="form-label">Email</label> <input type="email"
                                                               name="email" placeholder="Email address" class="form-control"
                                                               value="<%=user1.getUserEmail()%>">
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mt-2">
                <label class="form-label">Mobile number</label> <input type="number"
                                                                       name="mobile_no" placeholder="Mobile number" class="form-control"
                                                                       value="<%=user1.getUserPhone()%>">
            </div>
            <div class="col-md-6 mt-5">
                <label class="form-label pe-3">Gender</label>
                <%
                    String gender = user1.getUserGender();
                    if (gender.trim().equals("Male")) {
                %>
                <input class="form-check-input" type="radio" name="gender"
                       value="Male" checked> <span
                       class="form-check-label pe-3 ps-1"> Male </span> <input
                       class="form-check-input" type="radio" name="gender" value="Female">
                <span class="form-check-label ps-1"> Female </span>

                <%
                } else {
                %>
                <input class="form-check-input" type="radio" name="gender"
                       value="Male"> <span class="form-check-label pe-3 ps-1">
                    Male </span> <input class="form-check-input" type="radio" name="gender"
                                    value="Female" checked> <span class="form-check-label ps-1">
                    Female </span>
                    <%
                        }
                    %>

            </div>
        </div>
        <div class="mt-2">
            <label class="form-label">Address</label> <input type="text"
                                                             name="address" placeholder="Enter Address(Area and Street))"
                                                             class="form-control" value="<%=user1.getUserAddress()%>">
        </div>
        <div class="row">
            <div class="col-md-6 mt-2">
                <label class="form-label">City</label> <input class="form-control"
                                                              type="text" name="city" placeholder="City/District/Town"
                                                              value="<%=user1.getUserCity()%>">
            </div>
            <div class="col-md-6 mt-2">
                <label class="form-label">Postal code</label> <input
                    class="form-control" type="number" name="postalcode"
                    placeholder="Postalcode" maxlength="6"
                    value="<%=user1.getUserPostalcode()%>">
            </div>
        </div>
        <div class="row mt-2">
            <label class="form-label">province</label>
            <div class="input-group mb-3">
                <input class="form-control" type="text"
                       value="<%=user1.getUserProvince()%>">
                <select name="province"
                        id="Province-list" class="form-select">
                    <option selected>--Select Province--</option>
                    <select>
                        <optgroup label="Western Province">
                            <option value="Western Province">Western Province</option>
                        </optgroup>
                        <optgroup label="Southern Province">
                            <option value="Southern Province">Southern Province</option>
                        </optgroup>
                        <optgroup label="Central Province">
                            <option value="Central Province">Central Province</option>
                        </optgroup>
                        <optgroup label="Sabaragamuwa Province">
                            <option value="Sabaragamuwa Province">Sabaragamuwa Province</option>
                        </optgroup>
                        <optgroup label="Uva Province">
                            <option value="Uva Province">Uva Province</option>
                        </optgroup>
                        <optgroup label="Northern Province">
                            <option value="Northern Province">Northern Province</option>
                        </optgroup>
                        <optgroup label="North Central Province">
                            <option value="North Central Province">North Central Province</option>
                        </optgroup>
                        <optgroup label="Eastern Province">
                            <option value="Eastern Province">Eastern Province</option>
                        </optgroup>
                        <optgroup label="North Western Province">
                            <option value="North Western Province">North Western Province</option>
                        </optgroup>
                    </select>

                </select>
            </div>
        </div>
        <div id="submit-btn" class="container text-center mt-3">
            <button type="submit" class="btn btn-outline-primary me-3">Update</button>
            <button type="reset" class="btn btn-outline-primary">Reset</button>
        </div>
    </form>
</div>

















