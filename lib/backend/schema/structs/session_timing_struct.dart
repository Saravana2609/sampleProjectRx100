// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionTimingStruct extends FFFirebaseStruct {
  SessionTimingStruct({
    List<String>? attendees,
    DocumentReference? companyRef,
    String? companyName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _attendees = attendees,
        _companyRef = companyRef,
        _companyName = companyName,
        super(firestoreUtilData);

  // "attendees" field.
  List<String>? _attendees;
  List<String> get attendees => _attendees ?? const [];
  set attendees(List<String>? val) => _attendees = val;

  void updateAttendees(Function(List<String>) updateFn) {
    updateFn(_attendees ??= []);
  }

  bool hasAttendees() => _attendees != null;

  // "companyRef" field.
  DocumentReference? _companyRef;
  DocumentReference? get companyRef => _companyRef;
  set companyRef(DocumentReference? val) => _companyRef = val;

  bool hasCompanyRef() => _companyRef != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  set companyName(String? val) => _companyName = val;

  bool hasCompanyName() => _companyName != null;

  static SessionTimingStruct fromMap(Map<String, dynamic> data) =>
      SessionTimingStruct(
        attendees: getDataList(data['attendees']),
        companyRef: data['companyRef'] as DocumentReference?,
        companyName: data['companyName'] as String?,
      );

  static SessionTimingStruct? maybeFromMap(dynamic data) => data is Map
      ? SessionTimingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'attendees': _attendees,
        'companyRef': _companyRef,
        'companyName': _companyName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'attendees': serializeParam(
          _attendees,
          ParamType.String,
          isList: true,
        ),
        'companyRef': serializeParam(
          _companyRef,
          ParamType.DocumentReference,
        ),
        'companyName': serializeParam(
          _companyName,
          ParamType.String,
        ),
      }.withoutNulls;

  static SessionTimingStruct fromSerializableMap(Map<String, dynamic> data) =>
      SessionTimingStruct(
        attendees: deserializeParam<String>(
          data['attendees'],
          ParamType.String,
          true,
        ),
        companyRef: deserializeParam(
          data['companyRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['company'],
        ),
        companyName: deserializeParam(
          data['companyName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SessionTimingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SessionTimingStruct &&
        listEquality.equals(attendees, other.attendees) &&
        companyRef == other.companyRef &&
        companyName == other.companyName;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([attendees, companyRef, companyName]);
}

SessionTimingStruct createSessionTimingStruct({
  DocumentReference? companyRef,
  String? companyName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SessionTimingStruct(
      companyRef: companyRef,
      companyName: companyName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SessionTimingStruct? updateSessionTimingStruct(
  SessionTimingStruct? sessionTiming, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sessionTiming
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSessionTimingStructData(
  Map<String, dynamic> firestoreData,
  SessionTimingStruct? sessionTiming,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sessionTiming == null) {
    return;
  }
  if (sessionTiming.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sessionTiming.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sessionTimingData =
      getSessionTimingFirestoreData(sessionTiming, forFieldValue);
  final nestedData =
      sessionTimingData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sessionTiming.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSessionTimingFirestoreData(
  SessionTimingStruct? sessionTiming, [
  bool forFieldValue = false,
]) {
  if (sessionTiming == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sessionTiming.toMap());

  // Add any Firestore field values
  sessionTiming.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSessionTimingListFirestoreData(
  List<SessionTimingStruct>? sessionTimings,
) =>
    sessionTimings
        ?.map((e) => getSessionTimingFirestoreData(e, true))
        .toList() ??
    [];
