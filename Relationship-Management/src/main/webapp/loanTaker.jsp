<%@include file="header.jsp" %>

<div>
    <p>Welcome</p>
    <h3>Please add the loan taker information</h3>
</div>



<form>
    <div class="form-group">
        <label for="exampleInputEmail1">First Name</label>
        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="firstName">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Last Name</label>
        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="lastName">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Address</label>
        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="address">
    </div>
    
    <div class="form-group">
        <label for="exampleInputEmail1">Amount</label>
        <input type="number" class="form-control" id="exampleInputEmail1" placeholder="address">
    </div>
    
    <div class="form-group">
        <label for="exampleInputEmail1">Added date</label>
        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="address">
    </div>
    
    <div class="form-group">
        <label for="exampleInputEmail1">Modified Date</label>
        <input type="text" class="form-control" id="exampleInputEmail1" placeholder="address">
    </div>
    
    <div class="form-group">
        <label for="exampleInputEmail1">Contact</label>
        <input type="number" class="form-control" id="exampleInputEmail1" placeholder="contact">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Email</label>
        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="lastName">
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox"> Check me out
        </label>
    </div>
    <button type="submit" class="btn btn-primary" value="personal.jsp">Submit</button>
</form>





<%@include file="footer.jsp" %>