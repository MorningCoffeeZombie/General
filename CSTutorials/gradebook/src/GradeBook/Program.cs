using System;
using System.Collections.Generic;   // Used for the `List<double> grades` type

namespace GradeBook {
    class Program {
        static void Main(string[] args){ // This is a method called "Main"
                                        // It also accepts an argument "arg" which is an array of strings (array due to brackets)
            double varX = 12.3;
            double varY = 32.1;
            double varMath = varX + varY;
            Console.WriteLine(varMath);
            double[] arrGrades = new double[] {987, 456, 123};  // The [] create an empty array
            //    arrGrades[2] = 789; // Insert a new value into the array.
            List<double> grades = new List<double>();    // Call in a namespace that will allow for an unknown/infinite array of doubles named 'grades'
                grades.Add(456.1);  // Add to List named 'grades'
            double varAnswer = 0;

            foreach(double number in arrGrades){    // Sum all of the values in the arrGrades array
                varAnswer += number;
                Console.WriteLine($"You're at: {varAnswer}");
            }

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
