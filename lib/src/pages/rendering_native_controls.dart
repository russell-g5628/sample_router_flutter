import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RenderNativeControl extends StatefulWidget {
  const RenderNativeControl({Key? key}) : super(key: key);

  @override
  _RenderNativeControlState createState() => _RenderNativeControlState();
}

class _RenderNativeControlState extends State<RenderNativeControl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AndroidView(
        viewType: 'plugins.flutter.io/google_maps',
        // onPlatformViewCreated: onPlatformViewCreated,
        // gestureRecognizers: gestureRecognizers,
        // creationParams: creationParams,
        creationParamsCodec: const StandardMessageCodec(),
      ),
    );
  }
}
