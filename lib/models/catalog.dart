class Item {
  final num id;
  final String name;
  final String desc;
  final String color;
  final num price;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.color,
    required this.price,
    required this.image,
  });
}

final products = [
  Item(
    id: 01,
    name: 'Iphone 13 pro ',
    desc: 'Iphone 13th gen',
    color: "#33505a",
    price: 999,
    image: "https://m.media-amazon.com/images/I/61i8Vjb17SL._SL1500_.jpg",
  )
];
