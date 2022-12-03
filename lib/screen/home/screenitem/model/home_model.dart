
class HomeModel{
  String image, title,subTitle;
  HomeModel({required this.image,required this.title,required this.subTitle});

}
List<HomeModel> listCategory=[
  HomeModel(image: "assets/images/category1.png", title: "General Medicine",subTitle: "1200 Doctors"),
  HomeModel(image: "assets/images/category2.png", title: "Internal Medicine",subTitle: "800 Doctors"),
  HomeModel(image: "assets/images/category3.png", title: "Dermatology ",subTitle: "650 Doctors"),
];


List<HomeModel> listService=[
  HomeModel(image: "assets/images/service3.png", title: "Doctor", subTitle: ""),
  HomeModel(image: "assets/images/service2.png", title: "Hospital", subTitle: ""),
  HomeModel(image: "assets/images/service1.png", title: "Medicine", subTitle: ""),
];