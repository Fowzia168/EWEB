<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RECOVER PASSWORD</title>
    
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <%--for nav bar etc--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
    <%--for icons--%>



    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">
    </script>
    <script src="js/bootstrap.min.js"></script>
    <%--for dropdown--%>
    <link rel="stylesheet" href="css/recover.css" />
    

</head>
<body>
    <form id="form1" runat="server">
    <div class="form">
    <div class="title">Welcome</div>
    <div class="subtitle">Let's Reset Your Password!</div>
    <div class="input-container ic1">
        <%--<input id="password" class="input" type="password" placeholder=" " required="password" />--%>
        <asp:TextBox ID="newPassTextbox" CssClass="input"  runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPassTextbox" runat="server" ErrorMessage="Must give" ControlToValidate="newPassTextbox" ForeColor="red"></asp:RequiredFieldValidator>
        <div class="cut"></div>
       
        <label for="newPassTextbox" class="placeholder">New Password</label>
    </div>
    <div class="input-container ic2">
                <asp:TextBox ID="confirmPassTextbox" CssClass="input" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorconfirmPassTextbox" runat="server" ErrorMessage="Must give" ControlToValidate="confirmPassTextbox" ForeColor="red"></asp:RequiredFieldValidator>
<%--        <input id="confirm" class="input" type="password" placeholder=" " required="confirm"/>--%>
           <asp:comparevalidator ID="comparePass" runat="server" errormessage="Please input the same password" ControlToCompare="newPassTextbox" ControlToValidate="confirmPassTextbox" ForeColor="#66FF99"></asp:comparevalidator>

        <div class="cut"></div>
        <label for="confirm" class="placeholder">Confirm New Password</label>
    </div>
    
    <asp:Button ID="Reset" CssClass="submit" runat="server"  Text="Reset" OnClick="Reset_Click" />

</div>
        
    </form>
</body>
</html>
