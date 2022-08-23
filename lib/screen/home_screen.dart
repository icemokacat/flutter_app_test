import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = 'https://www.black-cat.online';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Black-cat"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // 기본적으로 http 로 접속하는 것을 막고 있음
                if(controller == null){return;}
                controller!.loadUrl(homeUrl);
              },
              icon: Icon(
                Icons.home,
              )
          )
        ],
      ),
      body: WebView(
        // 웹뷰가 만들어 졌을때 실행
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
