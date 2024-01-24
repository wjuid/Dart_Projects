import 'package:reflection/test.dart';

class TestCase {
  final String _test = 'hello';
  @test
  teststart() {
    print(_test);
  }

  @Test()
  testStop() {
    print("test stop");
  }
}
