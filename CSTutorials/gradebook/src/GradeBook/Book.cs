using System;
using System.Collections.Generic;

namespace GradeBook {

    public class Book {
        public Book(string name){  // This is a constructor. Used for initializing (things) so program doesn't crash from null error (using a var that was never declared).
            lisGrades = new List<double>();
            this.Name = name;   // The 'this.' is a way to reference the object currently being worked on rather than an outside variable of the same name
        }

        public void AddGrade(double grade){
            lisGrades.Add(grade);
        }

        public Statistics GetStatistics(){
            var varResult = new Statistics();
            varResult.Average = 0.0;
            varResult.High = double.MinValue;
            varResult.Low = double.MaxValue;
            foreach(double grade in lisGrades){    // Sum all of the values in the arrGrades array
                varResult.High = Math.Max(grade, varResult.High);  // Use the Math. command to find the maximum number between the ones listed in the ()
                varResult.Low = Math.Min(grade, varResult.Low);
                varResult.Average += grade;
                Console.WriteLine($"You're at: {varResult} foreach. Current number in array is {grade}");
            }
            varResult.Average /= lisGrades.Count;   // The /= is just like += but for division. Also the ".Count" allows you to grab the total number of entities in an array/list
            //Console.WriteLine($"The average is: {varResult.Average}");
            //Console.WriteLine($"The highest is: {varResult.High}");
            //Console.WriteLine($"The lowest is: {varResult.Low}");
            return varResult;
        }

        private List<double> lisGrades; // This isn't inside of the 'void' but is inside of a class so it's called a 'field'. Voids hold local variables, these fields can be used throughtout the script.
        public string Name;
    }
}