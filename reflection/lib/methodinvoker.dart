library executor;

import 'dart:mirrors';

class MethodInvoker {
  call(MethodMirror method) {
    ClassMirror classMirror = method.owner as ClassMirror;
    InstanceMirror inst = classMirror.newInstance(Symbol(' '), []);
    inst.invoke(method.simpleName, []);
  }
}
