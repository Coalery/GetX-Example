import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count++; // 1을 더합니다.
    update(); // 해당 컨트롤러를 사용하는 모든 위젯을 리렌더링합니다. (저는 보통 Obx를 씁니다.)
  }

  void incrementAfter(Duration delayDuration) async {
    await Future.delayed(delayDuration); // 지정한 시간만큼 기다린 후에
    count++; // 1 더하고
    update(); // 리렌더링 합니다.
  }
}