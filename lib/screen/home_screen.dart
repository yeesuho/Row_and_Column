import 'package:flutter/material.dart';
import 'package:row_and_column/const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
// DRY - Do Not Repeat Yourself (반복되는 코드를 작성하지 말라)
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: colors.map((e)=>Container(
                  height: 50,
                  width: 50,
                  color: e,
                )).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.orange,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: colors.map((e)=> Container(
                  width: 50,
                  height: 50,
                  color: e,
                )).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
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
