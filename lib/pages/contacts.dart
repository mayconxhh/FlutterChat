import 'package:flutter/material.dart';
import 'package:flutter_chat/models/contact.model.dart';
import 'package:flutter_chat/pages/chat_screen.dart';

class Contact extends StatefulWidget {
	@override
	_ContactState createState() => new _ContactState();
}
class _ContactState extends State<Contact> {
	@override
	Widget build(BuildContext context) {
	 	return new Scaffold(
	 		appBar: new AppBar(
	 			title: new Text('Seleccionar contacto'),
	 		),
	 		body: new ListView.builder(
	 			itemCount: contactData.length,
 				itemBuilder: (context, i) => new Column(
 					children: <Widget>[
 						new Divider(),
 						new ListTile(
 							leading: new CircleAvatar(
 								backgroundImage: NetworkImage(contactData[i].imageUrl),
 							),
 							title: new Row(
 								mainAxisAlignment: MainAxisAlignment.spaceBetween,
 								children: <Widget>[
 									new Text(
 										contactData[i].name,
 										style: new TextStyle(fontWeight: FontWeight.bold),
 									),
 									new Text(
		 								'MOBILE',
		 								style: new TextStyle(color: Theme.of(context).accentColor, fontSize: 14.0),
	 								)
 								],
 							),
 							subtitle: new Container(
 								padding: const EdgeInsets.only(top: 5.0),
 								child: new Text(
 									contactData[i].message,
 									style: new TextStyle(color: Colors.grey, fontSize: 15.0),
 								),
 							),
 							onTap: (){
 								var route = new MaterialPageRoute(
 									builder: (BuildContext context) => new ChatScreen(name: contactData[i].name, imageUrl: contactData[i].imageUrl),
 								);
 								Navigator.of(context).push(route);
 							},
 						)
 					],
 				),
	 		),
	 	);			
	}
}