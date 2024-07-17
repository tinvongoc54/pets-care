import 'package:flutter/material.dart';
import 'package:pets_care/widgets/app_shimmer_container.dart';
import 'package:shimmer/shimmer.dart';

import '../../../resource/assets/app_assets.dart';
import '../../../resource/localization/l10n.dart';
import '../../../resource/theme/app_colors.dart';
import '../../../resource/theme/app_text_styles.dart';

class LocationPetWidget extends StatelessWidget {
  const LocationPetWidget({super.key, required this.isLoaded});

  final bool isLoaded;

  @override
  Widget build(BuildContext context) {
    return isLoaded ? _buildLocationPet() : _buildShimmer();
  }

  _buildLocationPet() {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on, color: Colors.black),
                    const SizedBox(width: 10),
                    Text(AppTranslations.current.locationPets,
                        style: mediumLargeStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 200, child: Image.asset(AppAssets.imgLocationPet)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppTranslations.current.trackPets, style: mediumStyle()),
                    const Icon(Icons.keyboard_arrow_right, color: Colors.black)
                  ],
                )
              ],
            ),
          )),
    );
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
          child: const Column(
            children: [
              AppShimmerContainer(height: 20),
              SizedBox(height: 10),
              Expanded(child: AppShimmerContainer(height: double.infinity)),
              SizedBox(height: 10),
              AppShimmerContainer(height: 20),
            ],
          )),
    );
  }
}
