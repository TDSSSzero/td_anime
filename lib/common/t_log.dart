import 'package:logger/logger.dart';

class TLog extends Logger{

  static final TLog _instance = TLog._internal();

  factory TLog(){
    return _instance;
  }

  TLog._internal();

}
