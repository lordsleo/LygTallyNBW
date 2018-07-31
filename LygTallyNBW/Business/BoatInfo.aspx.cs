using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTallyNBW.Business
{
    public partial class BoatInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //集装箱
            var sql = "SELECT  *  FROM view_new_remaintons where not worktime_begin is null and worktime_end is null and goods='集装箱' ";
            var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.JZX.DataSource = dt.DefaultView;
            this.DataBind();
            //件杂货
            sql = "SELECT  *  FROM view_new_remaintons where not worktime_begin is null and worktime_end is null and goods='件杂货' ";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.JZH.DataSource = dt.DefaultView;
            this.DataBind();
        }
    }
}