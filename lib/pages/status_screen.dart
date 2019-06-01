import 'package:flutter/material.dart';
import 'package:flutter_chat/models/status.model.dart';

class Status extends StatefulWidget {
	@override
	_StatusState createState() => new _StatusState();
}
class _StatusState extends State<Status> {
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			body: new ListView(
				children: <Widget>[
					new ListTile(
						leading: new CircleAvatar(
							foregroundColor: Theme.of(context).accentColor,
							backgroundColor: Colors.grey,
							backgroundImage: new NetworkImage(statusData[0].imageUrl),
						),
						title: new Text(
							statusData[0].name,
							style: new TextStyle(fontWeight: FontWeight.bold),
						),
						subtitle: new Text("Añadir a mi estado"),
					),
					new Text(
						"Recientes",
						style: new TextStyle(
							fontWeight: FontWeight.bold,
							color: Theme.of(context).primaryColor,
						),
					),
					new ListTile(
						leading: new CircleAvatar(
							foregroundColor: Theme.of(context).accentColor,
							backgroundColor: Colors.grey,
							backgroundImage: new NetworkImage(statusData[1].imageUrl),
						),
						title: new Text(
							statusData[1].name,
							style: new TextStyle(fontWeight: FontWeight.bold),
						),
						subtitle: new Text("Añadir a mi estado"),
					),
					new Divider(),
					new ListTile(
						leading: new CircleAvatar(
							foregroundColor: Theme.of(context).accentColor,
							backgroundColor: Colors.grey,
							backgroundImage: new NetworkImage(statusData[2].imageUrl),
						),
						title: new Text(
							statusData[2].name,
							style: new TextStyle(fontWeight: FontWeight.bold),
						),
						subtitle: new Text("Añadir a mi estado"),
					),
					new Divider(),
					new ListTile(
						leading: new CircleAvatar(
							foregroundColor: Theme.of(context).accentColor,
							backgroundColor: Colors.grey,
							backgroundImage: new NetworkImage(statusData[3].imageUrl),
						),
						title: new Text(
							statusData[3].name,
							style: new TextStyle(fontWeight: FontWeight.bold),
						),
						subtitle: new Text("Añadir a mi estado"),
					),
				],
			),
		);			
	}
}