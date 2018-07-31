using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTallyNBW.Business
{
    public partial class BillListCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            var sql = string.Format("SELECT NO,SHIPAGENT_CHA,Tally_items_CHA,fee_amount,unit,fee_rate,money,listdate,descri,account_Type from VIEW_Bill_List_New where NO like '{0}%'", shipname.Text);
            var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.mscb.DataSource = (dt).DefaultView;
            this.DataBind();
        }
    }
}