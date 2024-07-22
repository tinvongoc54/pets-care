import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common/constants.dart';
import '../../../resource/assets/app_assets.dart';
import '../../../resource/localization/l10n.dart';
import '../../../resource/theme/app_colors.dart';
import '../../../resource/theme/app_text_styles.dart';
import '../../../widgets/app_shimmer_container.dart';

class PetListWidget extends StatelessWidget {
  const PetListWidget({super.key, required this.isLoaded});

  final bool isLoaded;

  @override
  Widget build(BuildContext context) {
    return isLoaded ? _buildPetList() : _buildShimmer();
  }

  _buildPetList() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      shadowColor: AppColors.gray,
      child: Container(
        height: 180,
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(AppAssets.icMyPets),
                const SizedBox(width: 10),
                Text(AppTranslations.current.myPets,
                    style: mediumLargeStyle(fontWeight: FontWeight.bold))
              ],
            ),
            Container(
              height: 110,
              margin: const EdgeInsets.only(top: 10),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: Constants.petsList.length,
                  itemBuilder: (context, index) {
                    return _buildItemPet(index);
                  }),
            )
          ],
        ),
      ),
    );
  }

  _buildItemPet(int index) {
    final pet = Constants.petsList[index];
    return Container(
      width: 90,
      height: 110,
      margin: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constants.petsColor[index % 3],
                boxShadow: AppColors.boxShadow),
            child: Image.asset(pet.image, fit: BoxFit.cover),
          ),
          const SizedBox(height: 5),
          Expanded(
              child: Text(pet.name,
                  style: mediumStyle(color: AppColors.primaryDark, fontWeight: FontWeight.w500)))
        ],
      ),
    );
  }

  _buildShimmer() {
    return Container(
      height: 180,
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: AppColors.boxShadow),
      child: const Column(
        children: [
          AppShimmerContainer(height: 20),
          SizedBox(height: 10),
          AppShimmerContainer(height: 120)
        ],
      ),
    );
  }
}
