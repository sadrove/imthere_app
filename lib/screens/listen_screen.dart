import 'package:flutter/material.dart';
import 'package:imthere_app/components/close_screen.dart';

class ListenScreen extends StatelessWidget {
  const ListenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Listening"),
            centerTitle: true,
            leading: Container(),
            actions: const <Widget>[
              CloseScreen()
            ]
        ),
        body: Center(
            child: Column(
              children: const [
                SizedBox(height: 100.0),
                Text("청취 화면"),
              ],
            )
        )
    );
  }
}