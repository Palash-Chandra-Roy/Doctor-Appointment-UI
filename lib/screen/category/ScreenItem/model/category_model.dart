
class CategoryModel{
  String image, title,subTitle;
  CategoryModel({required this.image,required this.title,required this.subTitle});
}

List<CategoryModel> categoryItem=[
  CategoryModel(image: "assets/images/category1.png", title: "General Medicine",subTitle: "1200 Doctors"),
  CategoryModel(image: "assets/images/category2.png", title: "Internal Medicine",subTitle: "800 Doctors"),
  CategoryModel(image: "assets/images/category4.png", title: "Gynecology",subTitle: "1200 Doctors"),
  CategoryModel(image: "assets/images/category3.png", title: "Dermatology ",subTitle: "800 Doctors"),
  CategoryModel(image: "assets/images/category5.png", title: "Ophthalmology",subTitle: "1200 Doctors"),
  CategoryModel(image: "assets/images/category6.png", title: "Orthopedics",subTitle: "800 Doctors"),

];