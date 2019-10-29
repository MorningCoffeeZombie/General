using System;
using Xunit;

namespace GradeBook.Tests
{
    public class BookTests
    {
        [Fact]
        public void BookCalculatesAnAverageGrade()
        {
            // ARRANGE
            var book = new Book("");
            book.AddGrade(89.1);
            book.AddGrade(90.5);
            book.AddGrade(77.3);

            // ACT
           var varResult = book.GetStatistics();
           
            // ASSERT
            Assert.Equal(85.6, varResult.Average, 1);   // The last argument is the 'precision'... how many decimals to expect/analyze
            Assert.Equal(90.5,varResult.High, 1);
            Assert.Equal(77.3,varResult.Low, 1);
        }
    }
}
