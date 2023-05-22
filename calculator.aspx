<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="LoanCalculator.calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LoanCalculator</title>
    <link href="Content/bootstrap-grid.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-grid.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <asp:Image ID="imgleanfinancial" runat="server"  src="leanfinanciallimited.png" height="90px"/>
            </div><br />
            <asp:Label ID="lblCurrenttime" runat="server" Text=""></asp:Label><br /><hr />
            <!--UPFRONT FEES REQUIRED-->
            <asp:Label ID="lblloanPRate" runat="server" Text="loan Processing Fee: 3% * Pricipal Amount"></asp:Label><br />

            <asp:Label ID="lblCreditLRate" runat="server" Text="Credit Life Insuarance : 4% * Principal Amount"></asp:Label><br />

            <asp:Label ID="lblCRB" runat="server" Text="CRB Fee = 500/="></asp:Label><br />

            <asp:Label ID="lblTranferFee" runat="server" Text="Transfer Fee = 1000/="></asp:Label><br />

            <asp:Label ID="lblTracking" runat="server" Text="Tracking(installation + 1st Month tracking Fee) = 5000/="></asp:Label><br />

            <asp:Label ID="lblAdvocateColateralRegistration" runat="server" Text="Advocate & collateral Registration = 1500/="></asp:Label><br />
            <hr />

            <!--INPUTS REQUIRED BY SYTEM FROM THE USER-->
            <!--principal amount-->
            <asp:Label ID="lblprincipalamount" runat="server" Text="Principal Amount:"></asp:Label><br />
           
            <asp:TextBox ID="txtPrincipalAmount" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="/="></asp:Label><br />
            <!--Borrowers name-->
            <asp:Label ID="lblBorrowersName" runat="server" Text="Name:"></asp:Label><br />
            
            <asp:TextBox ID="txtBorrowersNmae" runat="server" CssClass="form-control"></asp:TextBox><br />
            <!--National ID-->
            <asp:Label ID="lblNatonalid" runat="server" Text="ID no:"></asp:Label><br />
            
            <asp:TextBox ID="txtId" runat="server" CssClass="form-control"></asp:TextBox><br />
            <!--signature-->
            <asp:Label ID="lblSignatureDAte" runat="server" Text="Signature"></asp:Label><br />
            <textarea id="TextArea1" cols="29" rows="5"></textarea><br />
            <!--Date-->
            <!--<asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label><br />-->

            <!--interest rate-->
            <asp:Label ID="lblinterest" runat="server" Text="Interest"></asp:Label><br />
            <asp:TextBox ID="txtinterest" runat="server" CssClass="form-control"></asp:TextBox><br />%

            <!--PERIOD IN MONTHS-->
            <asp:Label ID="lblperiod" runat="server" Text="Period--[months]"></asp:Label><br />
  
            <asp:TextBox ID="txtPeriod" runat="server" CssClass="form-control"></asp:TextBox><br />
            <!--SUBMIT BUTTON-->
            <asp:Button ID="BtnCalculate" runat="server" Text="CALCULATE" OnClick="BtnCalculate_Click" /><br />
            <!--CONVERT TO PDF-->

            <asp:Panel ID="Panel1" runat="server">
             <p id="ctrlprint">C L I C K ---- CTRL+P on keyboard to print</p><br />
            </asp:Panel>
            <hr />



            <!--CALCULATED outputs BY THE LOAN CALCULATOR-->
            <asp:Label ID="lblUpfrontFee" runat="server" Text="Up Front Fee:"></asp:Label>
             <asp:Label ID="Label3" runat="server" Text="ksh."></asp:Label>
            <asp:Label ID="lblCalculatedUpfrontFee" runat="server" Text=""></asp:Label><br />

            <asp:Label ID="lblCreditLifeInsarance" runat="server" Text="Credit Life Insuarance:"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="ksh."></asp:Label>
            <asp:Label ID="lblCalculatedCreditLifeInsarance" runat="server" Text=""></asp:Label><br />
            
            <asp:Label ID="LblLoanPFee" runat="server" Text="Loan Processing Fee:"></asp:Label>
             <asp:Label ID="Label4" runat="server" Text="ksh."></asp:Label>
            <asp:Label ID="LblCalculatedLoanPFee" runat="server" Text=""></asp:Label><br />

            <asp:Label ID="lblNetPayable" runat="server" Text="Net Payable Amount:"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="ksh."></asp:Label>
            <asp:Label ID="lblCalculatedNetPayable" runat="server" Text=""></asp:Label><br />

            <asp:Label ID="lblmonths" runat="server" Text="Months(period}:"></asp:Label>
            <asp:Label ID="lblDisplayedmonths" runat="server" Text=""></asp:Label><br />

            <asp:Label ID="lblFirstMonthlyInstalment" runat="server" Text="First Monthly Instalment:"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text="ksh."></asp:Label>
            <asp:Label ID="lblCalculatedFirstMonthlyInstalment" runat="server" Text=""></asp:Label><br />

            <asp:Label ID="lblOthermonthsInstalment" runat="server" Text="Other Monthly instalment:"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="ksh."></asp:Label>
            <asp:Label ID="lblCalculatedOthermonthsInstalment" runat="server" Text=""></asp:Label><br />
            <hr />
            <p>lean financial &copy Limited</p><br/><hr />

            <!--displayed outputs-->
            <asp:Label ID="lbldisplayedName" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lbldisplayedddate" runat="server" Text=""></asp:Label><br />
            

        </div>
    </form>
</body>
</html>
