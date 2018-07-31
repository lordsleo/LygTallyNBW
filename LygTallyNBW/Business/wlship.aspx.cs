using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Leo;
using System.Text;

namespace LygTallyNBW.Business
{
    public partial class wlship : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //ybcb
            var sql = string.Format("select  ship_id,CHI_VESSEL,NATION_CHA,I_VOYAGE||'/'||O_VOYAGE as voyage,trade,this_draft||'/'||chu_draft as draft,xhmc,xhsl,zhmc,zhsl,yjdg,name from view_sship_tan where SHIP_STATU = 0");
            var dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.ybcb_data.DataSource = (dt).DefaultView;
            //qbcb
            sql = string.Format("select  ship_id,CHI_VESSEL,NATION_CHA,I_VOYAGE||'/'||O_VOYAGE as voyage,trade,this_draft||'/'||chu_draft as draft,xhmc,xhsl,zhmc,zhsl,yjdg,name from view_sship_tan where SHIP_STATU = 7");
            dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.qbcb_data.DataSource = (dt).DefaultView;
            //mdcb
            sql = string.Format("select  ship_id,CHI_VESSEL,NATION_CHA,I_VOYAGE||'/'||O_VOYAGE as voyage,trade,this_draft||'/'||chu_draft as draft,xhmc,xhsl,zhmc,zhsl,yjdg,berthno,name from view_sship_tan where SHIP_STATU = 1");
            dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.mdcb_data.DataSource = (dt).DefaultView;
            //bwcb
            sql = string.Format("select ship_id,berthno,CHI_VESSEL,I_VOYAGE||'/'||O_VOYAGE as voyage,xhmc,xhsl,zhmc,zhsl,BerTH_time,SHIPSTATUS,name,DepartMent from view_sship_tan where  ship_statu=2 or ship_statu=4 or ship_statu=5 or ship_statu=3 order by berthno");
            dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.bwcb_data.DataSource = (dt).DefaultView;
            //hgcb
            sql = string.Format("select ship_id,dqbw||' '||bwwz as bw,CHI_VESSEL,GJ,CZ||'/'||this_draft||'/'||chu_draft as draft,YJJG,YJLG,CBDL,PC,pilotage,remark from ywcplan where hgnh=0 order by px,dqbw,bwwz");
            dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.hgcb_data.DataSource = (dt).DefaultView;
            //hgyb
            sql = string.Format("select ship_id,dqbw||' '||bwwz as bw,CHI_VESSEL,yjyb,ybbw||' '||ybbwwz as ybbw,yblg,pc,remark from  YwcPlanYB where hgnh=0 order by dqbw");
            dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.hgyb_data.DataSource = (dt).DefaultView;
            //ghcb
            sql= string.Format("select  ship_id,dqbw||' '||bwwz as bw,CHI_VESSEL,GJ,CZ||'/'||this_draft||'/'||chu_draft as draft,YJJG,YJLG,CBDL,PC,pilotage,remark from ywcplan where hgnh=25384 or hgnh=25385 order by dqbw ");
            dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.ghcb_data.DataSource = (dt).DefaultView;
            //ghyb
            sql = string.Format("select ship_id,dqbw||' '||bwwz as bw,CHI_VESSEL,yjyb,ybbw||' '||ybbwwz as ybbw,yblg,pc,remark from  YwcPlanYB where hgnh=25384 or hgnh=25385 order by dqbw");
            dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            this.ghyb_data.DataSource = (dt).DefaultView;
            //dinging
            this.DataBind();
            //fbsj
            sql = string.Format("select plandate from ywcplan where hgnh=0 and rownum = 1 order by px,dqbw,bwwz");
            dt = new Leo.Oracle.DataAccess(RegistryKey.KeyPathBase).ExecuteTable(sql);
            fbsj = dt.Rows[0][0].ToString();


        }
        protected string fbsj;

    }
}