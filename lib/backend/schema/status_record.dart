import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'status_record.g.dart';

abstract class StatusRecord
    implements Built<StatusRecord, StatusRecordBuilder> {
  static Serializer<StatusRecord> get serializer => _$statusRecordSerializer;

  @nullable
  String get uid;

  @nullable
  int get damage;

  @nullable
  int get exp;

  @nullable
  int get level;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(StatusRecordBuilder builder) => builder
    ..uid = ''
    ..damage = 0
    ..exp = 0
    ..level = 0
    ..displayName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Status');

  static Stream<StatusRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  StatusRecord._();
  factory StatusRecord([void Function(StatusRecordBuilder) updates]) =
      _$StatusRecord;

  static StatusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createStatusRecordData({
  String uid,
  int damage,
  int exp,
  int level,
  String displayName,
}) =>
    serializers.toFirestore(
        StatusRecord.serializer,
        StatusRecord((s) => s
          ..uid = uid
          ..damage = damage
          ..exp = exp
          ..level = level
          ..displayName = displayName));
