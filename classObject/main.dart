class Car {
  String color;
  int weight;
  Car({this.color = 'white', this.weight = 1000});
}

class Collection {
  List _data;
  Collection() : _data = List.empty(growable: true);

  add(item) {
    _data.add(item);
  }
}

class Person {
  final String _name;
  Person(this._name);
  String greet(String who) => 'Hello $who. I am $_name.';
}

class Impostor implements Person {
  String get _name => '';
  String greet(String who) => 'Hi $who Do youy know who i am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  var some = new Car(color: 'blue', weight: 500);
  print('${some.color} , ${some.weight}');
  var colle = new Collection();
  var data = [1, 2, 3];
  data.forEach((item) {
    colle.add(item);
  });
  print('${colle._data}');
  if (colle.runtimeType == Collection) {
    print('The type of a is ${colle.runtimeType}');
  }
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
}
