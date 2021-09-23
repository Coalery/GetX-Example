import 'package:counter_getx_example/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// `counter_page.dart`에서 1 추가하는 부분에 비동기만 적용한 것입니다.
class AsyncCounterPage extends StatelessWidget {
  static final routeName = '/async_counter';

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
            Obx(() => Text(
              '${controller.count}',
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 1초 후에 1을 더합니다.
          // 리턴하는 값이 없기 때문에, 굳이 async/await 를 붙이지 않아도 됩니다.
          // 리턴하는 값이 있는 예제는 Person 페이지 쪽으로 가시면 있습니다.
          controller.incrementAfter(Duration(seconds: 1));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}