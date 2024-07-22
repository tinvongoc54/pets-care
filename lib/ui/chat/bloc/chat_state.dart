part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState({
    @Default(false) bool isGenerating,
    @Default([]) List<MessageModel> messages
  }) = _ChatState;
}
