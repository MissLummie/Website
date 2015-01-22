using System;
namespace ConsoleApplication4
{
    class Program
    {
        public static void Main(string[] args)
        {
            int hours, autoprice;
            double outh, payment;
            Console.WriteLine("You have work for.. hours");
            hours = int.Parse(Console.ReadLine());
            Console.WriteLine("You messed your work for .. hours");
            outh = double.Parse(Console.ReadLine());
            Console.WriteLine("you get a.. shekels per hour");
            autoprice = int.Parse(Console.ReadLine());
            payment=hours*autoprice;
            if (3.5>outh)
            {
                Console.WriteLine("Your payment is: " + 1.1 * payment);
                    Console.ReadKey();
            }
            else
            {
                Console.WriteLine("your payment is: "+payment);
            }
            Console.ReadKey();
        }
    }
}
