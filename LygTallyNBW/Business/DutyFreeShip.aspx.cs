using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTallyNBW.Business
{
    public partial class DutyFreeShip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            datepicker.Attributes.Add("ReadOnly", "true");
            datepicker1.Attributes.Add("ReadOnly", "true");

            var sql = string.Format("select ship_id,CHI_VESSEL,NATION_CHA,I_VOYAGE||'/'||O_VOYAGE as voyage,trade,yjdg,name  from view_sship_tan where sysdate-7 <= yjdg and  yjdg <=  sysdate+7 and nation_cha <>'中国' and trade='外贸' order by yjdg desc");
            var dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.mscb.DataSource = (dt).DefaultView;
            this.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            var sql = string.Format("select ship_id,CHI_VESSEL,NATION_CHA,I_VOYAGE||'/'||O_VOYAGE as voyage,trade,yjdg,name  from view_sship_tan where nation_cha <>'中国'and to_date( '{0}','yyyy-MM-dd') <= yjdg and  yjdg  <= to_date( '{1}','yyyy-MM-dd')  and trade='外贸' order by yjdg desc", datepicker.Text, datepicker1.Text);
            var dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.mscb.DataSource = (dt).DefaultView;
            this.DataBind();
        }
        
    }
}