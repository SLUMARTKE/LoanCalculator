using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace LoanCalculator
{
    public partial class calculator : System.Web.UI.Page
    {
        double loanPRate = 0.03;
        double creditlifeRate = 0.04;
        double CRB_fee = 500;
        double transferFee = 1000;
        double trackingInFm = 5000;
        double AdvocateColateralReg = 1500;
        double TrackingFees = 2500;
        double interest;//interst need correctin to changing variable

        int Valuationfee = 3050;
        int LogbookSearch = 580;
        int TransferFee = 1175;
        int DiscahrgeFee = 1175;

        protected void Page_Load(object sender, EventArgs e)
        {
            int Upfront = Valuationfee + LogbookSearch + TransferFee + DiscahrgeFee;
            lblCalculatedUpfrontFee.Text = Convert.ToString(Upfront);
            Panel1.Visible = true;
            DateTime currentTime = DateTime.Now;
            lblCurrenttime.Text = currentTime.ToString();

        }

        protected void BtnCalculate_Click(object sender, EventArgs e)
        {   //getting data from the input text boxes
            int period = Convert.ToInt32(txtPeriod.Text);
            int PrincipleAmount = Convert.ToInt32(txtPrincipalAmount.Text);
            int loanProcessinfee = Convert.ToInt32(PrincipleAmount *(loanPRate));
            int creditLifeInsuarance = Convert.ToInt32(PrincipleAmount * creditlifeRate);
            int NetPayable = Convert.ToInt32(PrincipleAmount - (loanProcessinfee+creditLifeInsuarance+CRB_fee+transferFee+trackingInFm+AdvocateColateralReg));
            int grossamount = PrincipleAmount+(PrincipleAmount - NetPayable);//Gross ammount is the GROSS PRINCIPLE amount
            interest = Convert.ToDouble(txtinterest.Text) / 100; //DIVIDE BY A 100% TO GET PERCENTAGE
            int firstmonthinstalment = Convert.ToInt32((grossamount/period)+(grossamount*interest));
            int othermonthsinstalment = firstmonthinstalment +Convert.ToInt32(TrackingFees);
            
           
            
            //displaying
            lblDisplayedmonths.Text = Convert.ToString(period);
            lblCalculatedNetPayable.Text = Convert.ToString(NetPayable);
            LblCalculatedLoanPFee.Text = Convert.ToString(loanProcessinfee);
            lblCalculatedCreditLifeInsarance.Text = Convert.ToString(creditLifeInsuarance);
            lblCalculatedFirstMonthlyInstalment.Text=Convert.ToString(firstmonthinstalment);
            lblCalculatedOthermonthsInstalment.Text=Convert.ToString(othermonthsinstalment);
            lbldisplayedddate.Text=Convert.ToString(DateTime.Now);

            Panel1.Visible = false;

        }
        protected void Btmconvert_Click(object sender, EventArgs e)
        {

        }
    }
}