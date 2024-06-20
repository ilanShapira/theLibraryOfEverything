<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign up.aspx.cs" Inherits="theLibraryOfEverything.sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>sign up</title>
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
            background: radial-gradient(circle, transparent, rgba(0, 0, 0, 0.8));
        }

   #middleRectangle1 {
       background-color: #000e17;
       height: 800px;
       width: 600px;
       position: absolute;
       top: 8%;
       left: 35%;
       z-index: 0;
       border-radius: 50px;
       border-color: white;
       box-shadow: 0 0 10px white, 0 0 30px #03bcf4, 0 0 50px #03bcf4, 0 0 100px #03bcf4;
   }
      #middleRectangle2 {
       background-color: #000e17;
       height: 800px;
       width: 600px;
       position: absolute;
       top: 8%;
       left: 35%;
       z-index: -1;
       border-radius: 50px;
       border-color: white;
       box-shadow: 0 0 10px white, 0 0 30px #03bcf4, 0 0 50px #03bcf4, 0 0 100px #03bcf4;
       transform: rotate(10deg)
       }
       #middleRectangle3 {
       background-color: #000e17;
       height: 800px;
       width: 600px;
       position: absolute;
       top: 8%;
       left: 35%;
       z-index: -2;
       border-radius: 50px;
       border-color: white;
       box-shadow: 0 0 10px white, 0 0 30px #03bcf4, 0 0 50px #03bcf4, 0 0 100px #03bcf4;
       transform: rotate(20deg)
       }
       #middleRectangle4 {
       background-color: #000e17;
       height: 800px;
       width: 600px;
       position: absolute;
       top: 8%;
       left: 35%;
       z-index: -3;
       border-radius: 50px;
       border-color: white;
       box-shadow: 0 0 10px white, 0 0 30px #03bcf4, 0 0 50px #03bcf4, 0 0 100px #03bcf4;
       transform: rotate(30deg)
       }
       #middleRectangle5 {
       background-color: #000e17;
       height: 800px;
       width: 600px;
       position: absolute;
       top: 8%;
       left: 35%;
       z-index: -4;
       border-radius: 50px;
       border-color: white;
       box-shadow: 0 0 10px white, 0 0 30px #03bcf4, 0 0 50px #03bcf4, 0 0 100px #03bcf4;
       transform: rotate(40deg)
       }
       #middleRectangle6 {
       background-color: #000e17;
       height: 800px;
       width: 600px;
       position: absolute;
       top: 8%;
       left: 35%;
       z-index: -5;
       border-radius: 50px;
       border-color: white;
       box-shadow: 0 0 10px white, 0 0 30px #03bcf4, 0 0 50px #03bcf4, 0 0 100px #03bcf4;
       transform: rotate(50deg)
       }
       #middleRectangle7 {
       background-color: #000e17;
       height: 800px;
       width: 600px;
       position: absolute;
       top: 8%;
       left: 35%;
       z-index: -6;
       border-radius: 50px;
       border-color: white;
       box-shadow: 0 0 10px white, 0 0 30px #03bcf4, 0 0 50px #03bcf4, 0 0 100px #03bcf4;
       transform: rotate(60deg)
       }
       #middleRectangle8 {
       background-color: #000e17;
       height: 800px;
       width: 600px;
       position: absolute;
       top: 8%;
       left: 35%;
       z-index: -7;
       border-radius: 50px;
       border-color: white;
       box-shadow: 0 0 10px white, 0 0 30px #03bcf4, 0 0 50px #03bcf4, 0 0 100px #03bcf4;
       transform: rotate(70deg)
       }
       #middleRectangle9 {
       background-color: #000e17;
       height: 800px;
       width: 600px;
       position: absolute;
       top: 8%;
       left: 35%;
       z-index: -8;
       border-radius: 50px;
       border-color: white;
       box-shadow: 0 0 10px white, 0 0 30px #03bcf4, 0 0 50px #03bcf4, 0 0 100px #03bcf4;
       transform: rotate(80deg)
       }


   p {
       color: ghostwhite;
       font-family: "Courier New", Courier, monospace;
       text-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
   }
   #title {
       font-size: 45px;
       color: ghostwhite;
       font-family: "Courier New", Courier, monospace;
       z-index: 1;
       position: absolute;
       top: 2%;
       left: 33%;
   }
   .textBox{
       border-radius: 20px;
       margin-bottom: 3px;
       width: 410px;
       height: 35px;
       background-color: transparent;
       font-size: 17px;
       font-family: "Courier New", Courier, monospace;
       border-color: white;
       box-shadow: 0 0 5px white, 0 0 10px yellow;
   }
   .inputFields {
       display: flex;
       flex-direction: column;
       position: absolute;
       top: 16%;
       left: 16%;
       font-family: "Courier New", Courier, monospace;
   }
   .radioButtonList {
       color: ghostwhite;
       font-family: "Courier New", Courier, monospace;
       text-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
   }
   
   .submitButton{
           border-color: black;
           border-radius: 15px;
           background-color: transparent;
           color: ghostwhite;
           font-family: "Courier New", Courier, monospace;
           font-size: 15px;
           margin-left: 124px;
           margin-top: 80px;
           text-shadow: 0 0 5px white, 0 0 10px yellow;
           box-shadow: 0 0 5px white,0 0 5px lightyellow, 0 0 20px yellow;
           transition: transform .1s ease;
   }
   .submitButton:hover{
       cursor: pointer;
       transform: scale(1.3);
   }
   .circles{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
}

