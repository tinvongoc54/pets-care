import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_care/common/constants.dart';
import 'package:pets_care/common/extensions/int_ext.dart';
import 'package:pets_care/data/model/food_model.dart';
import 'package:pets_care/resource/assets/app_assets.dart';
import 'package:pets_care/resource/localization/l10n.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';

import '../../../resource/theme/app_colors.dart';
import '../../../widgets/app_shimmer_container.dart';

class FoodPetWidget extends StatelessWidget {
  const FoodPetWidget({super.key, required this.isLoaded});

  final bool isLoaded;

  @override
  Widget build(BuildContext context) {
    return isLoaded ? _buildFoodPet() : _buildShimmer();
  }

  _buildFoodPet() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      shadowColor: AppColors.gray,
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppAssets.icFood),
                const SizedBox(width: 10),
                Text(AppTranslations.current.petFood,
                    style: mediumLargeStyle(fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black, size: 16),
                Expanded(
                  child: SizedBox(
                    height: 230,
                    width: double.infinity,
                    child: PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        controller: PageController(),
                        scrollDirection: Axis.horizontal,
                        itemCount: (Constants.foodsList.length / 2).round(),
                        itemBuilder: (context, indexPage) {
                          return _buildFoodPetPage(indexPage);
                        }),
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_outlined, color: Colors.black, size: 16),
              ],
            )
          ],
        ),
      ),
    );
  }

  _buildFoodPetPage(int indexPage) {
    final foodsList = Constants.foodsList.sublist(indexPage * 2, indexPage * 2 + 2);
    return Container(
      height: 230,
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: foodsList.length,
          itemBuilder: (context, index) {
            return _buildFoodItem(foodsList[index]);
          }),
    );
  }

  _buildFoodItem(FoodModel food) {
    return Container(
      height: 95,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: AppColors.boxShadow,
          color: Colors.white),
      child: Row(
        children: [
          Image.asset(food.image, width: 66, height: 66, fit: BoxFit.cover),
          const SizedBox(width: 12),
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Text(food.name,
                    style: bitSmallStyle(color: AppColors.primary, fontWeight: FontWeight.w500)),
                Text(food.description, style: bitSmallStyle(fontWeight: FontWeight.w500)),
                Text('${food.weigh}g', style: bitSmallStyle(color: AppColors.grayLight)),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.primary, width: 0.5)),
                  alignment: Alignment.center,
                  child: Text('${food.price.formatMoney()} VND',
                      style: bitSmallStyle(fontWeight: FontWeight.w500)),
                )
              ])),
          const SizedBox(width: 12),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), gradient: AppColors.primaryGradient),
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: const Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 25),
            ),
          )
        ],
      ),
    );
  }

  _buildShimmer() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: AppColors.boxShadow),
      child: const Column(
        children: [
          AppShimmerContainer(height: 20),
          SizedBox(height: 12),
          Column(
            children: [
              AppShimmerContainer(height: 100),
              SizedBox(height: 10),
              AppShimmerContainer(height: 100)
            ],
          )
        ],
      ),
    );
  }
}
