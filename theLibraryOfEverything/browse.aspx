<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="browse.aspx.cs" Inherits="theLibraryOfEverything.browse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>browse</title>
    <style>
        body {
            background-color: #000e17;
            overflow: hidden;
        }

        .vignette {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            background: radial-gradient(circle, transparent, rgba(0, 0, 0, 0.7));
        }
        .resultText{
            position: absolute;
            top: 10%;
            left: 30%;
            color: white;
            font-size: 17px;
            width: 900px;
            overflow: hidden;
            font-family: "Courier New", Courier, monospace;
            text-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4;
        }
        p{
            color: white;
            text-shadow: 0 0 0 blue;
            font-family: "Courier New", Courier, monospace;
            text-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4;
        }
        #textBoxes{
            position: absolute;
            top: 3%;
            left: 3%;
        }
        .textbox{
            border-radius: 15px;
            background-color: transparent;
            box-shadow: 0 0 0 yellow;
            border-color: yellow;
            color: white;
            text-shadow: 0 0 0 blue;
            font-family: "Courier New", Courier, monospace;
            text-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4;
            box-shadow: 0 0 5px white, 0 0 10px yellow;
        }
        .button{
            border-radius: 15px;
            background-color: transparent;
            box-shadow: 0 0 0 yellow;
            border-color: yellow;
            color: white;
            text-shadow: 0 0 0 blue;
            font-family: "Courier New", Courier, monospace;
            text-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4;
            box-shadow: 0 0 5px white, 0 0 10px yellow;
        }
        #hostileMessege{
            position: absolute;
            top: 10%;
            left: 35%;
        }
        img {
            border-radius: 15px;
            box-shadow: 0 0 10px white, 0 0 30px #03bcf4;
        }
        a{
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="vignette"></div>
            <asp:Label ID="resultText" CssClass="resultText" runat="server" Text="hi"></asp:Label>

            <div id="textBoxes" runat="server">
                <p>aisle:</p>
                <asp:TextBox ID="aisley" runat="server" TextMode="Number" Text="1" CssClass="textbox" OnTextChanged="onSearch"></asp:TextBox>
                <p>wall (1-4):</p>
                <asp:TextBox ID="walle" runat="server" TextMode="Number" Text="1" CssClass="textbox" OnTextChanged="onSearch"></asp:TextBox>
                <p>shelf (1-5):</p>
                <asp:TextBox ID="shelfy" runat="server" TextMode="Number" Text="1" CssClass="textbox" OnTextChanged="onSearch"></asp:TextBox>
                <p>volume (1-32):</p>
                <asp:TextBox ID="volumey" runat="server" TextMode="Number" Text="1" CssClass="textbox" OnTextChanged="onSearch"></asp:TextBox>
                <p>page(1-410):</p>
                <asp:TextBox ID="pagey" runat="server" TextMode="Number" Text="1" CssClass="textbox" OnTextChanged="onSearch"></asp:TextBox>
                <p>______________________</p>
                <p>other options:</p>
                <asp:Button ID="random" runat="server" Text="i feel lucky!" OnClick="randomSeed" CssClass="button"/>
                <p>press Ctrl + F to search in this page</p>
            </div>
            <div id="hostileMessege" runat="server">
                <img src="images/3bovka.jpg" />
                <p style="font-size: 25px"><a href="sign up.aspx">sign up</a> or jump down</p>
                <p style="font-size: 25px"><a href="sign in.aspx">sign in</a> or get out</p>
            </div>
        </div>
    </form>
</body>
</html>
