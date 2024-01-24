library test;

const String test = "test";

class Test {
  final bool include;
  @test
  const Test({this.include = true});
  @override
  String toString() => 'test';
}
