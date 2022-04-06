//pour la liste des nom des contacts
import 'contact_model.dart';

class ChatModel {
  final bool isTyping;
  final String lastMessage;
  final String lastMessageTime;
  final ContactClass contact;

  ChatModel(
      {this.isTyping, this.lastMessage, this.lastMessageTime, this.contact});

  static List<ChatModel> list = [
    ChatModel(
      isTyping: true,
      lastMessage: "hello!",
      lastMessageTime: "12h45",
      contact: ContactClass(prenom: "Mamie", nom: 'BA'),
    ),
    ChatModel(
      isTyping: false,
      lastMessage: "Sure, no problem Mamie!",
      lastMessageTime: "12h00",
      contact: ContactClass(prenom: "Adama", nom: 'Wade'),
    ),
    ChatModel(
      isTyping: false,
      lastMessage: "thank you Mamie!",
      lastMessageTime: "11h45",
      contact: ContactClass(prenom: "Rokhaya", nom: 'Diallo'),
    ),
  ];
}
