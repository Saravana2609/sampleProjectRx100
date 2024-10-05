import '/backend/api_requests/api_calls.dart';
import '/components/input_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'page1_widget.dart' show Page1Widget;
import 'package:flutter/material.dart';

class Page1Model extends FlutterFlowModel<Page1Widget> {
  ///  Local state fields for this page.

  List<String> list = ['Stats', 'Chips', 'Done'];
  void addToList(String item) => list.add(item);
  void removeFromList(String item) => list.remove(item);
  void removeAtIndexFromList(int index) => list.removeAt(index);
  void insertAtIndexInList(int index, String item) => list.insert(index, item);
  void updateListAtIndex(int index, Function(String) updateFn) =>
      list[index] = updateFn(list[index]);

  int loop = 0;

  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for Name.
  late InputFieldModel nameModel;
  // Model for Item.
  late InputFieldModel itemModel;
  // Model for Quantity.
  late InputFieldModel quantityModel;
  // Model for Price.
  late InputFieldModel priceModel;
  // Model for Total.
  late InputFieldModel totalModel;
  // Stores action output result for [Backend Call - API (PostTest)] action in Button widget.
  ApiCallResponse? apiResultiqk;

  @override
  void initState(BuildContext context) {
    nameModel = createModel(context, () => InputFieldModel());
    itemModel = createModel(context, () => InputFieldModel());
    quantityModel = createModel(context, () => InputFieldModel());
    priceModel = createModel(context, () => InputFieldModel());
    totalModel = createModel(context, () => InputFieldModel());
  }

  @override
  void dispose() {
    nameModel.dispose();
    itemModel.dispose();
    quantityModel.dispose();
    priceModel.dispose();
    totalModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
