import 'package:flutter/material.dart';
import 'video.dart';

class Entrance extends StatefulWidget {
  const Entrance({Key? key}) : super(key: key);
  static String id = "entrance";
  @override
  State<Entrance> createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: const EdgeInsets.only(left:20,right:20,bottom:0,top:30),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top:50,bottom:70),
                decoration: BoxDecoration(
                  color: Color(0xFFD1EEF3),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      child: Text('入力してください',
                        style: TextStyle(
                          color: Color(0xFF693636),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    _textField('ルームID:'),
                    _textField('パスワード:'),
                    _textField('名前:'),
                    _textField('目標:'),



                  ],
                ),
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.only(top:30,bottom:0),
                  child: ElevatedButton(
                      child: Text('参加する',
                        style: TextStyle(
                          color: Color(0xFF693636),
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Color(0xFFD1EEF3),

                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, Video.id);
                      })
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField(String hintText) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(),
              hintText: hintText),
        ));

  }
}