using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace enterprise_assignment1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSummary_Click(object sender, EventArgs e)
        {
            //variable declaration
            Decimal gamesWon = 0;
            Decimal gamesLost = 0;
            Decimal winPercent = 0;
            Decimal totalSpectators = 0;
            Decimal averageSpectators = 0;
            int totalPointsScored = 0;
            int totalPointsAllowed = 0;
            int pointDifferential = 0;

            //check all the radio buttons for a win or loss
            if (rblGame1Result.SelectedItem.Text == "Win") {
                gamesWon++;
            }
            else if (rblGame1Result.SelectedItem.Text == "Loss")
            {
                gamesLost++;
            }
            if (rblGame2Result.SelectedItem.Text == "Win")
            {
                gamesWon++;
            }
            else if (rblGame2Result.SelectedItem.Text == "Loss")
            {
                gamesLost++;
            }
            if (rblGame3Result.SelectedItem.Text == "Win")
            {
                gamesWon++;
            }
            else if (rblGame3Result.SelectedItem.Text == "Loss")
            {
                gamesLost++;
            }
            if (rblGame4Result.SelectedItem.Text == "Win")
            {
                gamesWon++;
            }
            else if (rblGame4Result.SelectedItem.Text == "Loss")
            {
                gamesLost++;
            }

            //calculate all the other stats
            totalPointsScored = Convert.ToInt32(txtGame1Scored.Text) + Convert.ToInt32(txtGame2Scored.Text) + Convert.ToInt32(txtGame3Scored.Text) + Convert.ToInt32(txtGame4Scored.Text);
            totalPointsAllowed = Convert.ToInt32(txtGame1Against.Text) + Convert.ToInt32(txtGame2Against.Text) + Convert.ToInt32(txtGame3Against.Text) + Convert.ToInt32(txtGame4Against.Text);
            totalSpectators = Convert.ToInt32(txtGame1Spectators.Text) + Convert.ToInt32(txtGame2Spectators.Text) + Convert.ToInt32(txtGame3Spectators.Text) + Convert.ToInt32(txtGame4Spectators.Text);
            averageSpectators = totalSpectators / 4;
            winPercent = gamesWon / (gamesWon + gamesLost);
            pointDifferential = totalPointsScored - totalPointsAllowed;

            //display the stats
            lblGamesWon.Text = gamesWon.ToString();
            lblGamesLost.Text = gamesLost.ToString();
            lblWinPercent.Text = winPercent.ToString("P");
            lblTotalScored.Text = totalPointsScored.ToString();
            lblTotalAgainst.Text = totalPointsAllowed.ToString();
            lblPointDiff.Text = pointDifferential.ToString();
            lblTotalSpectators.Text = totalSpectators.ToString();
            lblAverageSpectators.Text = averageSpectators.ToString();
        }
    }
}