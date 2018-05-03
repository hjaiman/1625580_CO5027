using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BraceletRastaclats.Admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["ProductID"];
            string filename = productId + ".jpg";

            currentImage.ImageUrl = "~/Images/ProductImage/" + filename;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/list.aspx");
        }
    }
    }
