import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'activities_record.g.dart';

abstract class ActivitiesRecord
    implements Built<ActivitiesRecord, ActivitiesRecordBuilder> {
  static Serializer<ActivitiesRecord> get serializer =>
      _$activitiesRecordSerializer;

  @nullable
  bool get sleep;

  @nullable
  bool get eat;

  @nullable
  bool get repairs;

  @nullable
  bool get talk;

  @nullable
  bool get walk;

  @nullable
  bool get check;

  @nullable
  bool get hobby;

  @nullable
  bool get work;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ActivitiesRecordBuilder builder) => builder
    ..sleep = false
    ..eat = false
    ..repairs = false
    ..talk = false
    ..walk = false
    ..check = false
    ..hobby = false
    ..work = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Activities');

  static Stream<ActivitiesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ActivitiesRecord._();
  factory ActivitiesRecord([void Function(ActivitiesRecordBuilder) updates]) =
      _$ActivitiesRecord;

  static ActivitiesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createActivitiesRecordData({
  bool sleep,
  bool eat,
  bool repairs,
  bool talk,
  bool walk,
  bool check,
  bool hobby,
  bool work,
}) =>
    serializers.toFirestore(
        ActivitiesRecord.serializer,
        ActivitiesRecord((a) => a
          ..sleep = sleep
          ..eat = eat
          ..repairs = repairs
          ..talk = talk
          ..walk = walk
          ..check = check
          ..hobby = hobby
          ..work = work));
