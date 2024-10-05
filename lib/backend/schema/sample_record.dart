import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SampleRecord extends FirestoreRecord {
  SampleRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "list" field.
  List<String>? _list;
  List<String> get list => _list ?? const [];
  bool hasList() => _list != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _list = getDataList(snapshotData['list']);
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'testingproject-fd9f9')
      .collection('sample');

  static Stream<SampleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SampleRecord.fromSnapshot(s));

  static Future<SampleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SampleRecord.fromSnapshot(s));

  static SampleRecord fromSnapshot(DocumentSnapshot snapshot) => SampleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SampleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SampleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SampleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SampleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSampleRecordData({
  String? id,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SampleRecordDocumentEquality implements Equality<SampleRecord> {
  const SampleRecordDocumentEquality();

  @override
  bool equals(SampleRecord? e1, SampleRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(e1?.list, e2?.list);
  }

  @override
  int hash(SampleRecord? e) =>
      const ListEquality().hash([e?.id, e?.createdAt, e?.list]);

  @override
  bool isValidKey(Object? o) => o is SampleRecord;
}
