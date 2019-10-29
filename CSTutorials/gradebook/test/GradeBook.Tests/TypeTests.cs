using System;
using Xunit;

namespace GradeBook.Tests
{
    public class TypeTests
    {
        [Fact]
        public void CSharpCanPassByRef()
        {
            // ARRANGE
            var varBook1 = GetBook("Book 1");
            GetBookSetName(ref varBook1, "New Name");

            // ACT
                       
            // ASSERT
            Assert.Equal("New Name", varBook1.Name);
        }
        private void GetBookSetName(ref Book book, string name){
            book = new Book(name);
        }

        [Fact]
        public void CSharpIsPassByValue()
        {
            // ARRANGE
            var varBook1 = GetBook("Book 1");
            GetBookSetName(varBook1, "New Name");

            // ACT
                       
            // ASSERT
            Assert.Equal("New Name", varBook1.Name);
        }

        private void GetBookSetName(Book book, string name){
            book = new Book(name);
            //book.Name = name;
        }

        [Fact]
        public void CanSetNameFromReference()
        {
            // ARRANGE
            var varBook1 = GetBook("Book 1");
            SetName(varBook1, "New Name");

            // ACT
                       
            // ASSERT
            Assert.Equal("New Name", varBook1.Name);
        }

        private void SetName(Book book, string name){
            book.Name = name;
        }

        [Fact]
        public void GetBookReturnsDifferentObjects()
        {
            // ARRANGE
            var varBook1 = GetBook("Book 1");
            var varBook2 = GetBook("Book 2");            

            // ACT
                       
            // ASSERT
            Assert.Equal("Book 1", varBook1.Name);
            Assert.Equal("Book 2", varBook2.Name);
        }

        [Fact]
        public void TwoVariablesCanReferenceSameObject()
        {
            // ARRANGE
            var varBook1 = GetBook("Book 1");
            var varBook2 = varBook1;            

            // ACT
            
           
            // ASSERT
            Assert.Same(varBook1, varBook2);    // Assert.Same makes sure the obects are the exact same in their memor locations (eaxt same)
            Assert.True(Object.ReferenceEquals(varBook1, varBook2));    // Another way to check if the books are the same...
        }

        Book GetBook(string name){
            return new Book(name);
        }
    }
}
