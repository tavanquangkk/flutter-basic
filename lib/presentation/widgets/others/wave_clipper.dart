import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getPath(Size size) {
    var path = Path();

    // 1. パスの開始点 (左上)
    path.lineTo(0, size.height * 0.8); // 波の開始高さ (左端)

    // --- 3次ベジェ曲線 (cubicTo) でS字カーブを描画 ---

    // 2. 最初のコントロールポイント (左側のカーブの制御点)
    //    X: 画面幅の 1/4,  Y: 波の頂点 (高さ 70%)
    var firstControlPoint = Offset(size.width / 4, size.height * 0.7);

    // 3. 2番目のコントロールポイント (右側のカーブの制御点)
    //    X: 画面幅の 3/4,  Y: 波の谷 (高さ 90%)
    var secondControlPoint = Offset(size.width * (3 / 4), size.height * 0.9);

    // 4. パスの終点 (右端)
    //    X: 画面幅, Y: 終点の高さ (80%)
    var endPoint = Offset(size.width, size.height * 0.8);

    // 1 -> 2 -> 3 -> 4 を結ぶ滑らかなS字カーブを描画
    path.cubicTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      secondControlPoint.dx,
      secondControlPoint.dy,
      endPoint.dx,
      endPoint.dy,
    );

    // --- パスを閉じる ---
    path.lineTo(size.width, 0); // 右上へ
    path.lineTo(0, 0); // 左上へ
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

  // 必須 (3)
  @override
  Path getClip(Size size) {
    return getPath(size);
  }
}
