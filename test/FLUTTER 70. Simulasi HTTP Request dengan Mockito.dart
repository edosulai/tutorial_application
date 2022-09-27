import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:tutorial_application/services/FLUTTER%2070.%20Simulasi%20HTTP%20Request%20dengan%20Mockito%20(person%20service).dart';
import 'package:tutorial_application/models/FLUTTER%2070.%20Simulasi%20HTTP%20Request%20dengan%20Mockito%20(person).dart';

class MockClient extends Mock with http.Client {}

void main() {
  http.Client client = MockClient();

  test("Test Ambil Data", () async {
    String id = "1";

    when(client.get(Uri.https('example.com', '/persons/$id'))).thenAnswer(
      (_) async => Future.value(
        http.Response('''{
          "id": $id,
          "name": "Dodi",
          "age": 20
        }''', 200),
      ),
    );

    Person person = await PersonService.getPersonById(id, client);
    expect(person, equals(const Person(id: 1, name: "Dodi", age: 20)));
  });

  test("Test Error", () async {
    String id = "1";

    when(client.get(Uri.https('example.com', '/persons/$id'))).thenAnswer(
      (_) async => Future.value(
        http.Response('''{
          "message": "Tidak ada akses"
        }''', 403),
      ),
    );

    expect(
      PersonService.getPersonById(id, client),
      throwsException,
    );
  });
}
