import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BackEndUpdatesRecord extends FirestoreRecord {
  BackEndUpdatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "underMaintenance" field.
  bool? _underMaintenance;
  bool get underMaintenance => _underMaintenance ?? false;
  bool hasUnderMaintenance() => _underMaintenance != null;

  // "underMaintenanceDes" field.
  String? _underMaintenanceDes;
  String get underMaintenanceDes => _underMaintenanceDes ?? '';
  bool hasUnderMaintenanceDes() => _underMaintenanceDes != null;

  // "updates" field.
  bool? _updates;
  bool get updates => _updates ?? false;
  bool hasUpdates() => _updates != null;

  // "updatesDes" field.
  String? _updatesDes;
  String get updatesDes => _updatesDes ?? '';
  bool hasUpdatesDes() => _updatesDes != null;

  void _initializeFields() {
    _underMaintenance = snapshotData['underMaintenance'] as bool?;
    _underMaintenanceDes = snapshotData['underMaintenanceDes'] as String?;
    _updates = snapshotData['updates'] as bool?;
    _updatesDes = snapshotData['updatesDes'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instanceFor(
          app: Firebase.app(), databaseId: 'testingproject-fd9f9')
      .collection('backEndUpdates');

  static Stream<BackEndUpdatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BackEndUpdatesRecord.fromSnapshot(s));

  static Future<BackEndUpdatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BackEndUpdatesRecord.fromSnapshot(s));

  static BackEndUpdatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BackEndUpdatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BackEndUpdatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BackEndUpdatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BackEndUpdatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BackEndUpdatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBackEndUpdatesRecordData({
  bool? underMaintenance,
  String? underMaintenanceDes,
  bool? updates,
  String? updatesDes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'underMaintenance': underMaintenance,
      'underMaintenanceDes': underMaintenanceDes,
      'updates': updates,
      'updatesDes': updatesDes,
    }.withoutNulls,
  );

  return firestoreData;
}

class BackEndUpdatesRecordDocumentEquality
    implements Equality<BackEndUpdatesRecord> {
  const BackEndUpdatesRecordDocumentEquality();

  @override
  bool equals(BackEndUpdatesRecord? e1, BackEndUpdatesRecord? e2) {
    return e1?.underMaintenance == e2?.underMaintenance &&
        e1?.underMaintenanceDes == e2?.underMaintenanceDes &&
        e1?.updates == e2?.updates &&
        e1?.updatesDes == e2?.updatesDes;
  }

  @override
  int hash(BackEndUpdatesRecord? e) => const ListEquality().hash(
      [e?.underMaintenance, e?.underMaintenanceDes, e?.updates, e?.updatesDes]);

  @override
  bool isValidKey(Object? o) => o is BackEndUpdatesRecord;
}
