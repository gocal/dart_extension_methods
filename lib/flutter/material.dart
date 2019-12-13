extension FlutterMaterialNum<E> on num {
  num get q => this * 8;

  num get column => 4.q;
  num get margin => 4.q;
  num get gutter => 1.q;

  num get mu => this * 8;
}
