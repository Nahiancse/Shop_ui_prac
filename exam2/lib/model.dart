class Model {
  String? img;
  String? name;
  String? description;
  double? price;

  Model({this.name, this.img, this.price, this.description});
}

List<Model> myList = [
  Model(
    description: "This is a Headphone ",
    price: 500,
    img:
        "https://static.bhphoto.com/images/images345x345/1563277548_1491631.jpg",
    name: "AKG Wireless Headphones",
  ),
  Model(
    description: "This is a Headphone ",
    price: 500.00,
    img:
        "https://static.bhphoto.com/images/images345x345/1563277548_1491631.jpg",
    name: "AKG Wireless Headphones",
  ),
  Model(
    description: "This is a Phone ",
    price: 25000.00,
    img:
        "https://media.istockphoto.com/photos/woman-demonstrating-modern-smartphone-with-blank-white-screen-picture-id1174433187?k=20&m=1174433187&s=612x612&w=0&h=Uj0lj-iZAIcBe1Gxg5-C7u0DCeasTdP3J7_LrepRcKQ=",
    name: "Phone",
  ),
];
