import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<DataStruct> _data = [
    DataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Saravana\",\"Age\":\"26\"}')),
    DataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Mani\",\"Age\":\"34\"}')),
    DataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Siva\",\"Age\":\"35\"}')),
    DataStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Hari\",\"Age\":\"20\"}'))
  ];
  List<DataStruct> get data => _data;
  set data(List<DataStruct> value) {
    _data = value;
  }

  void addToData(DataStruct value) {
    data.add(value);
  }

  void removeFromData(DataStruct value) {
    data.remove(value);
  }

  void removeAtIndexFromData(int index) {
    data.removeAt(index);
  }

  void updateDataAtIndex(
    int index,
    DataStruct Function(DataStruct) updateFn,
  ) {
    data[index] = updateFn(_data[index]);
  }

  void insertAtIndexInData(int index, DataStruct value) {
    data.insert(index, value);
  }

  bool _updates = false;
  bool get updates => _updates;
  set updates(bool value) {
    _updates = value;
  }
}
