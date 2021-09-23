import 'package:getx_example/controller/person_controller.dart';
import 'package:getx_example/model/person.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowPersonPage extends StatelessWidget {
  static final routeName = '/show_person';

  @override
  Widget build(BuildContext context) {
    PersonController controller = Get.find<PersonController>();

    return Scaffold(
      body: FutureBuilder<List<Person>>(
        // 해당 페이지에 들어올 때 마다 새로 로딩합니다.
        // 만약 해당 페이지에서 다른 페이지로 갔다가 다시 돌아오는 경우 다시 렌더링되지 않는데,
        // 그때는 await가 붙은 다른 페이지로 가는 코드 아래에 setState(() {}); 를 붙여서
        // 해당 페이지로 돌아왔을 때 리렌더링 할 수 있습니다.
        future: controller.loadPeople(),
        builder: (_, snapshot) {
          if(snapshot.hasData) {
            List<Person> people = snapshot.data!;

            return ListView.builder(
              itemCount: people.length,
              itemBuilder: (_, index) => _PersonItem(
                person: people[index],
              )
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      )
    );
  }
}

class _PersonItem extends StatelessWidget {
  final Person person;

  _PersonItem({
    required this.person
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            person.name,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          Text(
            '${person.age}세',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14
            ),
          )
        ],
      ),
    );
  }
}