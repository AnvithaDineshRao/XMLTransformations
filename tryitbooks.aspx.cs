using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryItPage
{
    public partial class tryitbooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            /*url for my file : http://www.public.asu.edu/~arao30/Books.xml" */
            string url=TextBox1.Text.ToString();
            System.Diagnostics.Process.Start(url);
        }
    }
}
 