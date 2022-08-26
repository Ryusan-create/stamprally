import 'package:flutter/material.dart';
import 'package:stamprally/roomcreate.dart';

class LogIn extends StatelessWidget {
  static String id = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 100),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, bottom: 60),
                decoration: BoxDecoration(
                  color: Color(0xFFD1EEF3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      child: Text('入力してください'),
                    ),
                    _textField('時間　　例：12:00~14:00'),
                    _textField('休憩時間　　例：30'),
                    _textField('名前:'),
                    _textField('目標:'),
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.only(top: 30, bottom: 0),
                  child: ElevatedButton(
                      child: Text(
                        'ルーム作成する',
                        textAlign: TextAlign.center,
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
                        Navigator.pushNamed(context, RoomCreate.id);
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