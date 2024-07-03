import 'package:flutter/material.dart';
import 'package:movie_info/main_app.dart';
import 'core/dependency_injection/injection.dart' as di;

void main() {
  initialize();
  runApp(MainApp());
}

void initialize(){
  di.init();
}
