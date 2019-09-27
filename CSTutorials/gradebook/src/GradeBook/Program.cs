using System;
using System.Collections.Generic;   // Used for the `List<double> grades` type

namespace GradeBook {
    class Program {
        static void Main(string[] args){ // This is a method called "Main"
                                        // It also accepts an argument "arg" which is an array of strings (array due to brackets)

            var varBook = new Book();    // This is referencing the class named "Book" in file "Book.cs". To not have errors, the class must exist (even if it's empty)
            varBook.AddGrade(1.02);

            double varX = 12.3;
            double varY = 32.1;
            double varMath = varX + varY;
            Console.WriteLine(varMath);
            double[] arrGrades = new double[] {87.2, 56.1, 123, 45.78};  // The [] create an empty array
            //    arrGrades[2] = 789; // Insert a new value into the array.
            List<double> lisGrades = new List<double>();    // Call in a namespace that will allow for an unknown/infinite array of doubles named 'grades'
                                                        // You may also use brackets to kickoff the array with content: {1, 2, 3, 4, };
                lisGrades.Add(46.1);  // Insert value into List named 'lisGrades'
                lisGrades.Add(1.0);
                lisGrades.Add(1337.0);
                lisGrades.Add(15.3);
                lisGrades.Add(16.0);

            double varAnswer = 0;
            foreach(double number in lisGrades){    // Sum all of the values in the arrGrades array
                varAnswer += number;
                Console.WriteLine($"You're at: {varAnswer} foreach. Current number in array is {number}");
            }
            varAnswer /= lisGrades.Count;   // The /= is jus like += but for division. Also the ".Count" allows you to grab the total number of entities in an array/list
            Console.WriteLine($"The average is: {varAnswer}");
            
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
