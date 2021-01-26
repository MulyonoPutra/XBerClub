import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:xber_futsal_club_app/collapse_appbar.dart';

import 'mocks/messages.dart';

void main() {
  runApp(XberApp());
}

class XberApp extends StatefulWidget {
  @override
  _XberAppState createState() => _XberAppState();
}

class _XberAppState extends State<XberApp> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  final List<Messages> messages = [];

  @override
  void initState() {
    super.initState();
    firebaseMsg();
  }

  firebaseMsg() {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        final notification = message['notification'];
        setState(() {
          messages.add(Messages(
              title: notification['title'], body: notification['body']));
        });
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");

        final notification = message['data'];
        setState(() {
          messages.add(Messages(
            title: '${notification['title']}',
            body: '${notification['body']}',
          ));
        });
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CollapseAppBar(),
    );
  }
}
