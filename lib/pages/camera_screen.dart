import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Camera extends StatefulWidget {
	final List<CameraDescription> cameras;

	Camera(this.cameras);

	@override
	_CameraState createState() => new _CameraState();
}
class _CameraState extends State<Camera> {
	CameraController _controller;

	@override
	initState(){
		super.initState();
		_controller = new CameraController(widget.cameras[0], ResolutionPreset.medium);
		_controller.initialize().then((_){
			if(!mounted){
				return;
			}

			setState((){});
		});
	}

	@override
	void dispose(){
		_controller?.dispose();
		super.dispose();
	}

	@override
	Widget build(BuildContext context) {
		if(!_controller.value.isInitialized){
			return new Container();
		}

	 	return new AspectRatio(
	 		aspectRatio: _controller.value.aspectRatio,
	 		child: new CameraPreview(_controller),
	 	);
	}
}