class Item {
  String? itemName;
  String? itemImage;
  bool? isItemSelected;
  Item({this.itemName, this.itemImage,this.isItemSelected});
}


List<Item> itemList = [
  Item(itemName: "Dried_appricots",itemImage: "Assets/images/Dried_appricots.jpg",isItemSelected: false),
  Item(itemName: "Dried_cherry",itemImage: "Assets/images/Dried_cherry.jpg",isItemSelected: false),
  Item(itemName: "Dried_plums",itemImage: "Assets/images/Dried_plums.jpg",isItemSelected: false),
  Item(itemName: "Dried_appricots",itemImage: "Assets/images/Dried_appricots.jpg",isItemSelected: false),
  Item(itemName: "Dried_cherry",itemImage: "Assets/images/Dried_cherry.jpg",isItemSelected: false),
  Item(itemName: "Dried_plums",itemImage: "Assets/images/Dried_plums.jpg",isItemSelected: false),
];
