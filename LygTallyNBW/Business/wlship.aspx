<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wlship.aspx.cs" Inherits="LygTallyNBW.Business.wlship" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>外理船舶信息查询</title>
    <script src="../Jquery/jquery-2.1.4.min.js"></script>
    <link href="../Jquery/jquery.mobile-1.4.5.min.css" rel="stylesheet" />
    <script src="../Jquery/jquery.mobile-1.4.5.min.js"></script>

    <style type="text/css">
        .movie-list thead th {
            background-color: #B0C4DE;
        }

        .movie-list thead th,
        .movie-list tbody tr:last-child {
            border-bottom: 1px solid #d6d6d6; /* non-RGBA fallback */
            border-bottom: 1px solid rgba(0,0,0,.1);
            text-align: center;
        }

        .movie-list tbody th,
        .movie-list tbody td {
            border-bottom: 1px solid #e6e6e6; /* non-RGBA fallback  */
            border-left: 1px solid #d6d6d6;
            border-right: 1px solid #d6d6d6;
            border-bottom: 1px solid rgba(0,0,0,.05);
            text-align: center;
        }

        .movie-list tbody tr:last-child th,
        .movie-list tbody tr:last-child td {
            border-bottom: 0;
            text-align: center;
        }

        .movie-list tbody tr:nth-child(odd) td,
        .movie-list tbody tr:nth-child(odd) th {
            background-color: #eeeeee; /* non-RGBA fallback  */
            background-color: rgba(0,0,0,.04);
            text-align: center;
        }
    </style>


