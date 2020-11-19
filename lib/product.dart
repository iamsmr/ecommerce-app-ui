class Product {
  final String title;
  final String subTitle;
  final int price;
  final String description;
  final String image;

  Product({
    this.title,
    this.subTitle,
    this.price,
    this.description,
    this.image,
  });
}

List<Product> products = [
  Product(
    title: "Lnstant Flim",
    price: 900,
    subTitle: "8 photo per pack",
    description: "Color flim for 600 Haze edition",
    image: "https://www.wilkinson.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/p/o/polaroid-originals-film-two-pack.jpg"
  ),
  Product(
    title: "Canon EOS M50",
    price: 900,
    subTitle: "Camera with EF-M ",
    description: "Camera with EF-M 15-45mm f/3.5-6.3 IS STM Zoom Lens ",
    image: "https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6204/6204310_sd.jpg"
  ),
  Product(
    price: 900,
    title: "Lnstant Flim",
    subTitle: "8 photo per pack",
    description: "Color flim for 600 Haze edition",
    image: "https://www.wilkinson.co.uk/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/p/o/polaroid-originals-film-two-pack.jpg"
  ),
];
