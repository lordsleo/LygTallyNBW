using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTallyNBW.Contact
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sql = string.Format("SELECT realname,tel,short_tel,wl_department.department FROM WL_USER,wl_department where WL_USER.code_department=wl_department.code_department");
            var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.tel.DataSource = (dt).DefaultView;
            this.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            var sql = string.Format("SELECT realname,tel,short_tel,wl_department.department FROM WL_USER,wl_department where WL_USER.code_department=wl_department.code_department and realname like '%{0}%'", name.Text);
            var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.tel.DataSource = (dt).DefaultView;
            this.DataBind();
        }
    }
}