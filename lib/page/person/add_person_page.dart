import 'package:counter_getx_example/controller/person_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPersonPage extends StatelessWidget {
  static final routeName = '/add_person';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final PersonController personController = Get.find<PersonController>();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
          ),
          TextField(
            controller: ageController,
          ),
          TextButton(
            child: Text('Submit'),
            onPressed: () async {
              bool result = await personController.createNewPerson(
                nameController.text,
                ageController.text
              );

              if(result) {
                Get.snackbar('유저 추가에 성공하였습니다.', '성공입니다.');
                nameController.clear();
                ageController.clear();
              } else {
                Get.snackbar('유저 추가에 실패했습니다.', '무엇인가 잘못 입력되어 있습니다.');
              }
            }
          )
        ]
      )
    );
  }
}