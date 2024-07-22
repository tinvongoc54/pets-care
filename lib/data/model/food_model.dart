import 'package:flutter/material.dart';
import 'package:pets_care/resource/theme/app_colors.dart';

class FoodModel {
  String id, name, image, description;
  int weigh, price;

  FoodModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.weigh,
      required this.price});

}
