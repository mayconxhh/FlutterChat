import 'package:flutter/material.dart';
import 'package:flutter_chat/models/chat.model.dart';
import 'package:flutter_chat/models/contact.model.dart';

class ChatScreen extends StatefulWidget {
	final String name;
	final String imageUrl;

	ChatScreen({this.name, this.imageUrl});
	@override
	_ChatScreenState createState() => new _ChatScreenState();
}
class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
	final TextEditingController _textController = new TextEditingController();
	final List<ChatMessage> _messages = <ChatMessage>[];
	bool isTyped = false;

	void _handleSubmit(String text){
		_textController.clear();
		setState(() {
			isTyped = false;
		});

		ChatMessage message = new ChatMessage(
			imageUrl: widget.imageUrl,
			name: widget.name,
			animationController: new AnimationController(
				duration: new Duration(milliseconds: 700),
				vsync: this,
			),
			text: text
		);

		setState(() {
			_messages.insert(0, message);
			var messageP = messageData.firstWhere((t) => t.name == widget.name);
			messageP.message = message.text;
			var messageC = contactData.firstWhere((t) => t.name == widget.name);
			messageC.message = message.text;
		});

		message.animationController.forward();

	}

	Widget _buildTextComposer(){
		return new IconTheme(
			data: new IconThemeData(
				color: Theme.of(context).accentColor,
			),
			child: new Container(
				child: new Row(
					children: <Widget>[
						new Flexible(
							child: new TextField(
								controller: _textController,
								onChanged: (String text){
									setState(() {

										isTyped = text.length > 0;

									});
								},
								decoration: new InputDecoration.collapsed(hintText: "Enviar mensaje"),
							),
						),
						new Container(
							child: new IconButton(
								icon: new Icon(
									Icons.send,
									
								),
								onPressed: isTyped ? () => _handleSubmit(_textController.text) : null,
							),
						)
					],
				),
			),
		);
	}
	
	@override
	Widget build(BuildContext context) {
	 	return new Scaffold(
	 		appBar: new AppBar(
	 			title: new Text(widget.name),
	 		),
	 		body: new Container(
	 			child: new Column(
	 				children: <Widget>[
	 					new Flexible(
	 						child: new ListView.builder(
	 							padding: new EdgeInsets.all(8.0),
	 							reverse: true,
	 							itemBuilder: (_, int index) => _messages[index],
	 							itemCount: _messages.length,
	 						),
	 					),
	 					new Divider(height: 1.0),
	 					new Container(
	 						child: _buildTextComposer(),
	 					)
	 				],
	 			),
	 		),
	 	);			
	}
}

class ChatMessage extends StatelessWidget {
	ChatMessage({this.imageUrl, this.name, this.animationController, this.text});
	final String imageUrl;
	final String name;
	final AnimationController animationController;
	final String text;

	@override
	Widget build(BuildContext context) {
		return new SizeTransition(
			sizeFactor: new CurvedAnimation(
				parent: animationController,
				curve: Curves.easeOut
			),
			child: new Container(
				margin: const EdgeInsets.symmetric(vertical: 10.0),
				child: new Row(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: <Widget>[
						new Container(
							margin: const EdgeInsets.only(right: 16.0),
							child: new CircleAvatar(
								backgroundImage: NetworkImage(imageUrl),
							),
						),
						new Expanded(
							child: new Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: <Widget>[
									new Text(
										name,
										style: Theme.of(context).textTheme.subhead 
									),
									new Container(
										margin: const EdgeInsets.only(top: 5.0),
										child: new Text(text),
									),
								],
							),
						)
					],
				),
			),
		);
	}
}