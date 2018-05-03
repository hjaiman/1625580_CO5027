﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BraceletRastaclats.Admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["ProductID"];
            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/Images/ProductImage/" + filename);

            ImageFileUploadControl.SaveAs(saveLocation);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/list.aspx");
        }
    }
}