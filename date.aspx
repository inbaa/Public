<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

 <!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
 <!-- issue date-->
<script>
    $(document).ready(function () {
        var date_input = $('input[id="date1"]'); //our date input has the id "date1"
        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
        var options = {
            format: 'dd-mm-yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        };
        date_input.datepicker(options);
    })
</script>


</head>
<body>
 <form runat="server">
     <div class="container">

         <h2>Date picker</h2>
         <br /><br /><br /><br /><br /><br /><br /><br /><br />
         <div class="row">
             <asp:Label ID="Label1" For="date1" CssClass="control-label" runat="server" Text="Label">Date</asp:Label>
             <div class="input-group">
                 <asp:TextBox ID="date1" placeholder="DD-MM-YYYY" CssClass="form-control" runat="server"></asp:TextBox>
             </div>
         </div>
     </div>
 </form>
</body>
</html>

