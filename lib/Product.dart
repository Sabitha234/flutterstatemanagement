class Product{
  final String name;
  final String description;
  final int price;
  final String image;
  Product(this.name, this.description, this.price, this.image);

  static List<Product> getProducts(){
    List<Product> items = <Product>[];
    items.add(
        Product(
            'Samsung',
            'SAMSUNG Galaxy A23 5G (Black, 128 GB)  (8 GB RAM)',
            25000,
            '1.png'
        )
    );
    items.add(
        Product(
            'One Plus',
            'Oneplus Nord 8GB/128GB 6.44',
            29000,
            '2.png'
        )
    );
    items.add(
        Product(
            'Oppo',
            'Oppo A57 (Glowing Green, 4GB RAM, 64 Storage)',
            25000,
            '3.png'
        )
    );
    items.add(
        Product(
            'Apple',
            'Apple iPhone 13 256 GB (Midnight, 4 GB RAM)',
            80000,
            '4.png'
        )
    );
    return items;
  }
}