import 'package:flutter/material.dart';

abstract class WaveClipper extends CustomClipper<Path> {
  @override
  Path getPath(Size size) {
    var path = Path();

    // パスの開始点 (左上)
    path.lineTo(0, 0);

    // 左端の線
    path.lineTo(0, size.height * 0.85); // 左下の開始点 (少し上)

    // --- 波形のカーブ ---
    // コントロールポイント（カーブの頂点）を画面中央の最下部に設定
    var firstControlPoint = Offset(size.width / 2, size.height);
    // カーブの終点を右端の同じ高さに設定
    var firstEndPoint = Offset(size.width, size.height * 0.85);

    // 2次ベジェ曲線を描画
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    // 右端の線
    path.lineTo(size.width, size.height * 0.85);
    path.lineTo(size.width, 0); // 右上に戻る

    // パスを閉じる
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // 今回は静的なのでfalse
  }
}
