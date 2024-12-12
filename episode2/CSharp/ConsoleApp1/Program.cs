using System.Data;
using System.Diagnostics;
using System.Net.NetworkInformation;

namespace ConsoleApp1;

class Program
{
    public static void Main()
    {
        int rows = 6;
        int cols = 8;
        int coinChoice = 1;

        Debug.Print("Print 1");
        Debug.Print("Print 2");
        Debug.Print("Print 3");
        
        for(int r = 0; r < rows; ++r)
        {
            Debug.Print("Print 4");
            for(int c = 0; c < cols; ++c)
            {
                if(coinChoice == 0)
                {
                    CreateNewCoin('*');
                }
                else
                {
                    CreateNewCoin('o');
                }
            }
            Console.WriteLine();
        }
    }

    public static void CreateNewCoin(char coinType)
    {
        Console.Write(coinType);
    }
}
