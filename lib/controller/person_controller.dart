import 'package:getx_example/model/person.dart';
import 'package:getx_example/some_db.dart';
import 'package:get/get.dart';

// 이 경우, 상태는 모두 DB에 있기 때문에 여기서 관리할 부분은 없습니다.
// 여기선 비지니스 로직 분리, 즉 관심사의 분리(SoC) 부분에 집중하시면 될 것 같습니다. 
class PersonController extends GetxController {
  Future<bool> createNewPerson(String name, String ageString) async {
    if(name.isEmpty) return false;
    
    int? age = int.tryParse(ageString);
    if(age == null) return false;

    final Person newPerson = Person(name: name, age: age);
    await SomeDB.addPerson(newPerson);

    return true;
  }

  Future<List<Person>> loadPeople() async {
    return await SomeDB.loadPeople();
  }
}