import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_project/Authentification.dart';
//import 'package:firebase_database/firebase_database.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart'; //animation isTyping

//pour les couleurs de fond
import 'color.dart';

//pour le modele de. la liste des chats
//import 'Auth_model.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  // List<AuthModel> list = AuthModel.list;

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
          Text("Formulaire d'inscription", style: TextStyle(fontSize: 26)),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: AppColors.darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Prenom",
                hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: AppColors.darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Nom",
                hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: AppColors.darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Login",
                hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: AppColors.darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Numéro de téléphone",
                hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: AppColors.darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Mot de passe",
                hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: AppColors.darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Confirmation Mot de passe",
                hintStyle: TextStyle(color: Colors.white54, fontSize: 15),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
            child: Row(
              children: <Widget>[
                Text(
                  "Valider",
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
                        builder: (_) => Authentification(),
                      ),
                    );
                  },
                ),

                SizedBox(width: 30), //pour séparer les champs
                Text(
                  "Annuler",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 23,
                    //backgroundColor: AppColors.blueColor
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Ionicons.ios_close_circle,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => Authentification(),
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
