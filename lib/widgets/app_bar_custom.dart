import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_care/resource/assets/app_assets.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';

class AppBarCustom extends StatefulWidget {
  const AppBarCustom(
      {Key? key,
      required this.title,
      this.isShowBack = true,
      this.isShowAvatar = false,
      this.isShowMenu = false,
      this.isShowNotification = false,
      this.urlAvatar,
      this.onPressBack,
      this.onPressAvatar,
      this.onPressMenu,
      this.onPressNotification})
      : super(key: key);

  final String title;
  final String? urlAvatar;
  final bool? isShowBack;
  final bool? isShowAvatar;
  final bool? isShowMenu;
  final bool? isShowNotification;
  final VoidCallback? onPressBack;
  final VoidCallback? onPressAvatar;
  final VoidCallback? onPressMenu;
  final VoidCallback? onPressNotification;

  @override
  State<StatefulWidget> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    final isHasRightIcon = widget.isShowAvatar == true ||
        widget.isShowNotification == true ||
        widget.isShowMenu == true;
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
      padding: const EdgeInsets.only(top: 20, right: 5),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(child: _buildBtnBack(context)),
          Expanded(
            child: Center(
                child: Text(widget.title,
                    style: mediumLargeStyle(color: Colors.white))),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child:
                  isHasRightIcon ? _buildRightIcon() : const SizedBox.shrink(),
            ),
          )
        ],
      ),
    );
  }

  _buildBtnBack(BuildContext context) {
    return widget.isShowBack == true
        ? Align(
            alignment: Alignment.centerLeft,
            child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  widget.onPressBack ?? Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back_ios_new,
                    size: 25, color: Colors.white)),
          )
        : const SizedBox.shrink();
  }

  _buildRightIcon() {
    if (widget.isShowMenu == true) {
      return _buildMenu();
    }
    if (widget.isShowNotification == true) {
      return _buildNotification();
    }
    if (widget.isShowAvatar == true) {
      return _buildAvatar();
    }
  }

  _buildAvatar() {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        widget.onPressAvatar;
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: SizedBox(
            width: 40,
            height: 40,
            child: Image.asset(AppAssets.imgPet1, fit: BoxFit.fill)),
      ),
    );
  }

  _buildMenu() {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          widget.onPressMenu;
        },
        child: SizedBox(
            width: 25, height: 25, child: SvgPicture.asset(AppAssets.icMenu)));
  }

  _buildNotification() {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          widget.onPressNotification;
        },
        child: SizedBox(
            width: 25,
            height: 25,
            child: SvgPicture.asset(AppAssets.icNotification)));
  }
}
