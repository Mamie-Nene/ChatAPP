class DiscussionModel {
  final String senderId;
  final String message;

  DiscussionModel({this.senderId, this.message});

  static List<DiscussionModel> list = [
    DiscussionModel(
      senderId: "1",
      message: "Hello Mamie Néné. Comment vas tu?",
    ),
    DiscussionModel(
      senderId: "2",
      message: "Bien et toi",
    ),
    DiscussionModel(
      senderId: "1",
      message: "Je vais bien aussi",
    ),
    DiscussionModel(
      senderId: "2",
      message: "Cool",
    ),
    DiscussionModel(
      senderId: "1",
      message: "Merci",
    ),
    DiscussionModel(
      senderId: "2",
      message: "Bonne journee",
    ),
  ];
}
