import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

//3fonksiyon yazılıacak girisyap kayitol çıkışyap
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//girisyap fonk.
  Future<User> signIn(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

//kayitol fonk.
  Future<User> createPerson(String name, String email, String university,
      String department, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _firestore.collection("Person").doc(user.user.uid).set({
      'userName': name,
      'email': email,
      'university': university,
      'department': department
    });

    return user.user;
  }

//çıkışyap fonk.
  signOut() async {
    return await _auth.signOut();
  }
}
