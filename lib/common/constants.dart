import 'package:pets_care/data/model/food_model.dart';
import 'package:pets_care/data/model/pet_model.dart';
import 'package:pets_care/data/model/vet_model.dart';
import 'package:pets_care/resource/assets/app_assets.dart';
import 'package:pets_care/resource/theme/app_colors.dart';

class Constants {
  static final petsList = [
    PetModel(id: '1', name: 'Pie', image: AppAssets.imgPet1, health: 95, food: 80, mood: 99),
    PetModel(id: '2', name: 'Choco', image: AppAssets.imgPet2, health: 70, food: 34, mood: 58),
    PetModel(id: '3', name: 'Poo', image: AppAssets.imgPet3, health: 85, food: 80, mood: 40)
  ];

  static final petsColor = [AppColors.colorD7AE53, AppColors.color7A86AE, AppColors.colorE28E69];

  static final foodsList = [
    FoodModel(
        id: '1',
        name: 'Josera',
        image: AppAssets.imgFood1,
        description: 'Josi Dog Master Mix',
        weigh: 900,
        price: 120000),
    FoodModel(
        id: '1',
        name: 'Happy Pet',
        image: AppAssets.imgFood2,
        description: 'Happy Dog - Profi Line High Energy 30-20',
        weigh: 450,
        price: 120000),
    FoodModel(
        id: '1',
        name: 'Josera',
        image: AppAssets.imgFood2,
        description: 'Josi Dog Master Mix',
        weigh: 900,
        price: 120000),
    FoodModel(
        id: '1',
        name: 'Gvanador',
        image: AppAssets.imgFood1,
        description: 'Happy Dog - Profi Line High Energy 30-20',
        weigh: 400,
        price: 32000),
    FoodModel(
        id: '1',
        name: 'Josera',
        image: AppAssets.imgFood1,
        description: 'Josi Dog Master Mix',
        weigh: 900,
        price: 120000),
    FoodModel(
        id: '1',
        name: 'Josera',
        image: AppAssets.imgFood2,
        description: 'Josi Dog Master Mix',
        weigh: 900,
        price: 120000),
    FoodModel(
        id: '1',
        name: 'Josera',
        image: AppAssets.imgFood1,
        description: 'Josi Dog Master Mix',
        weigh: 900,
        price: 120000),
    FoodModel(
        id: '1',
        name: 'Josera',
        image: AppAssets.imgFood2,
        description: 'Josi Dog Master Mix',
        weigh: 900,
        price: 120000),
    FoodModel(
        id: '1',
        name: 'Josera',
        image: AppAssets.imgFood1,
        description: 'Josi Dog Master Mix',
        weigh: 900,
        price: 120000),
    FoodModel(
        id: '1',
        name: 'Josera',
        image: AppAssets.imgFood1,
        description: 'Josi Dog Master Mix',
        weigh: 900,
        price: 120000),
  ];

  static final vetsList = [
    VetModel(review: reviews),
    VetModel(name: 'Song Han Clinic', star: 3, price: 500000, review: reviews),
    VetModel(name: 'Pets Hospital', star: 4.2, price: 700000),
    VetModel(),
    VetModel(),
    VetModel(),
    VetModel(),
  ];

  static final workingHours = [
    WorkingHour(weekday: 'Monday'),
    WorkingHour(weekday: 'Tuesday'),
    WorkingHour(weekday: 'Wednesday'),
    WorkingHour(weekday: 'Thursday'),
    WorkingHour(weekday: 'Friday'),
    WorkingHour(weekday: 'Saturday'),
  ];

  static final reviews = [
    Review(detail: 'Very good', star: 5),
    Review(detail: 'I dont like this doctor', star: 3),
    Review(detail: 'I think this is well doctor', star: 5),
    Review(detail: 'Very good', star: 5),
  ];
}
