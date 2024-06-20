using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace theLibraryOfEverything
{
    public partial class browse : System.Web.UI.Page
    {
        protected void randomSeed(object sender, EventArgs e)
        {
            Random random = new Random();
            aisley.Text = random.Next(1, int.MaxValue).ToString();
            walle.Text = random.Next(1, maxWalls + 1).ToString();
            shelfy.Text = random.Next(1, maxShelves + 1).ToString();
            volumey.Text = random.Next(1, maxVolumes + 1).ToString();
            pagey.Text = random.Next(1, maxPages + 1).ToString();

            resultText.Text = SearchByAddress();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                textBoxes.Visible = false;
                resultText.Visible = false;
                hostileMessege.Visible = true;
            }
            else
            {
                hostileMessege.Visible = false;
                resultText.Text = SearchByAddress();
            }
        }
        const string charset = "abcdefghijklmnopqrstuvwxyz ,.";
        const int charsetLength = 29;
        const int maxPageContentLength = 3200;
        const int maxWalls = 4;
        const int maxShelves = 5;
        const int maxVolumes = 32;
        const int maxPages = 410;


        protected void onSearch(object sender, EventArgs e)
        {
            resultText.Text = SearchByAddress();
        }
        public string SearchByAddress()
        {
            string aisle = aisley.Text;
            string wall = walle.Text;
            string shelf = shelfy.Text  ;
            string volume = volumey.Text;
            string page = pagey.Text;
            int libraryCoordinate = int.Parse(page + volume + shelf + wall);

            long seed = Convert.ToInt64(aisle, 10) - libraryCoordinate * (long)Math.Pow(charsetLength, maxPageContentLength);
            long hexagonBaseResult = long.Parse(ConvertToBase(seed, 10));
            string result = ConvertToBase(hexagonBaseResult, charsetLength);

            if (result.Length < maxPageContentLength)
            {
                Random random = new Random((int)seed);
                while (result.Length < maxPageContentLength)
                {
                    result += charset[random.Next(charsetLength)];
                }
            }
            else if (result.Length > maxPageContentLength)
            {
                result = result.Substring(result.Length - maxPageContentLength);
            }
            return result;
        }

        private static string ConvertToBase(long x, int baseValue)
        {
            string digits = baseValue == 36 ? "0123456789abcdefghijklmnopqrstuvwxyz" :
                            baseValue == 10 ? "0123456789" : charset;

            if (x < 0)
            {
                return ConvertToBase(Math.Abs(x), baseValue);
            }
            else if (x == 0)
            {
                return digits[0].ToString();
            }

            StringBuilder chars = new StringBuilder();
            while (x > 0)
            {
                chars.Insert(0, digits[(int)(x % baseValue)]);
                x /= baseValue;
            }

            return chars.ToString();
        }
    }
}