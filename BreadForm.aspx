<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BreadForm.aspx.cs" Inherits="BreadAppForm.BreadForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Baker's Percentage Application</title>
    <link href="Site.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body class="container">
    <header class="jumbotron text-center">
        <h1>Baker's Percentage Calculator</h1>
    </header>
    <main>
        <form id="form1" runat="server" class="">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="txtFlourWeight">Weight of Flour</label>
                    <asp:TextBox ID="txtflourWeight" runat="server" CssClass="form-control" placeholder="Enter your flour weight"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="txtflourWeight2">Final Flour Weight</label>
                    <asp:TextBox ID="txtflourWeight2" runat="server" ReadOnly="True" CssClass="form-control" TabIndex="-1"></asp:TextBox>
                </div>
                <div class=" form-group col-md-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Flour weight is a required field"
                        ControlToValidate="txtFlourWeight" Display="Dynamic" ForeColor="Red" type="decimal"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-6">
                    <label for="txtWaterPercent">Water Percentage</label>
                    <asp:TextBox ID="txtwaterPercent" CssClass="form-control" placeholder="Enter your desired percentage of water" runat="server"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="txtfinalWaterWeight">Final Water Weight</label>
                    <asp:TextBox ID="txtfinalWaterWeight" CssClass="form-control" runat="server" ReadOnly="true" OnTextChanged="finalWaterWeight_TextChanged" TabIndex="-1"></asp:TextBox>
                </div>
                <div class="form-group col-md-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Desired water percentage is required"
                        ControlToValidate="txtWaterPercent" Display="Dynamic" ForeColor="Red" type="decimal"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter a percentage between 10 and 90" Display="Dynamic"
                        ForeColor="Red" ControlToValidate="txtWaterPercent" MaximumValue="90" MinimumValue="10" Type="integer"></asp:RangeValidator>
                </div>
                <div class="form-group col-md-6">
                    <label for="txtSaltPercent">Salt Percentage</label>
                    <asp:TextBox ID="txtSaltPercent" CssClass="form-control" runat="server" placeholder="Enter your desired percentage of salt"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="txtFinalSaltWeight">Final Salt Weight</label>
                    <asp:TextBox ID="txtFinalSaltWeight" runat="server" CssClass="form-control" ReadOnly="true" TabIndex="-1"></asp:TextBox>
                </div>
                <div class="form-group col-md-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Desired salt percentage is required"
                        Display="Dynamic" ForeColor="Red" ControlToValidate="txtSaltPercent"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Please enter a value between 1 and 100"
                        ForeColor="Red" Display="Dynamic" ControlToValidate="txtSaltPercent" MinimumValue="1" MaximumValue="100" Type="integer"></asp:RangeValidator>
                </div>
                <div class="form-group col-md-6">
                    <label for="txtStarterPercent">Desired yeast or starter percentage</label>
                    <asp:TextBox ID="txtStarterPercent" CssClass="form-control" runat="server" placeholder="Enter desired starter or yeast percentage"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="txtFinalStarterWeight">Final Starter Weight</label>
                    <asp:TextBox ID="txtFinalStarterWeight" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                </div>
                <div class="form-group col-md-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Desired starter percentage is required"
                        Display="Dynamic" ForeColor="Red" ControlToValidate="txtStarterPercent"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Please enter a value between 1 and 100"
                        Display="Dynamic" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer" ControlToValidate="txtStarterPercent"></asp:RangeValidator>
                </div>
                <div class="offset-md-5">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" CssClass="btn btn-primary" OnClick="btnCalculate_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="   Clear   " CssClass="btn btn-danger" OnClick="btnClear_Click" />
                </div>

            </div>
        </form>
    </main>
</body>
</html>
