<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="LygTallyNBW.News.Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <TABLE cellSpacing='0' cellPadding='4' width='96%' align='center' border='0'>
            <TBODY>
              <TR>
                <TD vAlign='top' ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="5"></td>
                    </tr>
                    <tr>
                      <td height="40" align="center" style="font-size:25px;font-family: '黑体';line-height:30px;"><asp:Label ID="LabBT" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                      <td bgcolor="#CCCCCC" height="1"></td>
                    </tr>
                    <tr>
                      <td height="25" align="center" style="text-align: center">
                                                                 发布日期：<asp:Label ID="Labtime" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;来源：LYGTALLY<%--<asp:Label ID="Labowner" runat="server"></asp:Label>--%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                  </table>
                    <TABLE cellSpacing='0' cellPadding='0' width='100%'>
                      <TBODY>
                      
                        <TR vAlign=top>
                          <TD class="font_14">
                            <asp:Label ID="LabMessage" runat="server"></asp:Label>
                          </TD>
                        </TR>
                        <tr>
                        
                        <td  height="10px">
                        </td>
                        </tr>
                        
                        <tr>
                          <td  class="font_12"><asp:Label ID="Labfj" runat="server"></asp:Label>
                         
							  
						  </td>
                        </tr>
                        <TR vAlign=top>
                         <td height="25" align="right">
                                                                                               
                                                                                            </td>
                        </TR>
                      </TBODY>
                  </TABLE></TD>
              </TR>
            </TBODY>
          </TABLE>
    </div>
    </form>
</body>
</html>
