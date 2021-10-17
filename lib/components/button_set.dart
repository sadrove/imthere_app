import 'package:flutter/material.dart';


class ButtonSet extends StatelessWidget {

  final String text;      // 버튼 텍스트
  final double width;     // 버튼 가로 너비
  final Widget gotoScreen;    // 클릭시 이동할 화면

  const ButtonSet({required this.text, required this.width, required this.gotoScreen});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => gotoScreen),
        );
        print('click!');
      },
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: 45,
        child: Text(
          "$text",
          style: const TextStyle(color: Colors.white,),
        ),
        decoration: BoxDecoration(
          color: const Color(0xFF14A38B),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
