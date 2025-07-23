class Item {
  final int id;
  final String name;
  final num price;
  final String description;
  final List<String> images;
  final String color;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.images,
    required this.color,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      price: map['price'],
      description: map['desc'],
      images: List<String>.from(map['images']),
      color: map['color'],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": description,
        "price": price,
        "color": color,
        "images": images,
      };
}
