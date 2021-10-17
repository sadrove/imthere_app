import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CloseScreen extends StatelessWidget {
  const CloseScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            "assets/images/icon_close.svg",
            height: 40,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        }
    );
  }
}