</head>
<body>
    <div data-role="tabs">
        <div data-role="navbar" data-grid="c">
            <ul>
                <li><a href="#ybcb" class="ui-btn-active">预报船舶</a></li>
                <li><a href="#qbcb">确报船舶</a></li>
                <li><a href="#mdcb">锚地船舶</a></li>
                <li><a href="#bwcb">泊位船舶</a></li>
                <li><a href="#hgcb">海港船舶</a></li>
                <li><a href="#hgyb">海港移泊</a></li>
                <li><a href="#ghcb">灌河船舶</a></li>
                <li><a href="#ghyb">灌河移泊</a></li>
            </ul>
        </div>

        <div id="ybcb">
            <div data-role="header">
                <h1>当前预报船舶共<%=ybcb_data.Items.Count %>条</h1>
            </div>
            <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="ybcb_table">
                <thead>
                    <tr>
                        <th data-priority="1">中文船名</th>
                        <th data-priority="2">国籍</th>
                        <th data-priority="3">航次</th>
                        <th data-priority="4">内外贸</th>
                        <th data-priority="5">吃水</th>
                        <th data-priority="6">卸货名称</th>
                        <th data-priority="7">卸货数量</th>
                        <th data-priority="8">装货名称</th>
                        <th data-priority="9">装货数量</th>
                        <th data-priority="10">预计到港时间</th>
                        <th data-priority="11">船代</th>
                    </tr>
                </thead>
                <tbody id="ybcb_tbody">
                    <asp:Repeater ID="ybcb_data" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><a href="http://www.boea.com.cn/SASP.aspx?id=<%# DataBinder.Eval(Container, "DataItem[0]")%>" data-rel="external" target="_blank"><%# DataBinder.Eval(Container, "DataItem[1]")%></a></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[2]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[3]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[4]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[5]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[6]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[7]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[8]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[9]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[10]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[11]")%></th>
                            </tr>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>

        <div id="qbcb">
            <div data-role="header">
                <h1>当前确报船舶共<%=qbcb_data.Items.Count %>条</h1>
                <a class="ui-btn-right" id="dc"></a>
            </div>
            <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="qbcb_table">
                <thead>
                    <tr>
                        <th data-priority="1">中文船名</th>
                        <th data-priority="2">国籍</th>
                        <th data-priority="3">航次</th>
                        <th data-priority="4">内外贸</th>
                        <th data-priority="5">吃水</th>
                        <th data-priority="6">卸货名称</th>
                        <th data-priority="7">卸货数量</th>
                        <th data-priority="8">装货名称</th>
                        <th data-priority="9">装货数量</th>
                        <th data-priority="10">确报时间</th>
                        <th data-priority="11">船代</th>
                    </tr>
                </thead>
                <tbody id="qbcb_tbody">
                    <asp:Repeater ID="qbcb_data" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><a href="http://www.boea.com.cn/SASP.aspx?id=<%# DataBinder.Eval(Container, "DataItem[0]")%>" data-rel="external" target="_blank"><%# DataBinder.Eval(Container, "DataItem[1]")%></a></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[2]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[3]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[4]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[5]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[6]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[7]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[8]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[9]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[10]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[11]")%></th>
                            </tr>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>

        <div id="mdcb">
            <div data-role="header">
                <h1>当前锚地船舶共<%=mdcb_data.Items.Count %>条</h1>
            </div>
            <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="mdcb_table">
                <thead>
                    <tr>
                        <th data-priority="1">中文船名</th>
                        <th data-priority="2">国籍</th>
                        <th data-priority="3">航次</th>
                        <th data-priority="4">内外贸</th>
                        <th data-priority="5">吃水</th>
                        <th data-priority="6">卸货名称</th>
                        <th data-priority="7">卸货数量</th>
                        <th data-priority="8">装货名称</th>
                        <th data-priority="9">装货数量</th>
                        <th data-priority="10">抵锚时间</th>
                        <th data-priority="11">预定泊位</th>
                        <th data-priority="12">船代</th>
                    </tr>
                </thead>
                <tbody id="mdcb_tbody">
                    <asp:Repeater ID="mdcb_data" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><a href="http://www.boea.com.cn/SASP.aspx?id=<%# DataBinder.Eval(Container, "DataItem[0]")%>" data-rel="external" target="_blank"><%# DataBinder.Eval(Container, "DataItem[1]")%></a></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[2]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[3]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[4]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[5]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[6]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[7]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[8]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[9]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[10]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[11]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[12]")%></th>
                            </tr>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>

        <div id="bwcb">
            <div data-role="header">
                <h1>当前泊位船舶共<%=bwcb_data.Items.Count %>条</h1>
            </div>
            <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="bwcb_table">
                <thead>
                    <tr>
                        <th data-priority="1">泊位</th>
                        <th data-priority="2">中文船名</th>
                        <th data-priority="3">航次</th>
                        <th data-priority="4">卸货名称</th>
                        <th data-priority="5">卸货数量</th>
                        <th data-priority="6">装货名称</th>
                        <th data-priority="7">装货数量</th>
                        <th data-priority="8">靠泊时间</th>
                        <th data-priority="9">状态</th>
                        <th data-priority="10">船代</th>
                        <th data-priority="11">作业公司</th>
                    </tr>
                </thead>
                <tbody id="bwcb_tbody">
                    <asp:Repeater ID="bwcb_data" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><%# DataBinder.Eval(Container, "DataItem[1]")%></th>
                                <th><a href="http://www.boea.com.cn/SASP.aspx?id=<%# DataBinder.Eval(Container, "DataItem[0]")%>" data-rel="external" target="_blank"><%# DataBinder.Eval(Container, "DataItem[2]")%></a></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[3]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[4]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[5]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[6]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[7]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[8]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[9]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[10]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[11]")%></th>
                            </tr>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>

        <div id="hgcb">
            <div data-role="header">
                <h1>当前已做计划海港船舶共<%=hgcb_data.Items.Count %>条</h1>
                <a class="ui-btn-right">发布时间：<%=fbsj %></a>
            </div>
            <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="hgcb_table">
                <thead>
                    <tr>
                        <th data-priority="1">泊位</th>
                        <th data-priority="2">中文船名</th>
                        <th data-priority="3">国籍</th>
                        <th data-priority="4">船长/进/出吃水</th>
                        <th data-priority="5">计划进港时间</th>
                        <th data-priority="6">计划出港时间</th>
                        <th data-priority="7">船代</th>
                        <th data-priority="8">性质</th>
                        <th data-priority="9">引水</th>
                        <th data-priority="10">备注</th>
                    </tr>
                </thead>
                <tbody id="hgcb_tbody">
                    <asp:Repeater ID="hgcb_data" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><%# DataBinder.Eval(Container, "DataItem[1]")%></th>
                                <th><a href="http://www.boea.com.cn/SASP.aspx?id=<%# DataBinder.Eval(Container, "DataItem[0]")%>" data-rel="external" target="_blank"><%# DataBinder.Eval(Container, "DataItem[2]")%></a></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[3]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[4]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[5]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[6]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[7]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[8]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[9]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[10]")%></th>
                            </tr>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>

        <div id="hgyb">
            <div data-role="header">
                <h1>当前已做计划海港移泊共<%=hgyb_data.Items.Count %>条</h1>
            </div>
            <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="hgyb_table">
                <thead>
                    <tr>
                        <th data-priority="1">当前泊位</th>
                        <th data-priority="2">中文船名</th>
                        <th data-priority="3">计划移泊时间</th>
                        <th data-priority="4">计划移泊泊位</th>
                        <th data-priority="5">移泊后离港时间</th>
                        <th data-priority="6">性质</th>
                        <th data-priority="7">备注</th>
                    </tr>
                </thead>
                <tbody id="hgyb_tbody">
                    <asp:Repeater ID="hgyb_data" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><%# DataBinder.Eval(Container, "DataItem[1]")%></th>
                                <th><a href="http://www.boea.com.cn/SASP.aspx?id=<%# DataBinder.Eval(Container, "DataItem[0]")%>" data-rel="external" target="_blank"><%# DataBinder.Eval(Container, "DataItem[2]")%></a></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[3]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[4]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[5]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[6]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[7]")%></th>
                            </tr>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>

        <div id="ghcb">
            <div data-role="header">
                <h1>当前已做计划灌河船舶共<%=ghcb_data.Items.Count %>条</h1>
            </div>
            <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="ghcb_table">
                <thead>
                    <tr>
                        <th data-priority="1">泊位</th>
                        <th data-priority="2">中文船名</th>
                        <th data-priority="3">国籍</th>
                        <th data-priority="4">船长/进/出吃水</th>
                        <th data-priority="5">计划进港时间</th>
                        <th data-priority="6">计划出港时间</th>
                        <th data-priority="7">船代</th>
                        <th data-priority="8">性质</th>
                        <th data-priority="9">引水</th>
                        <th data-priority="10">备注</th>
                    </tr>
                </thead>
                <tbody id="ghcb_tbody">
                    <asp:Repeater ID="ghcb_data" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><%# DataBinder.Eval(Container, "DataItem[1]")%></th>
                                <th><a href="http://www.boea.com.cn/SASP.aspx?id=<%# DataBinder.Eval(Container, "DataItem[0]")%>" data-rel="external" target="_blank"><%# DataBinder.Eval(Container, "DataItem[2]")%></a></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[3]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[4]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[5]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[6]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[7]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[8]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[9]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[10]")%></th>
                            </tr>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>

        <div id="ghyb">
            <div data-role="header">
                <h1>当前已做计划灌河移泊共<%=ghyb_data.Items.Count %>条</h1>
            </div>
            <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="ghyb_table">
                <thead>
                    <tr>
                        <th data-priority="1">当前泊位</th>
                        <th data-priority="2">中文船名</th>
                        <th data-priority="3">计划移泊时间</th>
                        <th data-priority="4">计划移泊泊位</th>
                        <th data-priority="5">移泊后离港时间</th>
                        <th data-priority="6">性质</th>
                        <th data-priority="7">备注</th>
                    </tr>
                </thead>
                <tbody id="ghyb_tbody">
                    <asp:Repeater ID="ghyb_data" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th><%# DataBinder.Eval(Container, "DataItem[1]")%></th>
                                <th><a href="http://www.boea.com.cn/SASP.aspx?id=<%# DataBinder.Eval(Container, "DataItem[0]")%>" data-rel="external" target="_blank"><%# DataBinder.Eval(Container, "DataItem[2]")%></a></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[3]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[4]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[5]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[6]")%></th>
                                <th><%# DataBinder.Eval(Container, "DataItem[7]")%></th>
                            </tr>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
