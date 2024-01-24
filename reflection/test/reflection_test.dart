import 'package:reflection/inspector.dart';
import 'package:reflection/test.dart';
import 'package:reflection/methodinvoker.dart';
import 'package:reflection/test_case.dart';

void main() {
  TypeInspector inspector = TypeInspector(TestCase);
  List methods = inspector.getAnnotatedMethods(test);
  MethodInvoker invoker = MethodInvoker();
  for (var method in methods) {
    try {
      invoker(method);
      print('Success ${method.simpleName}');
    } on Exception catch (ex) {
      print(ex);
    } on Error catch (ex) {
      print("$ex: ${ex.stackTrace}");
    }
  }
}
