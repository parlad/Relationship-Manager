<%@include file="header.jsp" %>

<div>
    <p>Welcome</p>
    <h3>Please fill the form for sending the mail </h3>
</div>


<form action="mail" method="post">

    <div class="form-group">
        <label for="mail">Mail Form:</label>
        <label for="mailSender">Sender:</label>
        <input type="text" name="mailSender" class="form-control" id="exampleInputEmail1" placeholder="Email Address">
    </div>

    <div class="form-group">
        <label for="mail">Email</label>
        <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Email Address">
    </div>

    <div class="form-group">
        <label for="mail">Subject</label>
        <input type="text" name="subject" class="form-control" id="exampleInputEmail1" placeholder="Enter Subject">
    </div>

    <div class="form-group">
        <label for="content">Mail Description:</label>
        <textarea name="description" class="form-group form-control" rows="12" cols="12" placeholder="Message" id="content"></textarea>
    </div>


    <button type="submit" name="submit" class="btn btn-primary" value="${"MailController"}">Submit</button>
</form>


<%@include file="footer.jsp" %>