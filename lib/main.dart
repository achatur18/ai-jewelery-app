import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:jewel/home.dart';

List<CameraDescription>? cameras;
// List<>;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red[300]),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

