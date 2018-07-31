using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;


namespace LygTallyNBW.Business
{
    public partial class ConShipOwnerCount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            datepicker.Attributes.Add("ReadOnly", "true");
            datepicker1.Attributes.Add("ReadOnly", "true");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            var sql = string.Format("select a.RealPayer,count20=isnull(count20,0),count40=isnull(count40,0),count45=isnull(count45,0),countN,(isnull(count20,0)+(isnull(count40,0)*2)+(isnull(count45,0)*2.5)) as countTEU from(select RealPayer,count(*) as count20 from ( SELECT * FROM [tally].[dbo].[View_ConRealPayerCount] where cast('{0}' as datetime) <= worktime_end and worktime_end <= cast('{1}' as datetime) and size_con = 20) as t group by realpayer) as a FULL OUTER JOIN (select RealPayer,count(*) as count40 from ( SELECT * FROM [tally].[dbo].[View_ConRealPayerCount] where cast('{0}' as datetime) <= worktime_end and worktime_end <= cast('{1}' as datetime) and size_con = 40) as t group by realpayer) as b on a.RealPayer = b.RealPayer FULL OUTER JOIN (select RealPayer,count(*) as count45 from ( SELECT * FROM [tally].[dbo].[View_ConRealPayerCount] where cast('{0}' as datetime) <= worktime_end and worktime_end <= cast('{1}' as datetime) and size_con = 45) as t group by realpayer) as c on a.RealPayer = c.RealPayer FULL OUTER JOIN (select RealPayer,count(*) as countN from ( SELECT * FROM [tally].[dbo].[View_ConRealPayerCount] where cast('{0}' as datetime) <= worktime_end and worktime_end <= cast('{1}' as datetime)) as t group by realpayer) as d on a.RealPayer = d.RealPayer", datepicker.Text+" 18:00:00", datepicker1.Text+" 18:00:00");
            var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.mscb.DataSource = (dt).DefaultView;
            this.DataBind();
        }

    }
}