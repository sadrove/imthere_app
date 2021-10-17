import 'package:flutter/material.dart';
import 'package:imthere_app/screens/listen_screen.dart';

class StreamListBox extends StatelessWidget {
  final String imagePath;
  final String profileImg;
  final String profileName;
  final String location;
  final String tag1;
  final String tag2;
  final String audienceCount;
  final String chatCount;

  const StreamListBox({
    required this.imagePath,
    required this.profileImg,
    required this.profileName,
    required this.location,
    required this.tag1,
    required this.tag2,
    required this.audienceCount,
    required this.chatCount
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: const Color(0xFFC4C4C4), width: 1),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFC4C4C4),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ListenScreen()
            ),
          );
        },
        child: Row(
          children: [
            // 방송 대표 사진
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
              child: Image.asset(
                "$imagePath",
                fit:BoxFit.cover,
                width: 150,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,   // 왼쪽 정렬
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("$profileImg"),
                      ),
                      const SizedBox(width: 10.0),
                      Text("$profileName"),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Text("@" + "$location"),
                  const SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,   // 왼쪽 정렬
                    children: [
                      Text(
                        "#" + "$tag1",
                        style: const TextStyle(
                          color: Color(0xFF7B7B7B),
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "#" + "$tag2",
                        style: const TextStyle(
                          color: Color(0xFF7B7B7B),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.account_box,
                        color: Color(0xFFC4C4C4),
                        size: 20.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        "$audienceCount",
                        style: const TextStyle(
                          color: Color(0xFF7B7B7B),
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      const Icon(
                        Icons.comment,
                        color: Color(0xFFC4C4C4),
                        size: 20.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        "$chatCount",
                        style: const TextStyle(
                          color: Color(0xFF7B7B7B),
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}