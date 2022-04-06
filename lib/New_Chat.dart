import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

//import 'package:flutter_spinkit/flutter_spinkit.dart'; //animation isTyping

//pour les couleurs de fond
import 'Discussion_Model.dart';
import 'color.dart';

//pour le modele de. la liste des chats
import 'chat_model.dart';

class NewChat extends StatefulWidget {
  @override
  _NewChatState createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  ChatModel currentChat = ChatModel.list.elementAt(0); //pour current discuss
  String currentUser = "1";
  String pairId = "2";
  List<DiscussionModel> discussion = DiscussionModel.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grisColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.blueColor,
          ),
          onPressed: () {
            Navigator.of(context).pop(); //retourner en arrieere lorsquon clique
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Ionicons.ios_menu,
              color: AppColors.blueColor,
            ),
            onPressed: () {},
          ),
        ],
        title: Text("${currentChat.contact.nom}"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: discussion.length,
        reverse: true, //pour que la conversation commeceen bas
        itemBuilder: (context, index) {},
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          color: AppColors.darkColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.attach_file,
                color: AppColors.blueColor,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Ionicons.ios_camera,
                color: AppColors.blueColor,
              ),
              onPressed: null,
            ),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type something...",
                  hintStyle: TextStyle(
                    color: Colors.white30,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Ionicons.ios_send,
                color: AppColors.blueColor,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => NewChat(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
