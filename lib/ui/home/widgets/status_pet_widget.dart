import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pets_care/widgets/app_shimmer_container.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common/constants.dart';
import '../../../data/model/pet_model.dart';
import '../../../resource/assets/app_assets.dart';
import '../../../resource/localization/l10n.dart';
import '../../../resource/theme/app_colors.dart';
import '../../../resource/theme/app_text_styles.dart';

class StatusPetWidget extends StatelessWidget {
  const StatusPetWidget({super.key, required this.isLoaded});

  final bool isLoaded;

  @override
  Widget build(BuildContext context) {
    return isLoaded ? _buildStatusPet() : _buildShimmer();
  }

  _buildStatusPet() {
    return Expanded(
      child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          shadowColor: AppColors.gray,
          child: Container(
            height: 280,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppAssets.icStatusPet),
                    const SizedBox(width: 10),
                    Text(AppTranslations.current.statusPets,
                        style: mediumLargeStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: Constants.petsList.asMap().entries.map((e) {
                          return _buildStatusPetItem(e.key);
                        }).toList(),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppTranslations.current.checkPets, style: mediumStyle()),
                    const Icon(Icons.keyboard_arrow_right, color: Colors.black)
                  ],
                )
              ],
            ),
          )),
    );
  }

  Container _buildStatusPetItem(int index) {
    final pet = Constants.petsList[index];
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: AppColors.boxShadow,
                    color: Constants.petsColor[index % 3]),
                child: Image.asset(pet.image, fit: BoxFit.cover),
              ),
              const SizedBox(width: 10),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildPercentStatusItem(pet, AppTranslations.current.health, pet.health),
                  _buildPercentStatusItem(pet, AppTranslations.current.food, pet.food),
                  _buildPercentStatusItem(pet, AppTranslations.current.mood, pet.mood),
                ],
              ))
            ],
          ),
          index < Constants.petsList.length - 1
              ? const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Divider(height: 1, color: AppColors.shadow),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }

  _buildPercentStatusItem(PetModel pet, String label, int percent) {
    final color = pet.getColorsStatus(percent);
    return LinearPercentIndicator(
        backgroundColor: Colors.transparent,
        animation: true,
        animationDuration: 1000,
        lineHeight: 5,
        leading: SizedBox(width: 26, child: Text(label, style: verySmallStyle())),
        trailing: Text('$percent%', style: verySmallStyle(color: color)),
        percent: percent.toDouble() / 100,
        progressColor: color,
        barRadius: const Radius.circular(15));
  }

  _buildShimmer() {
    return Expanded(
      child: Container(
        height: 280,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: AppColors.boxShadow),
        child: Column(
          children: [
            const AppShimmerContainer(height: 20),
            const SizedBox(height: 10),
            Expanded(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              _buildStatusItem(),
              _buildStatusItem(),
              _buildStatusItem(),
            ])),
            const SizedBox(height: 10),
            const AppShimmerContainer(height: 20),
          ],
        ),
      ),
    );
  }

  _buildStatusItem() {
    return const Row(children: [
      AppShimmerContainer(height: 42, width: 42),
      SizedBox(width: 10),
      Expanded(child: Column(children: [
        AppShimmerContainer(height: 12),
        SizedBox(height: 3),
        AppShimmerContainer(height: 12),
        SizedBox(height: 3),
        AppShimmerContainer(height: 12),
      ]))
    ]);
  }
}
