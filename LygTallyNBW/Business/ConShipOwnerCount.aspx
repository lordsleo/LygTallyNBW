<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConShipOwnerCount.aspx.cs" Inherits="LygTallyNBW.Business.ConShipOwnerCount" %>

<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>箱经营人统计</title>

    <!-- Import google fonts - Heading first/ text second -->
    
    <!--[if lt IE 9]>
<link href="http://fonts.useso.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
<![endif]-->

    <!-- Fav and touch icons -->


    <!-- Css files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/css/jquery.mmenu.css" rel="stylesheet">
    <link href="../assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="../assets/css/climacons-font.css" rel="stylesheet">
    <link href="../assets/plugins/xcharts/css/xcharts.min.css" rel=" stylesheet">
    <link href="../assets/plugins/fullcalendar/css/fullcalendar.css" rel="stylesheet">
    <link href="../assets/plugins/morris/css/morris.css" rel="stylesheet">
    <link href="../assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet" charset="UTF-8">
    <link href="../assets/plugins/jvectormap/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <link href="../assets/css/style.min.css" rel="stylesheet">
    <link href="../assets/css/add-ons.min.css" rel="stylesheet">
    <link href="../assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->

    <style type="text/css">
        table {
            white-space: nowrap;
            overflow: hidden;
        }

            table > tbody > tr > td {
                max-width: 300px;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }
    </style>
    <link href="../Jquery/jquery-ui.css" rel="stylesheet" />
    <script src="../Jquery/jquery-1.10.2.js"></script>
    <script src="../Jquery/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#datepicker").datepicker();
        });
        $(function () {
            $("#datepicker1").datepicker();
        });
    </script>
</head>
<body>
    <form id="Form1" runat="server">
        <div>
            <!-- start: Header -->
            <!--#include file="../frame/top.html"-->
            <!-- end: Header -->

            <div class="container-fluid content">
                <div class="row">

                    <!-- start: Main Menu -->
                    <!--#include file="../frame/left.html"-->
                    <!-- end: Main Menu -->

                    <!-- start: Content -->
                    <div class="main">

                        <div class="row">
                            <div class="col-lg-12">
                                <h3 class="page-header"><i class="fa fa-file-text"></i>箱经营人统计</h3>
                            </div>
                        </div>
                        <!-- 集装箱船舶 -->

                        <div class="col-lg-12 col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <label class="col-lg-2 col-md-2 col-sm-12 control-label">
                                        <i class="fa fa-flag-o red"></i><strong>完船时间</strong>
                                    </label>
                                    <div class="col-lg-10 col-md-10">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4">
                                                <div class="input-group">
                                                    <span class="input-group-addon">从</span>
                                                    <asp:TextBox ID="datepicker" class="form-control" placeholder="起始时间" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <div class="input-group">
                                                    <span class="input-group-addon">至</span>
                                                    <asp:TextBox ID="datepicker1"  class="form-control" placeholder="截至时间" runat="server" ></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-4">
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="筛选" UseSubmitBehavior="false" class="btn btn-primary" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-actions">
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <table class="table bootstrap-datatable countries">
                                        <thead>
                                            <tr>
                                                <th data-priority="1">船公司/船代</th>
                                                <th data-priority="2">20尺箱</th>
                                                <th data-priority="3">40尺箱</th>
                                                <th data-priority="4">45尺箱</th>
                                                <th data-priority="5">自然箱</th>
                                                <th data-priority="6">标准箱</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Repeater ID="mscb" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <th><%# DataBinder.Eval(Container, "DataItem[0]")%></th>
                                                        <th><%# DataBinder.Eval(Container, "DataItem[1]")%></th>
                                                        <th><%# DataBinder.Eval(Container, "DataItem[2]")%></th>
                                                        <th><%# DataBinder.Eval(Container, "DataItem[3]")%></th>
                                                        <th><%# DataBinder.Eval(Container, "DataItem[4]")%></th>
                                                        <th><%# DataBinder.Eval(Container, "DataItem[5]")%></th>
                                                    </tr>
                                                </ItemTemplate>
                                                <HeaderTemplate></HeaderTemplate>
                                                <FooterTemplate></FooterTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--/col-->
                        </div>

                        <!--/row-->
                    </div>
                    <!-- end: Content -->
                </div>
            </div>


            <div class="clearfix"></div>


            <!-- start: JavaScript-->
            <!--[if !IE]>-->

            <script src="../assets/js/jquery-2.1.1.min.js"></script>

            <!--<![endif]-->

            <!--[if IE]>
	
		<script src="../assets/js/jquery-1.11.1.min.js"></script>
	
	<![endif]-->

            <!--[if !IE]>-->

            <script type="text/javascript">
                window.jQuery || document.write("<script src='../assets/js/jquery-2.1.1.min.js'>" + "<" + "/script>");

            </script>

            <!--<![endif]-->

            <!--[if IE]>
	
		<script type="text/javascript">
	 	window.jQuery || document.write("<script src='../assets/js/jquery-1.11.1.min.js'>"+"<"+"/script>");
		</script>
		
	<![endif]-->
            <script src="../assets/js/jquery-migrate-1.2.1.min.js"></script>
            <script src="../assets/js/bootstrap.min.js"></script>


            <!-- page scripts -->
            <script src="../assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
            <script src="../assets/plugins/touchpunch/jquery.ui.touch-punch.min.js"></script>
            <script src="../assets/plugins/moment/moment.min.js"></script>
            <script src="../assets/plugins/fullcalendar/js/fullcalendar.min.js"></script>
            <!--[if lte IE 8]>
		<script language="javascript" type="text/javascript" src="../assets/plugins/excanvas/excanvas.min.js"></script>
	<![endif]-->
            <script src="../assets/plugins/flot/jquery.flot.min.js"></script>
            <script src="../assets/plugins/flot/jquery.flot.pie.min.js"></script>
            <script src="../assets/plugins/flot/jquery.flot.stack.min.js"></script>
            <script src="../assets/plugins/flot/jquery.flot.resize.min.js"></script>
            <script src="../assets/plugins/flot/jquery.flot.time.min.js"></script>
            <script src="../assets/plugins/flot/jquery.flot.spline.min.js"></script>
            <script src="../assets/plugins/xcharts/js/xcharts.min.js"></script>
            <script src="../assets/plugins/autosize/jquery.autosize.min.js"></script>
            <script src="../assets/plugins/placeholder/jquery.placeholder.min.js"></script>
            <script src="../assets/plugins/datatables/js/jquery.dataTables.min.js"></script>
            <script src="../assets/plugins/datatables/js/dataTables.bootstrap.min.js"></script>
            <script src="../assets/plugins/raphael/raphael.min.js"></script>
            <script src="../assets/plugins/morris/js/morris.min.js"></script>
            <script src="../assets/plugins/jvectormap/js/jquery-jvectormap-1.2.2.min.js"></script>
            <script src="../assets/plugins/jvectormap/js/jquery-jvectormap-world-mill-en.js"></script>
            <script src="../assets/plugins/jvectormap/js/gdp-data.js"></script>
            <script src="../assets/plugins/gauge/gauge.min.js"></script>
            <!-- theme scripts -->
            <script src="../assets/js/SmoothScroll.js"></script>
            <script src="../assets/js/jquery.mmenu.min.js"></script>
            <script src="../assets/js/core.min.js"></script>
            <script src="../assets/plugins/d3/d3.min.js"></script>

            <!-- inline scripts related to this page -->
            <!--<script src="../assets/js/pages/index.js"></script>-->

            <!-- end: JavaScript-->
        </div>
    </form>
</body>

</html>
