using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;
using System.Data;

namespace LygTallyNBW
{
    public partial class index : System.Web.UI.Page
    {
        protected string sql;
        protected DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            //公司新闻-CompanyNews
            sql = "SELECT top 7 * FROM WL_News_Topic WHERE Class_ID = 1 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.CompanyNews.DataSource = dt.DefaultView;
            this.DataBind();
            //通知公告-Notices
            sql = "SELECT top 7 * FROM WL_News_Topic WHERE Class_ID = 2 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.Notices.DataSource = dt.DefaultView;
            this.DataBind();
            //学习资料-Study
            sql = "SELECT top 7 * FROM WL_News_Topic WHERE Class_ID = 14 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.Study.DataSource = dt.DefaultView;
            this.DataBind();
            //安全警示-Safe
            sql = "SELECT top 7 * FROM WL_News_Topic WHERE Class_ID = 17 ORDER BY ID DESC";
            dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.Safe.DataSource = dt.DefaultView;
            this.DataBind();
        }
    }
}