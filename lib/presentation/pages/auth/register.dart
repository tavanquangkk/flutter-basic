import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_01/presentation/pages/auth/login.dart';
import 'package:flutter_basic_01/presentation/widgets/others/wave_clipper.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 168, 106),
      body: Stack(
        children: [
          // wave part
          Column(
            children: [
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  child: Image.asset(
                    "assets/images/bg.png",
                    width: double.infinity,
                  ),
                ),
              ),
            ],
          ),
          // title and description
          Positioned(
            left: 0,
            right: 0,
            bottom: 190,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "新規登録",
                    style: TextStyle(
                      color: Color(0xFF424242),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),

                  // field
                  Text("メール"),
                  TextFormField(),
                  SizedBox(height: 20),

                  // field
                  Text("名前"),
                  TextFormField(),
                  SizedBox(height: 20),

                  // field
                  Text("パスワード"),
                  TextFormField(),

                  SizedBox(height: 20),

                  // field
                  Text("パスワード確認"),
                  TextFormField(),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 80,
            left: 0,
            right: 0,

            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.orangeAccent,
                        elevation: 6,
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFF8A65), // サーモンオレンジ
                              Color(0xFFF4511E), // 濃いめオレンジ
                            ],
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "新規登録",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("すでにアカウントをお持ちの方？"),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Text("ログイン"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
