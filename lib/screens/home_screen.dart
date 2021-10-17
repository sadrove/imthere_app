import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:imthere_app/components/button_set.dart';
import 'package:imthere_app/screens/broadcast_screen.dart';
import 'package:imthere_app/screens/listen_screen.dart';
import 'package:imthere_app/screens/search_screen.dart';
import 'package:imthere_app/components/stream_list_box.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildHomeAppBar(context),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10,20,10,0),
        child: ListView(
          children: const [
            SizedBox(height: 10.0),
            StreamListBox(
              imagePath: "assets/images/there_sample.png",  // 방송 대표 사진
              profileImg: "assets/images/avatar_sample2.png",    // 프로필 이미지
              profileName: "Ryan H",
              location: "New York",    // 방송 위치
              tag1: "Manhattan",    // 태그 1
              tag2: "Time Squares",    // 태그 2
              audienceCount: "209",    // 청취자 수
              chatCount: "4897",    // 채팅 수
            ),
            SizedBox(height: 25.0),
            StreamListBox(
              imagePath: "assets/images/there_sample2.png",  // 방송 대표 사진
              profileImg: "assets/images/avatar_sample3.png",    // 프로필 이미지
              profileName: "Ciel Park",
              location: "Seoul",    // 방송 위치
              tag1: "BLACK PINK",    // 태그 1
              tag2: "Korean Idol Star",    // 태그 2
              audienceCount: "42",    // 청취자 수
              chatCount: "984",    // 채팅 수
            ),
            SizedBox(height: 25.0),
            StreamListBox(
              imagePath: "assets/images/there_sample.png",  // 방송 대표 사진
              profileImg: "assets/images/avatar_sample2.png",    // 프로필 이미지
              profileName: "Ryan H",
              location: "New York",    // 방송 위치
              tag1: "Manhattan",    // 태그 1
              tag2: "Time Squares",    // 태그 2
              audienceCount: "209",    // 청취자 수
              chatCount: "4897",    // 채팅 수
            ),
            SizedBox(height: 25.0),
            StreamListBox(
              imagePath: "assets/images/there_sample2.png",  // 방송 대표 사진
              profileImg: "assets/images/avatar_sample3.png",    // 프로필 이미지
              profileName: "Ciel Park",
              location: "Seoul",    // 방송 위치
              tag1: "BLACK PINK",    // 태그 1
              tag2: "Korean Idol Star",    // 태그 2
              audienceCount: "42",    // 청취자 수
              chatCount: "984",    // 채팅 수
            ),
            SizedBox(height: 25.0),
            StreamListBox(
              imagePath: "assets/images/there_sample.png",  // 방송 대표 사진
              profileImg: "assets/images/avatar_sample2.png",    // 프로필 이미지
              profileName: "Ryan H",
              location: "New York",    // 방송 위치
              tag1: "Manhattan",    // 태그 1
              tag2: "Time Squares",    // 태그 2
              audienceCount: "209",    // 청취자 수
              chatCount: "4897",    // 채팅 수
            ),
            SizedBox(height: 25.0),
            StreamListBox(
              imagePath: "assets/images/there_sample2.png",  // 방송 대표 사진
              profileImg: "assets/images/avatar_sample3.png",    // 프로필 이미지
              profileName: "Ciel Park",
              location: "Seoul",    // 방송 위치
              tag1: "BLACK PINK",    // 태그 1
              tag2: "Korean Idol Star",    // 태그 2
              audienceCount: "42",    // 청취자 수
              chatCount: "984",    // 채팅 수
            ),
            SizedBox(height: 25.0),
            StreamListBox(
              imagePath: "assets/images/there_sample.png",  // 방송 대표 사진
              profileImg: "assets/images/avatar_sample2.png",    // 프로필 이미지
              profileName: "Ryan H",
              location: "New York",    // 방송 위치
              tag1: "Manhattan",    // 태그 1
              tag2: "Time Squares",    // 태그 2
              audienceCount: "209",    // 청취자 수
              chatCount: "4897",    // 채팅 수
            ),
            SizedBox(height: 25.0),
            StreamListBox(
              imagePath: "assets/images/there_sample2.png",  // 방송 대표 사진
              profileImg: "assets/images/avatar_sample3.png",    // 프로필 이미지
              profileName: "Ciel Park",
              location: "Seoul",    // 방송 위치
              tag1: "BLACK PINK",    // 태그 1
              tag2: "Korean Idol Star",    // 태그 2
              audienceCount: "42",    // 청취자 수
              chatCount: "984",    // 채팅 수
            ),
            SizedBox(height: 25.0),
/*
              const ButtonSet(
                text: "search",
                width: 150.0,
                gotoScreen: SearchScreen(),
              ),
              SizedBox(height: 10.0),
 */
          ],
        ),
      ),
    );
  }

  AppBar _buildHomeAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        "I'm There",
        style: TextStyle(
          color: Color(0xFF14A38B),
          fontFamily: 'Gluten',
          fontWeight: FontWeight.w300,
          fontSize: 25,
        ),
      ),

/*
// 타이틀을 이미지로 사용할 경우
      title: SvgPicture.asset(
        "assets/images/logo_imthere.svg",
        height: 40,
      ),

 */
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.speaker_phone,
          color: Color(0xFF14A38B),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BroadcastScreen()),
          );
        },
      ),
      actions: <Widget>[
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                barrierDismissible: false,    // 사용자가 다이얼로그 바깥을 터치해도 닫히지 않음.
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Profile"),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget> [
                          Text('더보기가 오른쪽에서 나올 예정'),
                          Text('언젠간 만들겠지 ㅋㅋ'),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: Text('이제 그만 닫아주시요.'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                }
            );
            print('아바타 누름');
          },
          child: const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/avatar_sample.png'),
          ),
        ),
        const SizedBox(width: 10),
      ],
/*
      title: Text(
        "test",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
      ),
*/
    );
  }
}
