class Item {
  final String name;
  final String url;
  final double price;
  final String description;
  late int count;

  Item(
      {required this.name,
      required this.url,
      required this.price,
      required this.description,
      required this.count});
}

List<Item> all = [
  Item(
      name: "Item 1",
      count: 5,
      url:
          "https://english.onlinekhabar.com/wp-content/uploads/2020/07/nepal-handicraft-baskets.jpg",
      price: 200,
      description: "This is the description of Item 1"),
  Item(
      name: "Item 2",
      count: 10,
      url:
          "https://www.nepalisansar.com/wp-content/uploads/2018/04/Allo-Nepali-Handicrafts-300x225.jpg",
      price: 2000,
      description: "This is the description of Item 2"),
  Item(
      name: "Item 3",
      count: 10,
      url:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1l2RwAGjDBCsiU1_CIjYu1ITyB3sgDGkl1T0fiqIABpUb-Dpms2b0dVnZDQPPQd9_igU&usqp=CAU",
      price: 1200,
      description: "This is the description of Item 3"),
  Item(
      name: "Item 4",
      count: 10,
      url:
          "https://i0.wp.com/handicraftsinnepal.com/wp-content/uploads/2021/09/basketry-novelty-weaving-nepal.jpg?resize=534%2C356&ssl=1",
      price: 2200,
      description: "This is the description of Item 4"),
];
