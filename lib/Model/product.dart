class Product {
  String imageURL;
  String name;
  double price;
  double rating;
  String about;
  String returnPolicy;

  Product(
      {required this.name,
        required this.rating,
        required this.imageURL,
        required this.price,
        required this.about,
        required this.returnPolicy,
      });
}

Product sampleProduct1 = Product(
    name: 'Umbro SHOES',
    rating: 4,
    price: 150,
    about: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",
    imageURL: "https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/94/612662/1.jpg?4072");
Product sampleProduct2 = Product(
    name: 'ADIDAS Duramo',
    rating: 3,
    price: 200,
    about: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",

    imageURL:
    "https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/81/155982/1.jpg?4039");
Product sampleProduct3 = Product(
    name: 'Diadora Shoes',
    rating: 2,
    price: 350,
    about: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",

    imageURL: "https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/48/707712/1.jpg?0666");
Product sampleProduct4 = Product(
    name: 'White Sneakers',
    rating: 5,
    price: 100,
    about: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",

    imageURL:
    "https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/35/175462/1.jpg?7448");
Product sampleProduct5 = Product(
    name: 'NITRO-2',
    rating: 4.5,
    price: 500,
    about: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",

    imageURL:
    "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1350,h_1350/global/376814/11/sv01/fnd/GLOBAL/fmt/png/Electrify-NITRO-2-Running-Shoes-Men");
Product sampleProduct6 = Product(
    name: 'Nike Dunk',
    rating: 4.5,
    price: 500,
    about: "- Made From High Strength Polyester\n"
        "- 19 Liter Capacity Approximate\n"
        "- Long Shoulder Straps\n"
        "- Water-Resistant 900d Polyester\n",
    returnPolicy: "Free return within 15 days of purchase\n",

    imageURL:
    "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/5b0981ff-45f8-40c3-9372-32430a62aaea/dunk-high-womens-shoes-L3Tqlr.png");

