using System;
using System.Collections.Generic;   // Used for the `List<double> grades` type

namespace GradeBook {
    class Program {
        static void Main(string[] args){ // This is a method called "Main"
                                        // It also accepts an argument "arg" which is an array of strings (array due to brackets)

            var varBook = new Book("My Grade Book");    // This is referencing the class named "Book" in file "Book.cs". To not have errors, the class must exist (even if it's empty)
            varBook.AddGrade(10.92);
            varBook.AddGrade(25.0);
            varBook.AddGrade(42.2);
            varBook.AddGrade(98.52);
            //varBook.lisGrades.Add(101);   // This will only work if the field named "lisGrades" in Book.cs is set to 'public' access, not private
            var stats = varBook.GetStatistics();

            double varX = 12.3;
            double varY = 32.1;
            double varMath = varX + varY;
            Console.WriteLine(varMath);
            double[] arrGrades = new double[] {87.2, 56.1, 123, 45.78};  // The [] create an empty array
            //    arrGrades[2] = 789; // Insert a new value into the array.
/*             List<double> lisGrades = new List<double>();    // Call in a namespace that will allow for an unknown/infinite array of doubles named 'grades'
                                                        // You may also use brackets to kickoff the array with content: {1, 2, 3, 4, };
                lisGrades.Add(46.1);  // Insert value into List named 'lisGrades'
                lisGrades.Add(87.0);
*/
            if(args.Length > 0){ // Check if the argument has any characters in it (to make sure not empty)
                Console.WriteLine("Hello there " + args[0] + ", these are concat. text strings!");
                Console.WriteLine($"Hello there {args[0]} this is an expression");
                Console.WriteLine($"You have ${varMath} in your pocket!");
            } else {
                Console.WriteLine("Hey...GIMME AN ARGUMENT!");
            }
        }
    }
}
