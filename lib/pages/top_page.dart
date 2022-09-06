// import 'package:flutter/cupertino.dart';
import 'package:chat_app/model/user.dart';
import 'package:chat_app/pages/talk_room_page.dart';
import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<User> userList = [
    User(
        name: '田中',
        uid: 'abc',
        imagePath:
            'https://play-lh.googleusercontent.com/3ImQkiRynf23t3kZ3PMtmGNA0OaozdlzjkH0e2OTV_wmHxUdXglyGpnWuxqmofmMAw=w240-h480-rw',
        lastMessage: 'こんにちは'),
    User(name: '佐藤', uid: 'def', lastMessage: 'ありがとう'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('チャットアプリ')),
        body: ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              TalkRoomPage(userList[index].name)));
                },
                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: userList[index].imagePath == null
                              ? null
                              : NetworkImage(userList[index].imagePath!),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            userList[index].name,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(userList[index].lastMessage,
                              style: TextStyle(color: Colors.grey)),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
