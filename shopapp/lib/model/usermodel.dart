class UserModel {
  String? name, details, img;
  int? price;
  UserModel({this.img, this.name, this.details, this.price});
}

List<UserModel> myList = [
  UserModel(
      details: "1kg Indian",
      price: 200,
      img:
          "https://www.world-grain.com/ext/resources/Article-Images/2019/12/Rice_AdobeStock_64819529_E.jpg?t=1576619076&width=1080",
      name: "Rice"),
  UserModel(
      details: "1kg Indian",
      price: 200,
      img:
          "https://cdn.britannica.com/55/157155-050-D07F5610/Containers-olive-oil.jpg",
      name: "Oil"),
  UserModel(
      details: "1kg Indian",
      price: 200,
      img:
          "https://i0.wp.com/padmanews24.com/wp-content/uploads/2020/03/solt.jpg?fit=700%2C400&ssl=1",
      name: "Solt"),
  UserModel(
      details: "1kg Indian",
      price: 200,
      img:
          "https://www.healthbenefitstimes.com/9/uploads/2018/04/Know-about-Chicken-and-health-benefits-702x459.png",
      name: "Chicken"),
  UserModel(
      details: "1kg Indian",
      price: 200,
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU1qSS8-0_u7vjO9UymAfDeeqSvEGuydHsvzOecUO9pfEMMLJuAMKpKR4NpBVhMQGDoQI&usqp=CAU",
      name: "Red Apple"),
  UserModel(
      details: "1kg Indian",
      price: 200,
      img:
          "https://storage.googleapis.com/afs-prod/media/4852cc473b354a578ed422718b495606/2000.jpeg",
      name: "Coca Cola"),
  UserModel(
      details: "12 Indian",
      price: 200,
      img: "https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg",
      name: "Egg"),
];
