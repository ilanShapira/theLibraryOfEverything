using System;
using System.Collections.Generic;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.RegularExpressions;
using theLibraryOfEverything.DataSet1TableAdapters;


namespace theLibraryOfEverything
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit(object sender, EventArgs e)
        {
            TableTableAdapter adapter = new TableTableAdapter();
            int num = 0;
            List<string> errorMessages = new List<string>();

            if (string.IsNullOrEmpty(userName.Text))
            {
                num++;
                errorMessages.Add("Username is required.");
            }

            if (string.IsNullOrEmpty(firstName.Text) || !Regex.IsMatch(firstName.Text, @"^[a-zA-Z]+$"))
            {
                num++;
                errorMessages.Add("First name is required and must contain only letters.");
            }

            if (string.IsNullOrEmpty(lastName.Text) || !Regex.IsMatch(lastName.Text, @"^[a-zA-Z]+$"))
            {
                num++;
                errorMessages.Add("Last name is required and must contain only letters.");
            }

            if (string.IsNullOrEmpty(password.Text) || !IsValidPassword(password.Text))
            {
                num++;
                errorMessages.Add("Password is required and must be at least 8 characters long, contain at least one number, and one special character.");
            }

            if (sexChoise.SelectedIndex == -1)
            {
                num++;
                errorMessages.Add("Gender selection is required.");
            }

            if (num > 2)
            {
                updateText("Almost nothing is filled correctly. Please correct the following errors:<br />" + string.Join("<br />", errorMessages), Color.Red);
            }
            else if (num > 0)
            {
                updateText($"You need to correct {num} more field{(num > 1 ? "s" : "")}:<br />" + string.Join("<br />", errorMessages), Color.Red);
            }
            else
            {
                if (adapter.CheckUserExist(userName.Text) == 0)
                {
                    updateText("All fields are filled correctly", Color.Green);
                    Session["username"] = userName.Text;
                    adapter.InsertUser(userName.Text, password.Text);
                }
                else
                {
                    updateText("username already exists", Color.Red);
                }
            }
        }
        bool IsValidPassword(string password)
        {
            if (password.Length < 8)
                return false;

            if (!Regex.IsMatch(password, @"\d"))
                return false;

            return true;
        }
        void updateText(string text, Color color)
        {
            errorMessage.ForeColor = color;
            errorMessage.Text = text;
        }
    }
}