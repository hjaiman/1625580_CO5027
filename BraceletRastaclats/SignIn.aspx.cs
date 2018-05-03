using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BraceletRastaclats
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLoginEmail.Text, TxtLoginPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                litLoginError.Text = "Invalid username or password";
            }
        }

        private void LogUserIn(UserManager<IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["~/SignIn.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["~/SignIn.aspx"]);
            }
            else
            {
                String UserRoles = usermanager.GetRoles(user.Id).FirstOrDefault();
                if (UserRoles.Equals("Admin"))
                {
                    Response.Redirect("~/Admin/list.aspx");
                }
            }
        }
    }
}