using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
         NameLabel.Text = "Name: " + Nametextbox.Text.ToString();
        CardTypeLabel.Text = "Card Type: " + CardTypedropdownlist.SelectedValue.ToString();
        ExpirationLabel.Text = "Exp Date: " + ExpireCalendar.SelectedDate.ToShortDateString();
    }
    protected void Nametextbox_TextChanged(object sender, EventArgs e)
    {

    }
}