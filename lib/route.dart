import 'package:getx_example/page/counter/async_counter_page.dart';
import 'package:getx_example/page/counter/counter_page.dart';
import 'package:getx_example/page/counter/counter_show_value_page.dart';
import 'package:getx_example/page/index_page.dart';
import 'package:getx_example/page/person/add_person_page.dart';
import 'package:getx_example/page/person/show_person_page.dart';
import 'package:get/get.dart';

// 라우트들을 정의한 리스트
List<GetPage> routes = [
  GetPage(
    name: '/', // 기본 페이지
    page: () => IndexPage()
  ),
  GetPage(
    name: IndexPage.routeName,
    page: () => IndexPage()
  ),
  GetPage(
    name: CounterPage.routeName,
    page: () => CounterPage()
  ),
  GetPage(
    name: AsyncCounterPage.routeName,
    page: () => AsyncCounterPage()
  ),
  GetPage(
    name: CounterShowValuePage.routeName,
    page: () => CounterShowValuePage()
  ),
  GetPage(
    name: AddPersonPage.routeName,
    page: () => AddPersonPage()
  ),
  GetPage(
    name: ShowPersonPage.routeName,
    page: () => ShowPersonPage()
  )
];