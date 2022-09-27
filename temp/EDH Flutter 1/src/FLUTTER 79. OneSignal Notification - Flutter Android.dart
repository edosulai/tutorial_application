import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //Remove this method to stop OneSignal Debugging
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.setAppId("8c69657e-8d62-4620-8435-715c7f9bb4f1");

  // The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    print("Accepted permission: $accepted");
  });

  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = "title";
  String content = "content";
  String url = "";

  @override
  void initState() {
    super.initState();

    OneSignal.shared.setNotificationWillShowInForegroundHandler(
        (OSNotificationReceivedEvent event) {
      setState(() {
        title = event.notification.title;
        content = event.notification.body;
        url = event.notification.bigPicture;
      });
    });

    OneSignal.shared.setNotificationOpenedHandler(
        (OSNotificationOpenedResult openedResult) {
      print("Notifikasi di-tap");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("One Signal Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title),
              const SizedBox(height: 20),
              Text(content),
              const SizedBox(height: 20),
              (url != "")
                  ? Container(
                      height: 393,
                      width: 700,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(url)),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
