using System;
using System.Collections.Generic;

namespace GradeBook {

    class Book {
        public Book(){  // This is a constructor. Used for initializing (things) so program doesn't crash from null error (using a var that was never declared).
            lisGrades = new List<double>();
        }

        public void AddGrade(double grade){
            lisGrades.Add(grade);
        }

        List<double> lisGrades; // This isn't inside of the 'void' but is inside of a class so it's called a 'field'. Voids hold local variables, these fields can be used throughtout the script.

    }
}