using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;

namespace LygTallyNBW.News
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //标题
            int id = Convert.ToInt16(Request.Params["ID"]);
            string[] ArrTitle = {"新闻中心","公司新闻","通知公告","联系我们","行业资讯","40周年庆","创优争先","学习资料","外理文苑","美图欣赏","外理状元","外理亮点","工作感悟","学习资料","我的作品","管理启示","安全警示","相关法规","行业新闻","集团新闻","公司简介"};
            Title = ArrTitle[id];
            //新闻
            var sql = string.Format("SELECT * FROM WL_News_Topic WHERE Class_ID = {0} ORDER BY ID DESC",id);
            var dt = new Leo.SqlServer.DataAccess(RegistryKey.KeyPathTally).ExecuteTable(sql);
            this.News.DataSource = dt.DefaultView;
            this.DataBind();
        }

    }
}