import 'package:getx_example/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 카운터의 값이 바뀌었다는 걸 해당 페이지 뿐만 아니라 다른 페이지에서도
// 조회할 수 있다는 것을 보여드리기 위한 페이지입니다.
// 단순히 컨트롤러를 가져와서 값을 보여주는 역할 밖에 하지 않습니다.
class CounterShowValuePage extends StatelessWidget {
  static final routeName = '/counter_show_value';

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.find<CounterController>();

    return Scaffold(
      body: Center(
        child: Obx(() => Text(
          '${controller.count}'
        )),
      ),
    );
  }
}