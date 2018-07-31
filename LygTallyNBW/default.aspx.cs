using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTallyNBW
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            try
            {
                var sql = string.Format("select * from wl_user where tel = '{0}'", username.Text);
                var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathWl).ExecuteTable(sql);

                if (dt.Rows.Count == 0)
                {
                    sql = string.Format("select * from wl_user where username = '{0}'", username.Text);
                    dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathWl).ExecuteTable(sql);
                    if (dt.Rows.Count == 0)
                    {
                        Label1.Text = "用户名或电话不存在";
                    }
                }
                else if (Convert.ToString(dt.Rows[0]["password"]) != password.Text)
                {
                    Label1.Text = "密码错误";
                }
                else
                {
                    Session["code_user"] = Convert.ToString(dt.Rows[0]["code_user"]);
                    Response.Redirect("index.aspx");
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}