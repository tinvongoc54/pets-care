import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:pets_care/data/model/message_model.dart';

part 'chat_state.dart';

part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatState());

  late final GenerativeModel generativeModel;
  late final ChatSession chatSession;
  late final List<MessageModel> messagesList;

  final ScrollController scrollController = ScrollController();
  final TextEditingController textController = TextEditingController();

  void init() {
    generativeModel =
        GenerativeModel(model: 'gemini-pro', apiKey: 'AIzaSyDBSLKLBQUPraCqPUg_IGdwu_OW2GU1eew');
    chatSession = generativeModel.startChat();
    messagesList = state.messages.toList();
  }

  Future<void> sendMessage() async {
    if (textController.text == '') return;
    final message = textController.text;
    textController.text = '';
    try {
      print('message: $message');
      messagesList.add(MessageModel(role: 'user', message: message));
      messagesList.add(MessageModel(role: 'ai', message: ''));
      emit(state.copyWith(isGenerating: true, messages: messagesList));
      scrollToBottom();
      final response = await chatSession.sendMessage(Content.text(message));
      messagesList.removeLast();
      messagesList.add(MessageModel(role: 'ai', message: response.text ?? ''));
      emit(state.copyWith(isGenerating: false, messages: messagesList));
      scrollToBottom();
      print('response: ${response.text}');
    } catch (e) {
      print('error: ${e.toString()}');
    }
  }

  Future<void> scrollToBottom() async {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
    });
  }
}
