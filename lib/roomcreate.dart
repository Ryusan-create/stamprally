import 'package:flutter/material.dart';

class RoomCreate extends StatelessWidget {
  static String id = "roomcreate";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: const EdgeInsets.only(left:20,right:20,bottom:100),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top:50,bottom:60),
                decoration: BoxDecoration(
                  color: Color(0xFFD1EEF3),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                    ),
                    _textField('ルームID'),
                    _textField('パスワード'),
                    IconButton(
                        icon: Icon(Icons.share),
                        // シェアボタンをクリックしたときに呼ばれる処理
                        onPressed: () {}
                    ),


                  ],
                ),
              ),
              Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.only(top:30,bottom:0),
                  child: ElevatedButton(
                      child: Text('               参加する               ',
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