import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:webview_universal/webview_universal.dart';

class NEWS extends StatefulWidget {
  @override
  State<NEWS> createState() => _NEWSState();
}

class _NEWSState extends State<NEWS> {
  TextEditingController mesgcontroler = TextEditingController();
  TextEditingController namecontroler = TextEditingController();
  WebViewController Controller = WebViewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(child: WebView(controller: Controller)));
  }
}
