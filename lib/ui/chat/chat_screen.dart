import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:pets_care/common/constants.dart';
import 'package:pets_care/di/injection.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';
import 'package:pets_care/ui/chat/bloc/chat_cubit.dart';
import 'package:pets_care/ui/chat/widgets/message_widget.dart';
import 'package:pets_care/widgets/app_bar_custom.dart';
import 'package:pets_care/widgets/app_input_field.dart';
import '';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatCubit>(create: (_) => getIt.get<ChatCubit>(), child: const ChatView());
  }
}

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  void initState() {
    super.initState();
    context.read<ChatCubit>().init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray,
      body: Column(
        children: [
          const AppBarCustom(title: 'Chat with AI'),
          Expanded(child: BlocBuilder<ChatCubit, ChatState>(
            builder: (context, state) {
              final cubit = context.read<ChatCubit>();
              return Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          controller: cubit.scrollController,
                          itemCount: cubit.messagesList.length,
                          itemBuilder: (context, index) {
                            return MessageWidget(
                                message: cubit.messagesList[index],
                                isGenerating: state.isGenerating);
                          }),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      child: Row(children: [
                        Expanded(
                            child: AppInputField(
                                hint: 'Enter a prompt...',
                                icon: Icons.abc,
                                controller: cubit.textController,
                                backgroundColor: Colors.white,
                                hintStyle: semiLargeStyle(color: AppColors.grayLight),
                                contentStyle: semiLargeStyle(fontWeight: FontWeight.w400))),
                        const SizedBox(width: 10),
                        CupertinoButton(
                            onPressed: () {
                              cubit.sendMessage();
                            },
                            padding: EdgeInsets.zero,
                            child: const Icon(Icons.send, color: AppColors.primary, size: 30))
                      ]),
                    )
                  ],
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
