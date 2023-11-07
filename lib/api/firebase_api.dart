import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:pushnoti_firebase/main.dart';

class FirebaseApi {

  // instance of firebase messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  // function to initialize notifications
  Future<void> initNotifications() async {
    // request permission from user
    await _firebaseMessaging.requestPermission();

    // fetch firebase cloud messaging token for this device
    final fcmToken = await _firebaseMessaging.getToken();
    print("Token: $fcmToken");

    initPushNotifications();
  }

  // function to handle received messages
  void handleMessage(RemoteMessage? message) {
    if (message == null) return;

    navigatorKey.currentState?.pushNamed(
      "/notification_screen", arguments: message,);
  }

  // function to initialize background settings
  Future initPushNotifications() async{
    // handle notifications if the app was terminated and now opened
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    // attach event listeners for when a notification opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }

}