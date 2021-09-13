import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fleet_record.g.dart';

abstract class FleetRecord implements Built<FleetRecord, FleetRecordBuilder> {
  static Serializer<FleetRecord> get serializer => _$fleetRecordSerializer;

  @nullable
  BuiltList<String> get uids;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FleetRecordBuilder builder) =>
      builder..uids = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Fleet');

  static Stream<FleetRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FleetRecord._();
  factory FleetRecord([void Function(FleetRecordBuilder) updates]) =
      _$FleetRecord;

  static FleetRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createFleetRecordData() => serializers.toFirestore(
    FleetRecord.serializer, FleetRecord((f) => f..uids = null));
