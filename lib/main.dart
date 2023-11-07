import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pushnoti_firebase/api/firebase_api.dart';
import 'package:pushnoti_firebase/firebase_options.dart';
import 'package:pushnoti_firebase/pages/home_page.dart';
import 'package:pushnoti_firebase/pages/notifications_page.dart';

final navigatorKey=GlobalKey<NavigatorState>();

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      navigatorKey: navigatorKey,
      routes: {
        '/notification_screen':(context)=>NotificationsPage(),

      },
    );
  }
}
