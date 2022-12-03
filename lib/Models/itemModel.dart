class Item {
  String? itemName;
  String? itemImage;
  bool? isItemSelected;
  String? price;
  Item({this.itemName, this.itemImage, this.isItemSelected, this.price});
}

List<Item> itemList = [
  Item(
      itemName: "Dried_appricots",
      itemImage: "Assets/images/Dried_appricots.jpg",
      price: "\$9.43",
      isItemSelected: false),
  Item(
      itemName: "Dried_cherry",
      itemImage: "Assets/images/Dried_cherry.jpg",
      price: "\$15.55",
      isItemSelected: false),
  Item(
      itemName: "Dried_plums",
      itemImage: "Assets/images/Dried_plums.jpg",
      price: "\$13.27",
      isItemSelected: false),
    
 
];
