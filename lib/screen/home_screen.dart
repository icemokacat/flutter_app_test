import 'package:flutter/material.dart';

import '../element/ColorBlock.dart';


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
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // 1. spaceAround
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: ColorBlock().colorblocks
              ),
              // 2. one center
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.orange,
                    width: 50.0,
                    height: 50.0,
                  )
                ],
              ),
              // 3. all right
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: ColorBlock().colorblocks
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.green,
                    width: 50.0,
                    height: 50.0,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}