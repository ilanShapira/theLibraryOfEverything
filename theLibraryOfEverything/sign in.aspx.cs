using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using theLibraryOfEverything.DataSet1TableAdapters;

namespace theLibraryOfEverything
{
    public partial class sign_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit(object sender, EventArgs e)
        {
            TableTableAdapter adapter = new TableTableAdapter();
            if (adapter.CheckUserPassword(userName.Text, password.Text) != 0)
            {
                Session["username"] = userName.Text;
                Response.Redirect("main page.aspx");
            }
            else
                updateText("usernmae or password is incorrect", Color.Red);
        }
        void updateText(string text, Color color)
        {
            errorMessage.ForeColor = color;
            errorMessage.Text = text;
        }
    }
}