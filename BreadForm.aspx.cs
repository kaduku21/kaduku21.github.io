using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BreadAppForm
{
    public partial class BreadForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void finalWaterWeight_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            decimal flourWeight = Convert.ToDecimal(txtflourWeight.Text);
            decimal waterPercent = ((Convert.ToDecimal(txtwaterPercent.Text) / 100) * flourWeight) ;
            decimal saltPercent = (Convert.ToDecimal(txtSaltPercent.Text) / 100) * flourWeight;
            decimal starterWeight = (Convert.ToDecimal(txtStarterPercent.Text) / 100) * flourWeight;

            txtflourWeight2.Text = txtflourWeight.Text;
            txtfinalWaterWeight.Text = Convert.ToString(waterPercent);
            txtFinalSaltWeight.Text = Convert.ToString(saltPercent);
            txtFinalStarterWeight.Text = Convert.ToString(starterWeight);
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtflourWeight.Text = "";
            txtwaterPercent.Text = "";
            txtSaltPercent.Text = "";
            txtStarterPercent.Text = "";
            txtflourWeight2.Text = "";
            txtfinalWaterWeight.Text = "";
            txtFinalSaltWeight.Text = "";
            txtFinalStarterWeight.Text = "";
        }
    }
}