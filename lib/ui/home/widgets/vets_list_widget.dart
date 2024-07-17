import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_care/common/constants.dart';
import 'package:pets_care/common/extensions/int_ext.dart';
import 'package:pets_care/data/model/food_model.dart';
import 'package:pets_care/data/model/vet_model.dart';
import 'package:pets_care/resource/assets/app_assets.dart';
import 'package:pets_care/resource/localization/l10n.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';

import '../../../resource/theme/app_colors.dart';
import '../../../widgets/app_shimmer_container.dart';

class VetsListWidget extends StatelessWidget {
  const VetsListWidget({super.key, required this.isLoaded});

  final bool isLoaded;

  @override
  Widget build(BuildContext context) {
    return isLoaded ? _buildVets() : _buildShimmer();
  }

  _buildVets() {
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
                SvgPicture.asset(AppAssets.icVet, width: 25, height: 25),
                const SizedBox(width: 10),
                Text(AppTranslations.current.vets,
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
                    height: 180,
                    width: double.infinity,
                    child: PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: Constants.vetsList.length,
                        itemBuilder: (context, index) {
                          return _buildVetItem(Constants.vetsList[index]);
                        }),
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_outlined, color: Colors.black, size: 16),
              ],
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }

  _buildVetItem(VetModel vet) {
    return Container(
      height: 160,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: AppColors.boxShadow,
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(vet.image, fit: BoxFit.cover, width: 100, height: 100),
              ),
              const SizedBox(width: 10),
              _buildVetInfo(vet)
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Last visit: ${vet.lastVisit}', style: smallStyle()),
              Row(
                children: [
                  Text(AppTranslations.current.bookAppointment, style: smallStyle()),
                  const SizedBox(width: 5),
                  const Icon(Icons.arrow_forward_ios_outlined, size: 12)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Expanded _buildVetInfo(VetModel vet) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(vet.name, style: mediumLargeStyle(fontWeight: FontWeight.bold)),
        Text(vet.job, style: smallStyle(color: AppColors.grayLight)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RatingBar.builder(
                initialRating: vet.star,
                itemCount: 5,
                itemSize: 15,
                allowHalfRating: true,
                unratedColor: AppColors.grayLight,
                itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
                onRatingUpdate: (_) {},
                ignoreGestures: true),
            const SizedBox(width: 10),
            Text('${vet.star} (${vet.review.length} review)',
                style: smallStyle(fontWeight: FontWeight.w500))
          ],
        ),
        Row(
          children: [
            const Icon(Icons.monetization_on, color: Colors.black, size: 10),
            Text('${vet.price.formatMoney()} VND', style: bitSmallStyle()),
            const SizedBox(width: 10),
            const Icon(Icons.location_on, color: Colors.black, size: 10),
            Text('${vet.distance}km', style: bitSmallStyle()),
          ],
        )
      ],
    ));
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
          AppShimmerContainer(height: 160),
        ],
      ),
    );
  }
}
