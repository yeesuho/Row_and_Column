import 'package:flutter/material.dart';
import 'package:row_and_column/const/colors.dart';

// 차지할 수 있는 최대 사이즈 double.infinity
// Expended() 위젯 : child 요소를 렌더링 영역의 최대 사이즈까지 확장시켜 주는 위젯, 여러개 쓰면 동등한 비율을 가짐
// Flexible() 위젯 : 공간 내에서 유연하게(꽉 채울 수도, 아닐 수도 있다)
// Flexible은 자식 위젯이 남은 공간보다 크다면 줄여주고 작다면 그대로 둠(fit 속성에 따라 다름)
// fit: FlexFit.loose (기본값): 자식 위젯의 원래(원하는) 크기를 우선 존중하고 남는 공간이 있으면 그 범위 안에서 늘어날 수도 있는 필요한 만큼만 공간을 차지함
// 예를 들어 Flex.loose일때 50x50 박스를 만들었을때 박스의 크기 만큼 Flex 위젯이 차지하게 됨 하지만 여기서 flex 크기를 조절했을때 Column이나 Row 안에서 사용되는 Expanded 위젯과 Flexible 위젯은 모두 비율을 존중해야함, 모두가 Expanded 1:1:1 비율로 flex 값이 적용 됐다면 굉장히 쉬움, 모두가 같은 공간을 나눠 갖으면 됨 하지만 Flexible1:Expanded1:Expanded1이 적용이 된다면 Flex 룰에 의해서 모두 똑같은 공간을 나눠 갖기는 하지만 Flexible은 자식 위젯이 최소한의 공간만 차지하기 때문에 50x50의 공간만 차지하게 되고 나머지 Expanded 위젯은 Flexible 위젯이 얼마나 적은 공간을 실제 차지했는지와 무관하게 1:1:1 비율을 기준으로 위젯의 크기가 정해짐
// fit: FlexFit.tight : Expanded와 똑같이 동작 남은 공간을 강제로 꽉채움(Expanded = fit: FlexFit.tight)
// Expanded는 Flexible을 extend 상속하고 있음

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
