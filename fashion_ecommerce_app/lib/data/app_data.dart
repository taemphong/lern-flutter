import '../model/base_model.dart';
import '../model/categories_model.dart';

List<CategoriesModel> categories = [
  CategoriesModel(
    imageUrl: "assets/images/kids1.jpg",
    title: "Kids",
  ),
  CategoriesModel(
    imageUrl: "assets/images/son.jpg",
    title: "Men",
  ),
  CategoriesModel(
    imageUrl: "assets/images/kit6.jpg",
    title: "Women",
  ),
  CategoriesModel(
    imageUrl: "assets/images/nike.jpg",
    title: "Shoes",
  ),
  CategoriesModel(
    imageUrl: "assets/images/logonike.jpg",
    title: "NIKE",
  ),
  CategoriesModel(
    imageUrl: "assets/images/bottom1.jpg",
    title: "Jogger",
  ),
  CategoriesModel(
    imageUrl: "assets/images/bottom3.jpg",
    title: "Textured Shorts",
  ),
];

List<BaseModel> mainList = [
  BaseModel(
    imageUrl: "assets/images/son.jpg",
    name: " Home Shirt",
    price: 699.99,
    review: 3.6,
    star: 4.8,
    id: 1,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/kit2.jpg",
    name: "Youth Home Shirt",
    price: 599.99,
    review: 5.6,
    star: 5.0,
    id: 2,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/jhon.jpg",
    name: "Hotspur Third Shirt",
    price: 499.99,
    review: 2.6,
    star: 3.7,
    id: 3,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/kit3.jpg",
    name: "Youth Third Shirt",
    price: 599.99,
    review: 1.4,
    star: 2.4,
    id: 4,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/bisu.jpg",
    name: "Hotspur Away Shirt",
    price: 699.99,
    review: 4.2,
    star: 1.8,
    id: 5,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/kit1.jpg",
    name: "Youth Away Shirt",
    price: 699.99,
    review: 2.1,
    star: 3.1,
    id: 6,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/bisu3.jpg",
    name: "Purple Elite Drill Top ",
    price: 399.99,
    review: 3.1,
    star: 4.8,
    id: 7,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/kit6.jpg",
    name: "Purple Elite",
    price: 399.99,
    review: 2.6,
    star: 4.8,
    id: 8,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/kit7.jpg",
    name: "Hom Kit Shock",
    price: 199.99,
    review: 2.6,
    star: 4.8,
    id: 9,
    value: 1,
  ),
   BaseModel(
    imageUrl: "assets/images/kit8.jpg",
    name: "Away Kit Shock",
    price: 199.99,
    review: 2.6,
    star: 4.8,
    id: 10,
    value: 1,
  ),
   BaseModel(
    imageUrl: "assets/images/bottom2.jpg",
    name: "Grey Jogger",
    price: 299.99,
    review: 2.6,
    star: 4.8,
    id: 11,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/bottom4.jpg",
    name: "Grey short",
    price: 299.99,
    review: 2.6,
    star: 4.8,
    id: 12,
    value: 1,
  ),
  BaseModel(
    imageUrl: "assets/images/nike3.jpg",
    name: "Nike Navy ",
    price: 499.99,
    review: 2.6,
    star: 4.8,
    id: 13,
    value: 1,
  ),
   BaseModel(
    imageUrl: "assets/images/nike1.jpg",
    name: "Nike lufy ",
    price: 499.99,
    review: 2.6,
    star: 4.8,
    id: 14,
    value: 1,
  ),
   BaseModel(
    imageUrl: "assets/images/nike2.jpg",
    name: "Nike copper ",
    price: 499.99,
    review: 2.6,
    star: 4.8,
    id: 15,
    value: 1,
  ),
];


List<BaseModel> itemsOnCart = [];
List<BaseModel> itemsOnSearch = [];
List<BaseModel> favoriteItems = [];