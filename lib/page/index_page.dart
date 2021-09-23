import 'package:getx_example/controller/counter_controller.dart';
import 'package:getx_example/controller/person_controller.dart';
import 'package:getx_example/page/counter/async_counter_page.dart';
import 'package:getx_example/page/counter/counter_page.dart';
import 'package:getx_example/page/counter/counter_show_value_page.dart';
import 'package:getx_example/page/person/add_person_page.dart';
import 'package:getx_example/page/person/show_person_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexPage extends StatelessWidget {
  static final routeName = '/index';

  @override
  Widget build(BuildContext context) {
    Get.put(CounterController()); // 전역적으로 사용하기 위해 루트 페이지에서 컨트롤러를 등록합니다.
    Get.put(PersonController());

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              child: Text('Counter Page'),
              onPressed: () => Get.toNamed(CounterPage.routeName),
            ),
            TextButton(
              child: Text('Async Counter Page'),
              onPressed: () => Get.toNamed(AsyncCounterPage.routeName),
            ),
            TextButton(
              child: Text('Counter Show Value Page'),
              onPressed: () => Get.toNamed(CounterShowValuePage.routeName),
            ),
            TextButton(
              child: Text('Add Person Page'),
              onPressed: () => Get.toNamed(AddPersonPage.routeName),
            ),
            TextButton(
              child: Text('Show Person Page'),
              onPressed: () => Get.toNamed(ShowPersonPage.routeName),
            ),
          ],
        ),
      ),
    );
  }
}