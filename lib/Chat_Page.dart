import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_project/Discussion_Page.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart'; //animation isTyping

//pour les couleurs de fond
import 'ChooseChatType.dart';
import 'color.dart';

//pour le modele de. la liste des chats
import 'chat_model.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> list = ChatModel.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grisColor,
      appBar: AppBar(
        title: Text(
          'SenJottay221',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: AppColors.darkBlueColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Ionicons.ios_reorder,
              color: AppColors.darkColor,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        //pour la barre de recherche
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: AppColors.darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Ionicons.ios_search,
                  color: Colors.white54,
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  //lorsqu'on clique sur une discussion pourque ca te revoie à la page de discussion
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DiscussionPage(),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                      //backgroundImage: AssetImage(
                      // "pp"), // no matter how big it is, it won't overflow
                      ),
                  title: Text(
                    list[index].contact.prenom,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Row(
                    //pour avoir sur la meme ligne plusieurs champs
                    children: <Widget>[
                      Text(
                        list[index].lastMessage,
                        style: TextStyle(
                            color: Colors
                                .black54, //pour la couleur moins noir foncé
                            fontSize: 15),
                      ),
                      SizedBox(width: 85), //pour séparer les champs
                      Text(
                        list[index].lastMessageTime,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Divider(color: Colors.black),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      //bouton pour une nouvelle discussion
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ChoixDiscussion(),
                      ),
                    );
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: AppColors.blueColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.darkColor,
        elevation: 0,
        iconSize: 40,
        // mouseCursor: SystemMouseCursors.grab,
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white24,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_settings),
            label: 'reglages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_chatbubbles),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_list),
            label: 'listFriends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_call),
            label: 'Appel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ios_camera),
            label: 'Statut',
          )
        ],
      ),
    );
  }
}
