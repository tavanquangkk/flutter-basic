import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_01/presentation/pages/auth/register.dart';
import 'package:flutter_basic_01/presentation/widgets/others/wave_clipper.dart';

class Login extends StatelessWidget {
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
            bottom: 200,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ログイン",
                    style: TextStyle(
                      color: Color(0xFF424242),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50),

                  // field
                  Text("メール"),
                  TextFormField(),
                  SizedBox(height: 20),

                  // field
                  Text("パスワード"),
                  TextFormField(),

                  SizedBox(height: 20),
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
                            "ログイン",
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
                      Text("アカウントをお持ちでない方？"),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: Text("新規登録"),
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
