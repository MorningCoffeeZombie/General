using System;
using System.Collections.Generic;

namespace GradeBook {

    class Book {
        public Book(string name){  // This is a constructor. Used for initializing (things) so program doesn't crash from null error (using a var that was never declared).
            lisGrades = new List<double>();
            this.name = name;   // The 'this.' is a way to reference the object currently being worked on rather than an outside variable of the same name
        }

        public void AddGrade(double grade){
            lisGrades.Add(grade);
        }

        private List<double> lisGrades; // This isn't inside of the 'void' but is inside of a class so it's called a 'field'. Voids hold local variables, these fields can be used throughtout the script.
        private string name;

    }
}