import 'package:flutter/material.dart';
import 'package:imthere_app/components/close_screen.dart';

class BroadcastScreen extends StatelessWidget {
  const BroadcastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Broadcast Setting"),
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
                Text("방송하기 시작 화면"),
              ],
            )
        )
    );
  }
}