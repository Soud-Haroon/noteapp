import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:noteapp/main.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("NoteApp"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            flutterLocalNotificationsPlugin.show(
                0,
                "Testing",
                "How you doing ?",
                NotificationDetails(
                    android: AndroidNotificationDetails(
                  channel.id,
                  channel.name,
                  channelDescription: "Hello World",
                  importance: Importance.high,
                  color: Colors.blue,
                  playSound: true,
                  icon: '@mipmap/ic_launcher',
                )));
          },
          label: const Text("Push Note")),
    );
  }
}
