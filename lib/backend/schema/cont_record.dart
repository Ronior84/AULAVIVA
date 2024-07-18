import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContRecord extends FirestoreRecord {
  ContRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "contenido" field.
  String? _contenido;
  String get contenido => _contenido ?? '';
  bool hasContenido() => _contenido != null;

  // "cpntenido_1" field.
  DocumentReference? _cpntenido1;
  DocumentReference? get cpntenido1 => _cpntenido1;
  bool hasCpntenido1() => _cpntenido1 != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _contenido = snapshotData['contenido'] as String?;
    _cpntenido1 = snapshotData['cpntenido_1'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cont');

  static Stream<ContRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContRecord.fromSnapshot(s));

  static Future<ContRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContRecord.fromSnapshot(s));

  static ContRecord fromSnapshot(DocumentSnapshot snapshot) => ContRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContRecordData({
  int? id,
  String? contenido,
  DocumentReference? cpntenido1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'contenido': contenido,
      'cpntenido_1': cpntenido1,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContRecordDocumentEquality implements Equality<ContRecord> {
  const ContRecordDocumentEquality();

  @override
  bool equals(ContRecord? e1, ContRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.contenido == e2?.contenido &&
        e1?.cpntenido1 == e2?.cpntenido1;
  }

  @override
  int hash(ContRecord? e) =>
      const ListEquality().hash([e?.id, e?.contenido, e?.cpntenido1]);

  @override
  bool isValidKey(Object? o) => o is ContRecord;
}
