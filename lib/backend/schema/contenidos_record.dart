import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContenidosRecord extends FirestoreRecord {
  ContenidosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "titulo1" field.
  String? _titulo1;
  String get titulo1 => _titulo1 ?? '';
  bool hasTitulo1() => _titulo1 != null;

  // "Texto1" field.
  String? _texto1;
  String get texto1 => _texto1 ?? '';
  bool hasTexto1() => _texto1 != null;

  // "subtitulo1" field.
  String? _subtitulo1;
  String get subtitulo1 => _subtitulo1 ?? '';
  bool hasSubtitulo1() => _subtitulo1 != null;

  // "texto2" field.
  String? _texto2;
  String get texto2 => _texto2 ?? '';
  bool hasTexto2() => _texto2 != null;

  // "texto3" field.
  String? _texto3;
  String get texto3 => _texto3 ?? '';
  bool hasTexto3() => _texto3 != null;

  // "texto4" field.
  String? _texto4;
  String get texto4 => _texto4 ?? '';
  bool hasTexto4() => _texto4 != null;

  // "texto5" field.
  String? _texto5;
  String get texto5 => _texto5 ?? '';
  bool hasTexto5() => _texto5 != null;

  // "texto6" field.
  String? _texto6;
  String get texto6 => _texto6 ?? '';
  bool hasTexto6() => _texto6 != null;

  // "imagen1" field.
  String? _imagen1;
  String get imagen1 => _imagen1 ?? '';
  bool hasImagen1() => _imagen1 != null;

  // "imagen2" field.
  String? _imagen2;
  String get imagen2 => _imagen2 ?? '';
  bool hasImagen2() => _imagen2 != null;

  // "imagen3" field.
  String? _imagen3;
  String get imagen3 => _imagen3 ?? '';
  bool hasImagen3() => _imagen3 != null;

  // "imagen4" field.
  String? _imagen4;
  String get imagen4 => _imagen4 ?? '';
  bool hasImagen4() => _imagen4 != null;

  // "imagen5" field.
  String? _imagen5;
  String get imagen5 => _imagen5 ?? '';
  bool hasImagen5() => _imagen5 != null;

  // "video1" field.
  String? _video1;
  String get video1 => _video1 ?? '';
  bool hasVideo1() => _video1 != null;

  // "Subtitulo2" field.
  String? _subtitulo2;
  String get subtitulo2 => _subtitulo2 ?? '';
  bool hasSubtitulo2() => _subtitulo2 != null;

  // "texto7" field.
  String? _texto7;
  String get texto7 => _texto7 ?? '';
  bool hasTexto7() => _texto7 != null;

  // "texto8" field.
  String? _texto8;
  String get texto8 => _texto8 ?? '';
  bool hasTexto8() => _texto8 != null;

  // "Subtitulo3" field.
  String? _subtitulo3;
  String get subtitulo3 => _subtitulo3 ?? '';
  bool hasSubtitulo3() => _subtitulo3 != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _foto = snapshotData['foto'] as String?;
    _titulo1 = snapshotData['titulo1'] as String?;
    _texto1 = snapshotData['Texto1'] as String?;
    _subtitulo1 = snapshotData['subtitulo1'] as String?;
    _texto2 = snapshotData['texto2'] as String?;
    _texto3 = snapshotData['texto3'] as String?;
    _texto4 = snapshotData['texto4'] as String?;
    _texto5 = snapshotData['texto5'] as String?;
    _texto6 = snapshotData['texto6'] as String?;
    _imagen1 = snapshotData['imagen1'] as String?;
    _imagen2 = snapshotData['imagen2'] as String?;
    _imagen3 = snapshotData['imagen3'] as String?;
    _imagen4 = snapshotData['imagen4'] as String?;
    _imagen5 = snapshotData['imagen5'] as String?;
    _video1 = snapshotData['video1'] as String?;
    _subtitulo2 = snapshotData['Subtitulo2'] as String?;
    _texto7 = snapshotData['texto7'] as String?;
    _texto8 = snapshotData['texto8'] as String?;
    _subtitulo3 = snapshotData['Subtitulo3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Contenidos');

  static Stream<ContenidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContenidosRecord.fromSnapshot(s));

  static Future<ContenidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContenidosRecord.fromSnapshot(s));

  static ContenidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContenidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContenidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContenidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContenidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContenidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContenidosRecordData({
  String? nombre,
  String? descripcion,
  String? foto,
  String? titulo1,
  String? texto1,
  String? subtitulo1,
  String? texto2,
  String? texto3,
  String? texto4,
  String? texto5,
  String? texto6,
  String? imagen1,
  String? imagen2,
  String? imagen3,
  String? imagen4,
  String? imagen5,
  String? video1,
  String? subtitulo2,
  String? texto7,
  String? texto8,
  String? subtitulo3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Descripcion': descripcion,
      'foto': foto,
      'titulo1': titulo1,
      'Texto1': texto1,
      'subtitulo1': subtitulo1,
      'texto2': texto2,
      'texto3': texto3,
      'texto4': texto4,
      'texto5': texto5,
      'texto6': texto6,
      'imagen1': imagen1,
      'imagen2': imagen2,
      'imagen3': imagen3,
      'imagen4': imagen4,
      'imagen5': imagen5,
      'video1': video1,
      'Subtitulo2': subtitulo2,
      'texto7': texto7,
      'texto8': texto8,
      'Subtitulo3': subtitulo3,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContenidosRecordDocumentEquality implements Equality<ContenidosRecord> {
  const ContenidosRecordDocumentEquality();

  @override
  bool equals(ContenidosRecord? e1, ContenidosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.foto == e2?.foto &&
        e1?.titulo1 == e2?.titulo1 &&
        e1?.texto1 == e2?.texto1 &&
        e1?.subtitulo1 == e2?.subtitulo1 &&
        e1?.texto2 == e2?.texto2 &&
        e1?.texto3 == e2?.texto3 &&
        e1?.texto4 == e2?.texto4 &&
        e1?.texto5 == e2?.texto5 &&
        e1?.texto6 == e2?.texto6 &&
        e1?.imagen1 == e2?.imagen1 &&
        e1?.imagen2 == e2?.imagen2 &&
        e1?.imagen3 == e2?.imagen3 &&
        e1?.imagen4 == e2?.imagen4 &&
        e1?.imagen5 == e2?.imagen5 &&
        e1?.video1 == e2?.video1 &&
        e1?.subtitulo2 == e2?.subtitulo2 &&
        e1?.texto7 == e2?.texto7 &&
        e1?.texto8 == e2?.texto8 &&
        e1?.subtitulo3 == e2?.subtitulo3;
  }

  @override
  int hash(ContenidosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.foto,
        e?.titulo1,
        e?.texto1,
        e?.subtitulo1,
        e?.texto2,
        e?.texto3,
        e?.texto4,
        e?.texto5,
        e?.texto6,
        e?.imagen1,
        e?.imagen2,
        e?.imagen3,
        e?.imagen4,
        e?.imagen5,
        e?.video1,
        e?.subtitulo2,
        e?.texto7,
        e?.texto8,
        e?.subtitulo3
      ]);

  @override
  bool isValidKey(Object? o) => o is ContenidosRecord;
}
