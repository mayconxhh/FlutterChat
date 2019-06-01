class ChatModel{
	final String name;
	String message;
	final String time;
	final String imageUrl;

	ChatModel({this.name, this.message, this.time, this.imageUrl});
}

List<ChatModel> messageData = [
	new ChatModel(
		name: 'Maycon Huayapa',
		message: 'Hola :d',
		time: '13:05',
		imageUrl: 'http://mayconxhh.herokuapp.com/images/portafolio/avatar.jpg'
	),
	new ChatModel(
		name: "Hayley Williams",
		message: 'Hola :d',
		time: '13:05',
		imageUrl: 'https://cdn.vox-cdn.com/thumbor/T1JedElfU7sg_CYS7DTAlrqEb9E=/0x0:1280x720/920x613/filters:focal(545x269:749x473):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/57225927/paramore_hard_times_source_youtube.0.jpg'
	),
	new ChatModel(
		name:  "Bebe Rexha Perez",
		message: 'Hola :d',
		time: '13:05',
		imageUrl: 'https://nyppagesix.files.wordpress.com/2019/01/bebe-rexha.jpg?quality=90&strip=all&w=618&h=410&crop=1'
	),
	new ChatModel(
		name: "Cele Brando Pascua",
		message: 'Hola :d',
		time: '13:05',
		imageUrl: 'http://mayconxhh.herokuapp.com/images/portafolio/mongodb.png'
	),
	new ChatModel(
		name: "Sandra Pascua",
		message: 'Hola :d',
		time: '13:05',
		imageUrl: 'http://mayconxhh.herokuapp.com/images/portafolio/responsive.jpg'
	),
	new ChatModel(
		name: "Mirella Motta",
		message: 'Hola :d',
		time: '13:05',
		imageUrl: 'http://adoptamedemo.herokuapp.com/image/jazz.jpg'
	)
];