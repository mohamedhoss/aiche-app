import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Viewer extends StatelessWidget {
  String url;
  String title;
  Viewer({this.url, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
