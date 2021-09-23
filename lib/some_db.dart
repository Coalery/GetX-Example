import 'model/person.dart';

// 실제로 DB까지 구현하긴 애매하기 때문에, DB 역할을 하는 어떠한 클래스를 구현했습니다.
// Column이 name 과 age로 이루어진 하나의 테이블이라고 생각하시면 됩니다.
// 실제로는 데이터가 JSON으로 변환되어 전송 되어야합니다.
// 하지만 이 경우에선 생략합니다.
class SomeDB {
  static final List<Person> people = [
    Person(name: '홍길동', age: 10),
    Person(name: '러리', age: 20),
    Person(name: '또다른누군가', age: 30)
  ];
  
  static Future<void> addPerson(Person person) async {
    await Future.delayed(Duration(milliseconds: 500)); // 0.5초를 기다림
    people.add(person);
  }

  static Future<List<Person>> loadPeople() async {
    await Future.delayed(Duration(seconds: 2)); // 2초를 기다림
    return people;
  }
}