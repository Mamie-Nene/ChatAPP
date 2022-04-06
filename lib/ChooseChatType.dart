import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_icons/flutter_icons.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart'; //animation isTyping

//pour les couleurs de fond
import 'NewGroupeChat.dart';
import 'New_Chat.dart';
import 'color.dart';

//pour le modele de. la liste des chats

class ChoixDiscussion extends StatefulWidget {
  @override
  _ChoixDiscussionState createState() => _ChoixDiscussionState();
}

class _ChoixDiscussionState extends State<ChoixDiscussion> {
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
        children: <Widget>[
          Text(
            "Nouvelle Discussion",
            style: TextStyle(
              color: AppColors.blueColor, //pour la couleur moins noir foncé
              fontSize: 25,
            ),
          ),
          IconButton(
            icon: Icon(
              Ionicons.ios_add_circle,
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
          Text(
            "Nouvelle Discussion de Groupe",
            style: TextStyle(
              color: AppColors.blueColor,
              fontSize: 25,
              //backgroundColor: AppColors.blueColor
            ),
          ),
          IconButton(
            icon: Icon(
              Ionicons.ios_add_circle,
              color: AppColors.blueColor,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => NewGroupeChat(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
