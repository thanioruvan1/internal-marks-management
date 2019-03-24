<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Internal.Login" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from thevectorlab.net/flatlab-4/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 17 Feb 2019 05:48:38 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="img/favicon.html">

    <title></title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />


</head>

  <body class="login-body">
  
  					

    <div class="container">

      <form class="form-signin"  runat="server" >
        <div class="form-signin-heading">
						<a class="logo">
						<img src="img\charans.png" height="50" width="50" >
					</a>
		</div>
        <div class="login-wrap">

            <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="User ID" ></asp:TextBox>
            <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Password"></asp:TextBox>
           
            <label class="checkbox">
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> Forgot Password?</a>

                </span>
            </label>
            <asp:Button ID="Button1"  class="btn btn-lg btn-login btn-block" OnClick="Button1_Click"  runat="server" Text="logfdgsdfgsin" />



        </div>

          <!-- Modal -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="modal-header">
                          <h4 class="modal-title">Forgot Password ?</h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                          </button>
                      </div>
                      <div class="modal-body">
                          <p>Enter your e-mail address below to reset your password.</p>
                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                      </div>
                      <div class="modal-footer">
                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                          <button class="btn btn-success" type="button">Submit</button>
                      </div>
                  </div>
              </div>
          </div>
          <!-- modal -->

      </form>

    </div>



    <!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>


  </body>

<!-- Mirrored from thevectorlab.net/flatlab-4/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 17 Feb 2019 05:48:39 GMT -->
</html>
