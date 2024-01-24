part of assembly.dart;

@deprecated
class AssemblyLine {
  List _items = [];

  //Add [item] to line
  add(item) {
    _items.add(item);
  }

  //Make operation on all  items in line.

  make(operation) {
    _items.forEach((item) {
      operation(item);
    });
  }
}
