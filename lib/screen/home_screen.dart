import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  DateTime selectedDate = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 앱 상단 상태바
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
        backgroundColor: Colors.pink[100],
        body: SafeArea(
          bottom: false,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                _TopPart(
                  selectedDate: selectedDate,
                  onPressed: onHeartPressed,
                ),
                _BottomPart()
              ],
            ),
          ),
        ));
  }

  void onHeartPressed () {
    final DateTime now = DateTime.now();

    // dialog
    showCupertinoDialog(
        context: context,
        barrierDismissible: true, // 위젯 영역 밖을 클릭하면 닫힘
        builder: (BuildContext context) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // 특정 위젯이 어디에 정렬해야 할지 모르면 모든 영역을 차지함
              color: Colors.white,
              height: 300.0,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: selectedDate,
                maximumDate: DateTime(
                    now.year,
                    now.month,
                    now.day
                ),
                onDateTimeChanged: (DateTime date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
              ),
            ),
          );
        });
  }
}

class _TopPart extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPressed;

  _TopPart({required this.selectedDate,required this.onPressed, Key? key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'U&I',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'parisienne',
              fontSize: 80.0,
            ),
          ),
          Column(
            children: [
              Text(
                '우리 처음 만난날',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sunflower',
                  fontSize: 30.0,
                ),
              ),
              Text(
                '${selectedDate.year}.${selectedDate.month}.${selectedDate.day}',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sunflower',
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          IconButton(
            iconSize: 60.0,
            onPressed: onPressed,
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          Text(
            'D+${DateTime(now.year, now.month, now.day).difference(selectedDate).inDays + 1}',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'sunflower',
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Image.asset(
      'asset/img/middle_image.png',
    ));
  }
}
