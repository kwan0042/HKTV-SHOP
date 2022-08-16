using Xunit;
using TVShop.DataAccess;
using System;

namespace XUnitTest
{
    public class UnitTest1
    {
        [Fact]
        public void CustomerObjectTest()
        {
            //arrange
            var customer = new Customer { CustomerId = 10, Name = "Hello Kitty", Password = "HihiDaniel", Address = "505 Summer", Phone = "613-999-9999", Email = "kkkkkk@kkkk.com" };

            // Act
            customer.Name = "Pokemon";
            var expectedName = "Pokemon";

            //Assert
            Assert.Equal(expectedName, customer.Name);
        }

        [Fact]
        public void InvoiceDateTest()
        {
            //arrange
            var invoice = new Invoice { InvoiceId = 200, CustomerId = 1, ProductId = 2, Quantity = 5, Date = DateTime.Parse("2022-08-30") };
            // Act
            invoice.Date = DateTime.Parse("2022-08-31");
            var expectedDate = DateTime.Parse("2022-08-31"); ;

            //Assert
            Assert.Equal(expectedDate, invoice.Date);
        }
    }
}