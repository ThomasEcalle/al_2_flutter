void main() {
  print('1');
  Future.delayed(Duration.zero, () {
    print('2');
  });
  print('3');
}