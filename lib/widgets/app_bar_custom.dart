import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';


class AppBarCustom extends StatefulWidget {
  const AppBarCustom(
      {Key? key,
      required this.title,
      this.isShowBack = false,
      this.isShowAvatar = false,
      this.urlAvatar,
      this.isShowSearch = false,
      this.onPressBack,
      this.onPressSearch,
      this.onPressSetting})
      : super(key: key);

  final String title;
  final String? urlAvatar;
  final bool? isShowBack;
  final bool? isShowAvatar;
  final bool? isShowSearch;
  final VoidCallback? onPressBack;
  final VoidCallback? onPressSearch;
  final VoidCallback? onPressSetting;

  @override
  State<StatefulWidget> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(width: 10),
          const Icon(Icons.arrow_back_ios_new, size: 25, color: Colors.white),
          Center(child: Text(widget.title, style: mediumLargeStyle(color: Colors.white)))
        ],
      ),
    );
  }

  // _buildAppBar() {
  //   return Expanded(
  //     child: Container(
  //       height: 50,
  //       padding: const EdgeInsets.all(5),
  //       decoration: const BoxDecoration(
  //         borderRadius: BorderRadius.all(Radius.circular(15)),
  //         color: Colors.white,
  //       ),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Flexible(
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               children: [
  //                 Visibility(
  //                   visible: widget.isShowBack ?? true,
  //                   child: InkWell(
  //                     onTap: () {
  //                       if (widget.onPressBack != null) {
  //                         widget.onPressBack!.call();
  //                       } else {
  //                         Navigator.pop(context);
  //                       }
  //                     },
  //                     child: Container(
  //                       padding: const EdgeInsets.all(4),
  //                       child: SvgPicture.asset(Assets.icAppBack),
  //                     ),
  //                   ),
  //                 ),
  //                 Visibility(
  //                   visible: widget.isShowAvatar ?? false,
  //                   child: Padding(
  //                     padding: const EdgeInsets.all(4),
  //                     child: CircleAvatar(
  //                       backgroundImage: NetworkImage(
  //                         widget.urlAvatar ??
  //                             Globals().currentUser?.avatar ??
  //                             '',
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //                 const SizedBox(width: 6),
  //                 InkWell(
  //                   onTap: () {
  //                     if (widget.onPressBack != null) {
  //                       widget.onPressBack!.call();
  //                     } else {
  //                       Navigator.pop(context);
  //                     }
  //                   },
  //                   child: Text(
  //                     widget.title,
  //                     overflow: TextOverflow.ellipsis,
  //                     style: smallGrey1Bold,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