.circles li{
    position: absolute;
    display: block;
    list-style: none;
    width: 20px;
    height: 20px;
    background: rgba(255, 255, 255, 0.2);
    animation: animate 25s linear infinite;
    bottom: -150px;
    
}

.circles li:nth-child(1){
    left: 25%;
    width: 80px;
    height: 80px;
    animation-delay: 0s;
    z-index: -9;
    background-color: transparent;
    box-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}


.circles li:nth-child(2){
    left: 10%;
    width: 20px;
    height: 20px;
    animation-delay: 2s;
    animation-duration: 12s;
    z-index: -9;
    background-color: transparent;
    box-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}

.circles li:nth-child(3){
    left: 70%;
    width: 20px;
    height: 20px;
    animation-delay: 4s;
    z-index: -9;
    background-color: transparent;
    box-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}

.circles li:nth-child(4){
    left: 40%;
    width: 60px;
    height: 60px;
    animation-delay: 0s;
    animation-duration: 18s;
    z-index: -9;
    background-color: transparent;
    box-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}

.circles li:nth-child(5){
    left: 65%;
    width: 20px;
    height: 20px;
    animation-delay: 0s;
    z-index: -9;
    background-color: transparent;
    box-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}

.circles li:nth-child(6){
    left: 75%;
    width: 110px;
    height: 110px;
    animation-delay: 3s;
    z-index: -9;
    background-color: transparent;
    box-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}

.circles li:nth-child(7){
    left: 35%;
    width: 150px;
    height: 150px;
    animation-delay: 7s;
    z-index: -9;
    background-color: transparent;
    box-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}

.circles li:nth-child(8){
    left: 50%;
    width: 25px;
    height: 25px;
    animation-delay: 15s;
    animation-duration: 45s;
    z-index: -9;
    background-color: transparent;
    box-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}

.circles li:nth-child(9){
    left: 20%;
    width: 15px;
    height: 15px;
    animation-delay: 2s;
    animation-duration: 35s;
    z-index: -9;
    background-color: transparent;
    text-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
    z-index: -9;
    background-color: transparent;
    box-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}

.circles li:nth-child(10){
    left: 85%;
    width: 150px;
    height: 150px;
    animation-delay: 0s;
    animation-duration: 11s;
    z-index: -9;
    background-color: transparent;
    box-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}



@keyframes animate {

    0%{
        transform: translateY(0) rotate(0deg);
        opacity: 1;
        border-radius: 0;
    }

    100%{
        transform: translateY(-1000px) rotate(720deg);
        opacity: 0;
        border-radius: 50%;
    }

}
.term {
       color: ghostwhite;
       font-family: "Courier New", Courier, monospace;
       text-shadow: 0 0 10px #03bcf4, 0 0 10px #03bcf4, 0 0 15px #03bcf4;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="vignette"></div>
        <div class="area" >
            <ul class="circles">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
            </ul>
    </div>
        <div>
            <asp:Label ID="errorMessage" runat="server" Width="400px" Height="23px" style="margin-top: 25px; font-family: Courier New, Courier, monospace; font-size: 20px"></asp:Label>
            <div id="middleRectangle1">
                <h1 id="title">sign up</h1>
      <div class="inputFields">
        <div>
            <p>first name:</p>
            <asp:TextBox runat="server" CssClass="textBox" ID="firstName"></asp:TextBox>
        </div>

        <div>
            <p>last name:</p>
            <asp:TextBox runat="server" CssClass="textBox" ID="lastName"></asp:TextBox>
        </div>

        <div>
            <p>username:</p>
            <asp:TextBox runat="server" CssClass="textBox" ID="userName"></asp:TextBox>
        </div>

        <div>
            <p>password:</p>
            <asp:TextBox runat="server" CssClass="textBox" ID="password"></asp:TextBox>
        </div>

        <div>
            <p>sex:</p>
            <asp:RadioButtonList ID="sexChoise" CssClass="radioButtonList" runat="server">
                <asp:ListItem>male</asp:ListItem>
                <asp:ListItem>female</asp:ListItem>
            </asp:RadioButtonList>
        </div>
          <asp:CheckBox ID="notRobot" CssClass="term" runat="server" Text="i am not a robot"/>
          <asp:CheckBox ID="termsOfConditions" CssClass="term" runat="server" Text="i agree to the terms of conditions"/>
        <asp:Button runat="server" Text="submit" OnClick="submit" CssClass="submitButton" ID="submitButton" Height="31px" Width="165px"/>
        </div>
    </div>
             <div id="middleRectangle2"></div>
            <div id="middleRectangle3"></div>
            <div id="middleRectangle4"></div>
            <div id="middleRectangle5"></div>
            <div id="middleRectangle6"></div>
            <div id="middleRectangle7"></div>
            <div id="middleRectangle8"></div>
            <div id="middleRectangle9"></div>
            </div>
        </div>
    </form>
</body>
</html>
