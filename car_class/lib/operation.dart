part of assembly.dart;

class Operation<E extends Car> implements Function {
  //OPeration mame
  final String name;
  //careate new operation with [name]
  Operation(this.name);
  //we call our function here
  call(E car) {
    print('Make ${name} on ${car}');
  }
}

class Assembly<E extends Car> {
  Assembly() : super();
}
