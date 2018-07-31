using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;
using System.Data;

namespace LygTallyNBW.Download
{
    public partial class Download : System.Web.UI.Page
    {
        protected string sql;
        protected DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            //计费系统-JF
            sql = "SELECT  *  FROM wl_download where type='计费'";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.JF.DataSource = dt.DefaultView;
            this.DataBind();
        }
    }
}