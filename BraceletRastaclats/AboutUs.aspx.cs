using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BraceletRastaclats
{
    public partial class AboutUs : System.Web.UI.Page
    {


        protected void btnsendemail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("hjaiman1105@gmail.com", "hjaiman1105@gmail.com");
            msg.Subject = txtsubject.Text;
            msg.Body = txtBody.Text;

            //settings sepcific to the mail service, e.g. server location, port number and that ssl is required
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            //create credentials - e.g. username and password for the account
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("hjaiman1105@gmail.com", "aiman1105");
            smtpClient.Credentials = credentials;
 

            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }


        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
    
