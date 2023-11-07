

import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi{

  // instance of firebase messaging
  final _firebaseMessaging =FirebaseMessaging.instance;

  // function to initialize notifications
  Future<void> initNotifications() async{

    // request permission from user
    await _firebaseMessaging.requestPermission();

    // fetch firebase cloud messaging token for this device
    final fcmToken=await _firebaseMessaging.getToken();
    print("Token: $fcmToken");
  }

}