import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionRecord extends FirestoreRecord {
  SessionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sessionName" field.
  String? _sessionName;
  String get sessionName => _sessionName ?? '';
  bool hasSessionName() => _sessionName != null;

  // "createdby" field.
  DocumentReference? _createdby;
  DocumentReference? get createdby => _createdby;
  bool hasCreatedby() => _createdby != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "sessionTimings" field.
  List<SessionTimingStruct>? _sessionTimings;
  List<SessionTimingStruct> get sessionTimings => _sessionTimings ?? const [];
  bool hasSessionTimings() => _sessionTimings != null;

  void _initializeFields() {
    _sessionName = snapshotData['sessionName'] as String?;
    _createdby = snapshotData['createdby'] as DocumentReference?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _sessionTimings = getStructList(
      snapshotData['sessionTimings'],
      SessionTimingStruct.fromMap,
    );
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'testingproject-fd9f9')
      .collection('session');

  static Stream<SessionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SessionRecord.fromSnapshot(s));

  static Future<SessionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SessionRecord.fromSnapshot(s));

  static SessionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SessionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SessionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SessionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SessionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SessionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSessionRecordData({
  String? sessionName,
  DocumentReference? createdby,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sessionName': sessionName,
      'createdby': createdby,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class SessionRecordDocumentEquality implements Equality<SessionRecord> {
  const SessionRecordDocumentEquality();

  @override
  bool equals(SessionRecord? e1, SessionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.sessionName == e2?.sessionName &&
        e1?.createdby == e2?.createdby &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.sessionTimings, e2?.sessionTimings);
  }

  @override
  int hash(SessionRecord? e) => const ListEquality()
      .hash([e?.sessionName, e?.createdby, e?.createdTime, e?.sessionTimings]);

  @override
  bool isValidKey(Object? o) => o is SessionRecord;
}
