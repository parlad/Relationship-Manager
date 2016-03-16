
<%@page import="com.neupane.relationship.DAO.LoanDAO"%>
<%@page import="com.neupane.relationship.DAO.Impl.LoanDAOImpl"%>
<%@page import="com.neupane.relationship.entity.Loan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>



<%
    LoanDAO loanDAO = new LoanDAOImpl();

%>
<div>
    <div class="pull-right">
        <p>
            <a href="loanTaker.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span>Add</a>
        </p>
    </div>
    <table class="table table-bordered table-hover table-striped">
        <tr>
            <th>ID</th>
            <th>Loan Taker Name</th>
            <th>Amount</th>
            <th>Added Date</th>
            <th>Modified_date</th>
            <th>Status</th> 
            <th>Action</th>
        </tr>

        <%                try {
                for (Loan d : loanDAO.getAll()) {
        %>


        <tr>
            <td><%=d.getId()%></td>
            <td><%=d.getLoanTaker()%></td>
            <td><%=d.getLoanAmount()%></td>
            <td><%=d.getTakenDate()%></td>
            <td><%
                if (d.getReturnDate() != null) {
                    out.println(d.getReturnDate());
                }

                %></td>
            <td><%=d.isStatus()%></td>
            <td>
                <a href="edit.jsp?id=<%=d.getId()%>" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-pencil"></span></a>
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
</div>
<%@include file="footer.jsp" %>

