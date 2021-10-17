import 'package:flutter/material.dart';
import 'package:imthere_app/components/close_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Listening"),
            centerTitle: true,
            leading: Container(),
            actions: <Widget>[
              CloseScreen()
            ]
        ),
        body: Center(
            child: Column(
              children: [
                SizedBox(height: 100.0),
                Text("지도 검색 화면"),
              ],
            )
        )
    );
  }
}