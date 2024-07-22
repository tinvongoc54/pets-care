import 'package:flutter/material.dart';
import 'package:pets_care/data/model/message_model.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';
import 'package:pets_care/resource/theme/theme.dart';
import 'package:pets_care/widgets/app_shimmer_container.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key, required this.message, required this.isGenerating});

  final MessageModel message;
  final bool isGenerating;

  @override
  Widget build(BuildContext context) {
    return isGenerating && message.message.isEmpty ? _buildGenerating() : _buildMessage(context);
  }

  Row _buildMessage(BuildContext context) {
    final isUser = message.isUser();
    return Row(
        mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            constraints: message.message.length > 60
                ? BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width - 100)
                : null,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            margin: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                gradient: isUser ? AppColors.primaryGradient : null,
                color: isUser ? null : AppColors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(isUser ? 0 : 20),
                    bottomLeft: Radius.circular(isUser ? 20 : 0),
                    topLeft: const Radius.circular(20),
                    bottomRight: const Radius.circular(20))),
            alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
            child: Text(message.message,
                softWrap: true,
                style: mediumStyle(
                    color: isUser ? Colors.white : Colors.black, fontWeight: FontWeight.w500)),
          ),
        ]);
  }

  _buildGenerating() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40,
            width: 70,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              AppShimmerContainer(
                  height: 10,
                  width: 10,
                  baseColor: AppColors.grayLight,
                  highlightColor: AppColors.gray),
              AppShimmerContainer(
                  height: 10,
                  width: 10,
                  baseColor: AppColors.grayLight,
                  highlightColor: AppColors.gray),
              AppShimmerContainer(
                  height: 10,
                  width: 10,
                  baseColor: AppColors.grayLight,
                  highlightColor: AppColors.gray),
            ]),
          )
        ]);
  }
}
