using sqlapp.Models;

namespace sqlapp.Services
{
    public interface IProductService
    {
        List<Product> GetProducts();
    }
}