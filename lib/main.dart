import 'package:ecommerce_app/app.dart';
import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBf749E1NryLDGrfHge0us5SxNTeaNB2r0",
        authDomain: "e-commerce-app-67832.firebaseapp.com",
        projectId: "e-commerce-app-67832",
        storageBucket: "e-commerce-app-67832.appspot.com",
        messagingSenderId: "930730059346",
        appId: "1:930730059346:web:17fc4c8f5d25d26fa3618b"),
  );

  runApp(const App());
}
