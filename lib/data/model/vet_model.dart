import 'package:pets_care/resource/assets/app_assets.dart';
import 'package:pets_care/resource/localization/l10n.dart';

class VetModel {
  String id, name, image, job, description, lastVisit;
  int price;
  double star, distance;
  List<WorkingHour> workingHour;
  List<Review> review;

  VetModel({
    this.id = '',
    this.name = 'Dr. Kiem Le Van',
    this.job = 'Bachelor of Veterinary Science',
    this.image = AppAssets.imgVet1,
    this.description = '',
    this.lastVisit = '22/06/2024',
    this.price = 1000000,
    this.star = 4.5,
    this.distance = 2.5,
    this.workingHour = const [],
    this.review = const [],
  });
}

class WorkingHour {
  String weekday, startHour, endHour;

  WorkingHour({required this.weekday, this.startHour = '8:00 am', this.endHour = '5:00 pm'});
}

class Review {
  String reviewer, detail;
  double star;

  Review({this.reviewer = 'Tin Vo Ngoc', this.detail = '', this.star = 4.5});
}