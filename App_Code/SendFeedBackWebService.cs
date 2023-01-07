using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for SendFeedBackWebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class SendFeedBackWebService : System.Web.Services.WebService
{

    public SendFeedBackWebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }
    [WebMethod]
    public string SendEmail(string name, string mobile, string email, string Location, string enqFor)
    {
        string msg = string.Empty;
        try
        {
            using (MailMessage mm = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], email))
            {
                mm.Subject = "Tbl-Space enquire...";
                mm.Body = "Dear" + "&nbsp;&nbsp;" + name + "<br/>" + "Greetings !" + "<br/><br/>" + " <p>Thank you for your trust, and your confidence with us." +
                    " It is our pleasure to get back to you soon. </p>" + "<br/><br><br/><br/>" + "<b> Warm Regards</b>"
                    + "<br/>" + "<b>Team TBL<b>";
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = true;

                NetworkCredential NetworkCred = new NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
                smtp.UseDefaultCredentials = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]);
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);

            }
            using (MailMessage mm = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], "tbl.workspaces@gmail.com"))
            {
                mm.Subject = "TBL Space enquiry details...";
                mm.Body = EmailFeedback(name, mobile, email, Location, enqFor);
                mm.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = true;

                NetworkCredential NetworkCred = new NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
                smtp.UseDefaultCredentials = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]);
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
            msg = "ok";
        }
        catch (Exception ex)
        {

            msg = "err";
        }
        return msg;
    }
    
    private string EmailFeedback(string name, string mob, string email, string Location, string enq)
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/ItemTemplate1.html")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("{Name}", name); //replacing Parameters

        body = body.Replace("{Mobile}", mob);

        body = body.Replace("{Email}", email);

        body = body.Replace("{Location}", Location);

        body = body.Replace("{Enquiry For}", enq);


        return body;
    }
    [WebMethod]
    public string SendEmail1(string YourName, string MobileNo, string YourEmail, string YourCity, string Writeyourrequirement)
    {
        string msg = string.Empty;
        try
        {
            using (MailMessage mm = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], YourEmail))
            {
                mm.Subject = "Tbl-Space enquire...";
                mm.Body = "Dear" + "&nbsp;&nbsp;" + YourName + "<br/>" + "Greetings !" + "<br/><br/>" + " <p>Thank you for your trust, and your confidence with us." +
                    " It is our pleasure to get back to you soon. </p>" + "<br/><br><br/><br/>" + "<b> Warm Regards</b>"
                    + "<br/>" + "<b>Team TBL<b>";
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = true;

                NetworkCredential NetworkCred = new NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
                smtp.UseDefaultCredentials = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]);
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);

            }
            using (MailMessage mm = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], "tbl.workspaces@gmail.com"))
            {
                mm.Subject = "TBL Space enquiry details...";
                mm.Body = EmailFeedback1(YourName, MobileNo, YourEmail, YourCity, Writeyourrequirement);
                mm.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = true;

                NetworkCredential NetworkCred = new NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
                smtp.UseDefaultCredentials = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]);
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
            msg = "ok";
        }
        catch (Exception ex)
        {

            msg = "err";
        }
        return msg;
    }
    private string EmailFeedback1(string YourName, string MobileNo, string YourEmail, string YourCity, string Writeyourrequirement)
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/ItemTemplate2.html")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("{YourName}", YourName); //replacing Parameters

        body = body.Replace("{MobileNo}", MobileNo);

        body = body.Replace("{YourEmail}", YourEmail);
        body = body.Replace("{YourCity}", YourCity);
        body = body.Replace("{Writeyourrequirement}", Writeyourrequirement);


        return body;
    }
    [WebMethod]
    public string SendEmail2(string YourName, string MobileNo, string YourEmail, string YourCity, string YourIndustries , string YourOfficeSize)
    {
        string msg = string.Empty;
        try
        {
            using (MailMessage mm = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], YourEmail))
            {
                mm.Subject = "Tbl-Space enquire...";
                mm.Body = "Dear"+ "&nbsp;&nbsp;" + YourName + "<br/>" + "Greetings !" + "<br/><br/>"  +" <p>Thank you for your trusts, and your confidence with us." +
                    " It is our pleasure to get back to you soon. </p>" + "<br/><br><br/><br/>" + "<b> Warm Regards</b>" +"<br/>" +"<b>Team TBL<b>";
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = true;

                NetworkCredential NetworkCred = new NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
                smtp.UseDefaultCredentials = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]);
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);

            }
            using (MailMessage mm = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], "tbl.workspaces@gmail.com"))
            {
                mm.Subject = "User Enquiry  Detail";
                mm.Body = EmailFeedback2(YourName, MobileNo, YourEmail, YourCity, YourIndustries , YourOfficeSize);
                mm.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = true;

                NetworkCredential NetworkCred = new NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
                smtp.UseDefaultCredentials = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]);
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
            msg = "ok";
        }
        catch (Exception ex)
        {

            msg = "err";
        }
        return msg;
    }
    private string EmailFeedback2(string YourName, string MobileNo, string YourEmail, string YourCity, string YourIndustries , string  YourOfficeSize )
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/ItemTemplate3.html")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("{YourName}", YourName); //replacing Parameters

        body = body.Replace("{MobileNo}", MobileNo);

        body = body.Replace("{YourEmail}", YourEmail);
        body = body.Replace("{YourCity}", YourCity);
        body = body.Replace("{YourIndustries}", YourIndustries );
        body = body.Replace("{YourOfficeSize}", YourOfficeSize);


        return body;
    }


    [WebMethod]
    public string SendEmail4(string YourName, string MobileNo, string YourEmail)
    {
        string msg = string.Empty;
        try
        {
            using (MailMessage mm = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], YourEmail))
            {
                mm.Subject = "Tbl-Space enquire...";
                mm.Body = "Dear" + "&nbsp;&nbsp;" + YourName + "<br/>" + "Greetings !" + "<br/><br/>" + " <p>Thank you for your trusts, and your confidence with us." +
                    " It is our pleasure to get back to you soon. </p>" + "<br/><br><br/><br/>" + "<b> Warm Regards</b>" + "<br/>" + "<b>Team TBL<b>";
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = true;

                NetworkCredential NetworkCred = new NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
                smtp.UseDefaultCredentials = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]);
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);

            }
            using (MailMessage mm = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], "tbl.workspaces@gmail.com"))
            {
                mm.Subject = "User Enquiry  Detail";
                mm.Body = EmailFeedback4(YourName, MobileNo, YourEmail);
                mm.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = true;

                NetworkCredential NetworkCred = new NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
                smtp.UseDefaultCredentials = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]);
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
            msg = "ok";
        }
        catch (Exception ex)
        {

            msg = "err";
        }
        return msg;
    }
    private string EmailFeedback4(string YourName, string MobileNo, string YourEmail)
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/ItemTemplate4.html")))
        {

            body = reader.ReadToEnd();

        }

        body = body.Replace("{YourName}", YourName); //replacing Parameters

        body = body.Replace("{MobileNo}", MobileNo);

        body = body.Replace("{YourEmail}", YourEmail);
       


        return body;
    }


}


