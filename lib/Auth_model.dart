//pour la liste des nom des contacts
import 'contact_model.dart';

class AuthModel {
  final int numero;
  final ContactClass contact;

  AuthModel({this.numero, this.contact});

  static List<AuthModel> list = [
    AuthModel(
      numero: 765433456, 
      contact: ContactClass(password: "mdp677")
    ),
    AuthModel(
      numero: 781481193,
      contact: ContactClass(password: "pala1"),
    ),
    AuthModel(
      numero: 778887665,
      contact: ContactClass(password: "passer"),
    ),
  ];
}
