class StatusModel{
	final String name;
	final String time;
	final String imageUrl;

	StatusModel({this.name, this.time, this.imageUrl});
}

List<StatusModel> statusData = [
	new StatusModel(
		name: 'Maycon Huayapa',
		time: '13:05',
		imageUrl: 'http://mayconxhh.herokuapp.com/images/portafolio/avatar.jpg'
	),
	new StatusModel(
		name: "Hayley Williams",
		time: '13:05',
		imageUrl: 'https://cdn.vox-cdn.com/thumbor/T1JedElfU7sg_CYS7DTAlrqEb9E=/0x0:1280x720/920x613/filters:focal(545x269:749x473):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/57225927/paramore_hard_times_source_youtube.0.jpg'
	),
	new StatusModel(
		name:  "Bebe Rexha Perez",
		time: '13:05',
		imageUrl: 'https://nyppagesix.files.wordpress.com/2019/01/bebe-rexha.jpg?quality=90&strip=all&w=618&h=410&crop=1'
	),
	new StatusModel(
		name: "Mirella Motta",
		time: '13:05',
		imageUrl: 'http://adoptamedemo.herokuapp.com/image/jazz.jpg'
	)
];