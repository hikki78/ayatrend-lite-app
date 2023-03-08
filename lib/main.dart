import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


void main () => runApp(MyApp());
class MyApp extends StatelessWidget {
  late WebViewController _controller;
  @override
  Widget build (BuildContext context){
    return MaterialApp(
        title: "AyaTrend" ,
        theme: ThemeData(
        primarySwatch: Colors.purple ,
        primaryColor: Colors.amber ,
        accentColor: Colors.cyan ,
        backgroundColor: Colors.black ,
      ),
        home: Scaffold(
         appBar: AppBar(
         title: Text("AyaTrend"),
    ),
         body: Center(
         child: WebView(
            initialUrl: "https://anilist.co/" ,
        javascriptMode: JavascriptMode.unrestricted,
         onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
    },
    )
    )
    )

    );
  }



}

//   class MaterialApp (
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       body: SafeArea(
//           child: WebView(
//             initialUrl: "https://anilist.co/",
//             javascriptMode: JavascriptMode.unrestricted,
//           )),
//     ),
//   )
//   );
// }