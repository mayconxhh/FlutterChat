import 'package:flutter/material.dart';
import 'Package:flutter_chat/pages/camera_screen.dart';
import 'Package:flutter_chat/pages/chats_list.dart';
import 'Package:flutter_chat/pages/status_screen.dart';
import 'Package:flutter_chat/pages/calls_screen.dart';
import 'Package:flutter_chat/pages/contacts.dart';

class WhatsAppHome extends StatefulWidget {
	final cameras;
	WhatsAppHome(this.cameras);
	@override
	_WhatsAppHomeState createState() => new _WhatsAppHomeState();
}
class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

	TabController controller;

	@override
	void initState(){
		super.initState();
		controller = new TabController(
      length: 4,
      vsync: this,
      initialIndex: 1
    );
	}

	@override
	Widget build(BuildContext context) {
	 	return new Scaffold(
	 		appBar: new AppBar(
	 			title: new Text('FlutterChat'),
	 			bottom: new TabBar(
	 				tabs: <Widget>[
	 					new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: 'CHATS',
            ),
            new Tab(
              text: 'ESTADOS',
            ),
            new Tab(
              text: 'LLAMADAS',
            )
	 				],
	 				controller: controller,
	 			),
	 		),
	 		body: new TabBarView(
	 			children: <Widget>[
	 				new Camera(widget.cameras),
	 				new Chat(),
	 				new Status(),
	 				new Calls()
	 			],
	 			controller: controller,
	 		),
	 		floatingActionButton: new FloatingActionButton(
	 			backgroundColor: Theme.of(context).accentColor,
	 			child: new Icon(
	 				Icons.message,
	 				color: Colors.white,
	 			),
	 			onPressed: (){
	 				var route = new MaterialPageRoute(
	 					builder: (BuildContext context) => new Contact(),
	 				);
	 				Navigator.of(context).push(route);
	 			},
	 		),
	 	);			
	}
}