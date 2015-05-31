<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="enterprise_assignment1._default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="well col-sm-12">

            <!-- Game 1 Input -->
            <div class="col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Game 1</h3>
                    </div>
                    <div class="panel-body">
                    
                        <div>
                            <asp:RadioButtonList ID="rblGame1Result" runat="server">
                                <asp:ListItem Text="Win"></asp:ListItem>
                                <asp:ListItem Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    
                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame1Scored" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame1Scored" runat="server" Text="Goals Scored"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" ErrorMessage="Score Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame1Scored" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ErrorMessage="Enter a numeric Score Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="0" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame1Scored" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>                    
                        </div>

                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ErrorMessage="Scores cannot be the same" CssClass="bg-danger text-danger"
                            ControlToCompare="txtGame1Against" ControlToValidate="txtGame1Scored" 
                            Operator="NotEqual" Display="Dynamic">
                        </asp:CompareValidator>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame1Against" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame1Against" runat="server" Text="Goals Against"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" ErrorMessage="Goals Against Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame1Against" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                ErrorMessage="Enter a numeric Goals Against Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="0" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame1Against" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>
                        </div>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame1Spectators" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame1Spectators" runat="server" Text="Spectators"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                runat="server" ErrorMessage="Spectators Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame1Spectators" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                                ErrorMessage="Enter a numeric Spectator Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="1" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame1Spectators" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Game 2 Input -->
            <div class="col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Game 2</h3>
                    </div>
                    <div class="panel-body">
                    
                        <div>
                            <asp:RadioButtonList ID="rblGame2Result" runat="server">
                                <asp:ListItem Text="Win"></asp:ListItem>
                                <asp:ListItem Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame2Scored" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame2Scored" runat="server" Text="Goals Scored"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" ErrorMessage="Score Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame2Scored" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator4" runat="server" 
                                ErrorMessage="Enter a numeric Score Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="0" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame2Scored" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>                    
                        </div>

                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ErrorMessage="Scores cannot be the same" CssClass="bg-danger text-danger"
                            ControlToCompare="txtGame2Against" ControlToValidate="txtGame2Scored" 
                            Operator="NotEqual" Display="Dynamic">
                        </asp:CompareValidator>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame2Against" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame2Against" runat="server" Text="Goals Against"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                                runat="server" ErrorMessage="Goals Against Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame2Against" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator5" runat="server" 
                                ErrorMessage="Enter a numeric Goals Against Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="0" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame2Against" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>
                        </div>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame2Spectators" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame2Spectators" runat="server" Text="Spectators"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                                runat="server" ErrorMessage="Spectators Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame2Spectators" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator6" runat="server" 
                                ErrorMessage="Enter a numeric Spectator Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="1" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame2Spectators" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Game 3 Input -->
            <div class="col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Game 3</h3>
                    </div>
                    <div class="panel-body">
                    
                        <div>
                            <asp:RadioButtonList ID="rblGame3Result" runat="server">
                                <asp:ListItem Text="Win"></asp:ListItem>
                                <asp:ListItem Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame3Scored" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame3Scored" runat="server" Text="Goals Scored"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
                                runat="server" ErrorMessage="Score Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame3Scored" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator7" runat="server" 
                                ErrorMessage="Enter a numeric Score Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="0" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame3Scored" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>                    
                        </div>

                        <asp:CompareValidator ID="CompareValidator3" runat="server" 
                            ErrorMessage="Scores cannot be the same" CssClass="bg-danger text-danger"
                            ControlToCompare="txtGame3Against" ControlToValidate="txtGame3Scored" 
                            Operator="NotEqual" Display="Dynamic">
                        </asp:CompareValidator>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame3Against" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame3Against" runat="server" Text="Goals Against"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                                runat="server" ErrorMessage="Goals Against Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame3Against" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator8" runat="server" 
                                ErrorMessage="Enter a numeric Goals Against Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="0" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame3Against" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>
                        </div>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame3Spectators" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="Label6" runat="server" Text="Spectators"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" 
                                runat="server" ErrorMessage="Spectators Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame3Spectators" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator9" runat="server" 
                                ErrorMessage="Enter a numeric Spectator Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="1" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame3Spectators" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Game 4 Input -->
            <div class="col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Game 4</h3>
                    </div>
                    <div class="panel-body">
                    
                        <div>
                            <asp:RadioButtonList ID="rblGame4Result" runat="server">
                                <asp:ListItem Text="Win"></asp:ListItem>
                                <asp:ListItem Text="Loss"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame4Scored" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame4Scored" runat="server" Text="Goals Scored"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" 
                                runat="server" ErrorMessage="Score Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame4Scored" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator10" runat="server" 
                                ErrorMessage="Enter a numeric Score Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="0" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame4Scored" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>                    
                        </div>

                        <asp:CompareValidator ID="CompareValidator4" runat="server" 
                            ErrorMessage="Scores cannot be the same" CssClass="bg-danger text-danger"
                            ControlToCompare="txtGame4Against" ControlToValidate="txtGame4Scored" 
                            Operator="NotEqual" Display="Dynamic">
                        </asp:CompareValidator>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame4Against" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame4Against" runat="server" Text="Goals Against"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
                                runat="server" ErrorMessage="Goals Against Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame4Against" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator11" runat="server" 
                                ErrorMessage="Enter a numeric Goals Against Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="0" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame4Against" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>
                        </div>

                        <div>
                            <asp:TextBox CssClass="smallTextbox" ID="txtGame4Spectators" runat="server" type="number"></asp:TextBox>
                            <asp:Label ID="lblGame4Spectators" runat="server" Text="Spectators"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
                                runat="server" ErrorMessage="Spectators Required"
                                CssClass="bg-danger text-danger" ControlToValidate="txtGame4Spectators" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator12" runat="server" 
                                ErrorMessage="Enter a numeric Spectator Value Greater than zero"
                                MaximumValue="99999999" MinimumValue="1" CssClass="bg-danger text-danger"
                                ControlToValidate="txtGame4Spectators" Type="Integer" Display="Dynamic">
                            </asp:RangeValidator>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <asp:Button CssClass="summaryButton btn btn-primary btn-lg col-sm-offset-5 col-sm-2" ID="btnSummary" runat="server" Text="Summary" OnClick="btnSummary_Click" />
    </div>

    <div class="row">
        <div class="well col-sm-12">
            <div>
                Games Won: <asp:Label ID="lblGamesWon" runat="server" Text="0"></asp:Label>
            </div>
            <div>
                Games Lost: <asp:Label ID="lblGamesLost" runat="server" Text="0"></asp:Label>
            </div>
            <div>
                Win Percentage: <asp:Label ID="lblWinPercent" runat="server" Text="0"></asp:Label>
            </div>
            <div>
                Total Points Scored: <asp:Label ID="lblTotalScored" runat="server" Text="0"></asp:Label>
            </div>
            <div>
                Total Points Allowed: <asp:Label ID="lblTotalAgainst" runat="server" Text="0"></asp:Label>
            </div>
            <div>
                Point Differential: <asp:Label ID="lblPointDiff" runat="server" Text="0"></asp:Label>
            </div>
            <div>
                Total Spectators: <asp:Label ID="lblTotalSpectators" runat="server" Text="0"></asp:Label>
            </div>
            <div>
                Average Spectators: <asp:Label ID="lblAverageSpectators" runat="server" Text="0"></asp:Label>    
            </div>
        </div>
    </div>
</asp:Content>
