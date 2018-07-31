<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LygTallyNBW._default" %>

<!DOCTYPE html>
<html lang="en" class="no-js">

<head>

    <meta charset="utf-8">
    <title>Fullscreen Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/supersized.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <style type="text/css">
        .footer {
            width: 100%;
            position: fixed;
            bottom: 10px;
            text-align: center;
            font-size: 12px;
            color: #999;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <div class="page-container">
        <h1>连云港外轮理货有限公司 内部网</h1>
        <form runat="server" method="post">
            <asp:TextBox id="username" type="username" runat="server" name="username" class="username" placeholder="用户名" />
            <asp:TextBox id="password" type="password"  runat="server" name="password" class="password" placeholder="密码" />
            <asp:Button runat="server" Text="登   录" OnClick="Login_Click" type="submit" BackColor="Red"></asp:Button>
            <div class="error"><span>+</span></div>
            <br/><br/>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </form>
    </div>
    <div class="footer" align="center">&nbsp;初始密码123456&nbsp; 如您对账号密码有疑问 请联系公司办公室&nbsp; 电话：0518-82383851</div>

    <!-- Javascript -->
    <script src="assets/js/jquery-1.8.2.min.js"></script>
    <script src="assets/js/supersized.3.2.7.min.js"></script>
    <script src="assets/js/supersized-init.js"></script>
    <script src="assets/js/scripts.js"></script>


</body>

</html>

