import 'package:flutter/material.dart';
import 'package:pets_care/resource/theme/app_colors.dart';

class PetModel {
  String id, name, image;
  int health, food, mood;

  PetModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.health,
      required this.food,
      required this.mood});

  Color getColorsStatus(int percent) {
    if (percent < 50) {
      return AppColors.red;
    } else {
      return AppColors.primary;
    }
  }
}
