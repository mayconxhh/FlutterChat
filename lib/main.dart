import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_chat/whatsapp_home.dart';
import 'package:camera/camera.dart';


List<CameraDescription> cameras;

Future<Null> main() async {
	cameras = await availableCameras();
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
  		title: 'FlutterChat',
    	theme: new ThemeData(
    		primaryColor: new Color(0xff075E54),
    		accentColor: new Color(0xff25D366),
    	),
    	debugShowCheckedModeBanner: false,
    	home: new WhatsAppHome(cameras),
    );
  }
}