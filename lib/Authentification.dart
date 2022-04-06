import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart'; //animation isTyping

//pour les couleurs de fond
import 'Chat_Page.dart';
import 'color.dart';
import 'Inscription.dart';

//pour le modele de. la liste des chats
import 'Auth_model.dart';

class Authentification extends StatefulWidget {
  @override
  _AuthentificationState createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
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
          Container(
            margin: EdgeInsets.all(36),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: AppColors.darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Ionicons.ios_call,
                  color: Colors.white54,
                ),
                hintText: "Numero de Tel",
                hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(36),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: AppColors.darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Ionicons.ios_lock,
                  color: Colors.white54,
                ),
                hintText: "Mot de passe",
                hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
            child: Row(
              children: <Widget>[
                Text(
                  "Connexion",
                  style: TextStyle(
                    color: AppColors
                        .green2Color, //pour la couleur moins noir foncé
                    fontSize: 23,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Ionicons.ios_log_in,
                    color: AppColors.green2Color,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ChatPage(),
                      ),
                    );
                  },
                ),

                SizedBox(width: 30), //pour séparer les champs
                Text(
                  "Inscription",
                  style: TextStyle(
                    color: AppColors.blueColor,
                    fontSize: 23,
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
                        builder: (_) => Inscription(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
