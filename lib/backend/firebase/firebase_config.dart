import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAddUAfW7Iv_yCyxUjoO72QVQ1DPgNclZA",
            authDomain: "testingproject-fd9f9.firebaseapp.com",
            projectId: "testingproject-fd9f9",
            storageBucket: "testingproject-fd9f9.appspot.com",
            messagingSenderId: "331286515467",
            appId: "1:331286515467:web:11070a381e3a075c361c0e"));
  } else {
    await Firebase.initializeApp();
  }
}
