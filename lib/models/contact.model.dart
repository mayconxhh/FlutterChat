class ContactModel {
	final String name;
	String message;
	final String imageUrl;

	ContactModel({this.name, this.message, this.imageUrl});
}

List<ContactModel> contactData = [
	new ContactModel(
		name: 'Maycon Huayapa',
		message: 'Hola :d',
		imageUrl: 'http://mayconxhh.herokuapp.com/images/portafolio/avatar.jpg'
	),
	new ContactModel(
		name: "Hayley Williams",
		message: 'Hola :d',
		imageUrl: 'https://cdn.vox-cdn.com/thumbor/T1JedElfU7sg_CYS7DTAlrqEb9E=/0x0:1280x720/920x613/filters:focal(545x269:749x473):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/57225927/paramore_hard_times_source_youtube.0.jpg'
	),
	new ContactModel(
		name:  "Bebe Rexha Perez",
		message: 'Hola :d',
		imageUrl: 'https://nyppagesix.files.wordpress.com/2019/01/bebe-rexha.jpg?quality=90&strip=all&w=618&h=410&crop=1'
	),
	new ContactModel(
		name: "Cele Brando Pascua",
		message: 'Hola :d',
		imageUrl: 'http://mayconxhh.herokuapp.com/images/portafolio/mongodb.png'
	),
	new ContactModel(
		name: "Sandra Pascua",
		message: 'Hola :d',
		imageUrl: 'http://mayconxhh.herokuapp.com/images/portafolio/responsive.jpg'
	),
	new ContactModel(
		name: "Mirella Motta",
		message: 'Hola :d',
		imageUrl: 'http://adoptamedemo.herokuapp.com/image/jazz.jpg'
	)
];