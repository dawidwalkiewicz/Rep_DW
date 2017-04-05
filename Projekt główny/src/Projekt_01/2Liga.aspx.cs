using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekt_01
{
    public partial class _2Liga : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lbID.Text = GridView1.SelectedDataKey.Value.ToString();
            XmlDataSource2.XPath = "/ListaKlubow/Klub[@ID=" + GridView1.SelectedDataKey.Value.ToString() + "]";
        }
    }
}