﻿using System;

using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;
using System.Net;
using System.Drawing;
using System.IO;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void EmailFeedback()
    {

        string to = "tbl.workspaces@gmail.com"; //To address    
        string from = "tays.noreply@gmail.com"; //From address    
        MailMessage message = new MailMessage(from, to);

        //string msg ="TBL Enquiry" <br/><br/> " + txtmobile.Text + "\n"+"Email: " + txtemail.Text + "\n"+"Company: " + txturl.Text + "\n"+"State: " + txtstate.Text + "\n"+"City: " + txtcity.Text + "\n"+ "Message: \n" + txtmessage.Text + "\n";
        string msg = "Name: " + txtname.Text + "<br/><br/>Mobile: " + txtmobile.Text + "<br/><br/>Email: " + txtemail.Text +
           "<br/><br/>Location: <br/>" + DropDownList1.Text + "<br/><br/>Message: <br/>" + txtmessage.Text;
        string mailbody = msg.ToString();//Massage Body
        message.Subject = "TBL Spaces Enquiry";// Subject 
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
        System.Net.NetworkCredential basicCredential1 = new
        System.Net.NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;
        client.Credentials = basicCredential1;
        try
        {
            client.Send(message);
            lblMessage.Text = "Send Mail Sucessfully";
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "alertMessage", "alert('Thank You for Your Inquiry, Our team will contact you soon ! ');", true);
            //ScriptManager.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);

        }

        catch (Exception ex)
        {
            lblMessage.Text = ex.ToString();
        }
    }
    private void EmailFeedback1()
    {

        string to = "tbl.workspaces@gmail.com"; //To address    
        string from = "tays.noreply@gmail.com"; //From address    
        MailMessage message = new MailMessage(from, to);

        //string msg ="TBL Enquiry" <br/><br/> " + txtmobile.Text + "\n"+"Email: " + txtemail.Text + "\n"+"Company: " + txturl.Text + "\n"+"State: " + txtstate.Text + "\n"+"City: " + txtcity.Text + "\n"+ "Message: \n" + txtmessage.Text + "\n";
        string msg = "Name: " + txtname1.Text + "<br/><br/>Mobile: " + txtmobile1.Text + "<br/><br/>Email: " + txtemail1.Text + "<br/><br/>City: <br/>" + txtcity.Text + "<br/><br/>Message: <br/>" + txtmessage1.Text;
        string mailbody = msg.ToString();//Massage Body
        message.Subject = "TBL Spaces Enquiry";// Subject 
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
        System.Net.NetworkCredential basicCredential1 = new
        System.Net.NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;
        client.Credentials = basicCredential1;
        try
        {
            client.Send(message);
            lblMessage.Text = "Send Mail Sucessfully";
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "alertMessage", "alert('Thank You for Your Inquiry, Our team will contact you soon ! ');", true);
            //ScriptManager.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);

        }

        catch (Exception ex)
        {
            lblMessage.Text = ex.ToString();
        }
    }

    private void EmailFeedback2()
    {
        string to = "tbl.workspaces@gmail.com"; //To address  
        string from = "tays.noreply@gmail.com"; //From address    
        MailMessage message = new MailMessage(from, to);

        //string msg ="TBL Enquiry" <br/><br/> " + txtmobile.Text + "\n"+"Email: " + txtemail.Text + "\n"+"Company: " + txturl.Text + "\n"+"State: " + txtstate.Text + "\n"+"City: " + txtcity.Text + "\n"+ "Message: \n" + txtmessage.Text + "\n";
        string msg = "Name: " + txtname2.Text + "<br/><br/>Mobile: " + txtmobile2.Text + "<br/><br/>Email: " + txtemail2.Text +
             "<br/><br/>Industries: <br/>" + txtindustries.Text + "<br/><br/>Office Size: <br/>" + txtofficesize.Text;
        string mailbody = msg.ToString();//Massage Body
        message.Subject = "TBL Spaces Enquiry";// Subject 
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
        System.Net.NetworkCredential basicCredential1 = new
        System.Net.NetworkCredential("tays.noreply@gmail.com", "lxnpjttzkvyfnger");
        client.EnableSsl = true;
        client.UseDefaultCredentials = true;
        client.Credentials = basicCredential1;
        try
        {
            client.Send(message);
            lblMessage.Text = "Send Mail Sucessfully";
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "alertMessage", "alert('Thank You for Your Enquiry, Our team will contact you soon ! ');", true);
            //ScriptManager.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);

        }

        catch (Exception ex)
        {
            lblMessage.Text = ex.ToString();
        }
    }

    private void Clear()
    {

        txtname.Text = string.Empty;
        txtemail.Text = string.Empty;
        txtmobile.Text = string.Empty;
        DropDownList1.Text = string.Empty;
        txtmessage.Text = string.Empty;
    }

    private void Clear1()
    {

        txtname1.Text = string.Empty;
        txtemail1.Text = string.Empty;
        txtmobile1.Text = string.Empty;
        txtcity.Text = string.Empty;
        txtmessage1.Text = string.Empty;
    }
    private void Clear2()
    {

        txtname2.Text = string.Empty;
        txtemail2.Text = string.Empty;
        txtmobile2.Text = string.Empty;
        txtcity2.Text = string.Empty;
        txtindustries.Text = string.Empty;
        txtofficesize.Text = string.Empty;
    }

    protected void SendEmail_Click(object sender, EventArgs e)
    {

        EmailFeedback();

        Clear();
        try
        {
            //here on button click what will done 

            lblMessage.Text = "Thank You for Your Inquiry, Our team will contact you soon !";
            lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
            lblMessage.Visible = true;

        }
        catch (Exception) { }

    }
    protected void SendEmail_Click1(object sender, EventArgs e)
    {

        EmailFeedback1();

        Clear1();
        try
        {
            //here on button click what will done 

            lblMessage1.Text = "Thank You for Your Inquiry, Our team will contact you soon !";
            lblMessage1.ForeColor = System.Drawing.Color.Black;
            lblMessage1.Visible = true;

        }
        catch (Exception) { }

    }
    protected void SendEmail2_Click(object sender, EventArgs e)
    {

        EmailFeedback2();

        Clear2();
        try
        {
            //here on button click what will done 

            lblMessage.Text = "Thank You for Your Enquiry, Our team will contact you soon !";
            lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
            lblMessage.Visible = true;

        }
        catch (Exception) { }

    }
}