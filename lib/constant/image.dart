class ImageConstant {
  static ImageConstant? _instace;
  static ImageConstant get instance {
    if (_instace != null) return _instace!;
    _instace = ImageConstant._init();
    return _instace!;
  }

  ImageConstant._init();

  String get avatar => toPNG('hasan');

  String toPNG(name) => 'assets/images/$name.png';
}
