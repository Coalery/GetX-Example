import 'package:counter_getx_example/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 플러터 프로젝트를 생성했을 때 기본적으로 나오는 카운터 예제 코드의 UI를 가져왔습니다.
class CounterPage extends StatelessWidget {
  static final routeName = '/counter';

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.find<CounterController>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            // [Obx] 위젯을 통해, 컨트롤러가 업데이트 될 때 다시 빌드해야하는 구간을 지정할 수 있습니다.
            // 이렇게 하면, 다른 부분은 다시 빌드되지 않고, 딱 아래 Obx 만 다시 빌드됩니다.
            // 하지만 Obx를 사용해서 다시 빌드하기 위해선, 해당 위젯 내에서 반응형 상태 관리를 사용해야 합니다.
            // 반응형 상태 관리를 위해선 그저 RxInt, RxString 등 미리 지정되어 있는 것을 사용할 수도 있고,
            // Rx<클래스>를 통해 우리가 정의한 객체에 대해서 반응형으로 상태 관리를 할 수 있습니다.
            // 만약 반응형 상태 관리가 아니라, 일반적인 상태 관리를 위해선 아래와 같이 코드를 바꾸면 됩니다.
            //
            // GetBuilder<CounterController>(
            //   builder: (controller) => Text(
            //     '${controller.count.value}'
            //   ),
            // )
            Obx(() => Text(
              '${controller.count.value}' // 이건 그냥 객체에서 값 가져오는 것 처럼 하면 됩니다.
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 컨트롤러의 메서드를 호출하여 상태를 변경할 수 있습니다.
          // 물론, 모든 컨트롤러의 메서드가 상태를 변경해야만 하는 것은 아닙니다.
          controller.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}