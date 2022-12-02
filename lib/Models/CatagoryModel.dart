class Category {
  String? CategoryImage;
  bool? isItemSelected;
  String? Categoryname;
  Category(
      {this.CategoryImage, this.isItemSelected, required this.Categoryname});
}

List<Category> CategoryList = [
  Category(
      CategoryImage: "Assets/images/dry_fruits.png",
      isItemSelected: false,
      Categoryname: "Dried Fruit"),
  Category(
      CategoryImage: "Assets/images/nut.png",
      isItemSelected: false,
      Categoryname: "Nuts"),
];

// List<String> CategoryList = ["Assets/images/dry_fruits.png","Assets/images/nut.png"];