using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;


namespace LygTallyNBW.Business
{
    public partial class BoatSelect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            var sql = string.Format("select ship_id,CHI_VESSEL,NATION_CHA,I_VOYAGE||'/'||O_VOYAGE as voyage,trade,yjdg,name  from view_sship_tan where chi_vessel like  '%{0}%' order by yjdg desc", shipname.Text);
            var dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.mscb.DataSource = (dt).DefaultView;
            this.DataBind();
        }
    }
}