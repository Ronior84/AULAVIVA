import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBgIxpSdzmHpQ7avH4Ntq3Pw4qILLHMnmE",
            authDomain: "aulaviva-bcea5.firebaseapp.com",
            projectId: "aulaviva-bcea5",
            storageBucket: "aulaviva-bcea5.appspot.com",
            messagingSenderId: "528367521828",
            appId: "1:528367521828:web:d73774acfb49f758e208b1",
            measurementId: "G-4J3K4YND5F"));
  } else {
    await Firebase.initializeApp();
  }
}
