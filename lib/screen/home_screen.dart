import 'package:flutter/material.dart';


// widget
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Row(
            // MainAxisAligenment - 주축 정렬 (Column 일때 세로 row 일때 가로)
            // spaceBetween : 위젯과 위젯의 사이가 동일하게 배치
            // spaceEvenly  : 위젯을 같은 간격으로 배치하지만 끝과 끝에도 빈간격을 줌
            // spaceAround  : spaceEvenly + 끝간격은 반으로 적용
            mainAxisAlignment: MainAxisAlignment.start,
            // stretch - 최대한으로 늘린다.
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.red,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.orange,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.yellow,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}