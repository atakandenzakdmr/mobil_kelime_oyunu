import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kelimeoyunu/view/login/login_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginView(),
    );
  }
}

// http://127.0.0.1:9100/#/?hide=debugger&ide=VSCode&theme=dark&uri=http%3A%2F%2F127.0.0.1%3A45611%2FhiIeGCyLi8A%3D%2Fg