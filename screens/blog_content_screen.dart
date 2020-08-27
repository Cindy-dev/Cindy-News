import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../model/news_response_model.dart';
import '../helper/news_api.dart';

class BlogContentScreen  extends StatefulWidget {
  final String webUrl;
  BlogContentScreen(this.webUrl);

  @override
  _BlogContentScreenState createState() => _BlogContentScreenState();
}

class _BlogContentScreenState extends State<BlogContentScreen> {
 
  final Completer<WebViewController>_completer = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Cindy'),
            Text('News', style: TextStyle(
              color: Colors.black,
            ),),
          ],
        ),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.save),
            ),
          ),
        ],
      ),
    body: FutureBuilder<NewsResponseModel>(
          future: NewsAPI().fetchNews(),
          builder: (ctx, dataSnapshot){
        if(dataSnapshot.hasData){
          return Container(
           child: WebView(
            initialUrl: widget.webUrl,
            onWebViewCreated: ((WebViewController webViewController){
            _completer.complete(webViewController);
          }),
        ),
        );
        }else{
          return Center(
              child: CircularProgressIndicator(
              strokeWidth: 2,
              backgroundColor: Colors.white,
              valueColor: new AlwaysStoppedAnimation(Colors.deepOrange),
            ),
          );
        }
      }
    ),
    );
  }
}