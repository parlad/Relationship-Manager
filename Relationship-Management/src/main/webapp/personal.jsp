

<%@include file="header.jsp" %>
<%@page import="com.neupane.relationship.entity.Personal"%>
<%@page import="com.neupane.relationship.DAO.PersonalDAO"%>
<%@page import="com.neupane.relationship.DAO.Impl.PersonalDAOImpl"%>


<%
    PersonalDAO personalDAO = new PersonalDAOImpl();

%>


<div>
    <p>Welcome</p>
    <h3>Personal information Management System </h3>

</div>

<div class="pull-right">
    <p>
        <a href="addPeople.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span>Add</a>
    </p>
</div>



<table class="table table-bordered table-hover table-striped">
    <tr>
        <th><input type="checkbox"/></th>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Address</th>
        <th>Content</th>
        <th>Email</th>
        <th>Status</th>
        <th>Action</th>
    </tr>


    <%            try {
            for (Personal p : personalDAO.getAll()) {
    %>

    <tr>
        <td><input type="checkbox"/></td>
        <td><%=p.getuID()%></td>
        <td><%=p.getFirstName()%></td>
        <td><%=p.getLastName()%></td>
        <td><%=p.getAddress()%></td>
        <td><%=p.getContact()%></td>
        <td><%=p.getEmail()%></td>
        <td><%=p.isStatus()%></td>
        <td>
            <a href="edit.jsp?id=<%=p.getuID()%>" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-pencil"></span></a>
            <a href="" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span></a>
            <a href="${SITE_URL}/Relationship-Management/mail" class="btn btn-primary btn-sm"> <span class="glyphicon glyphicon-envelope"></span></a>
        </td>
    </tr> 
    <%
            }
        } catch (Exception io) {
            out.println(io.getMessage());
        }
    %>


</table>





<%@include file="footer.jsp" %>