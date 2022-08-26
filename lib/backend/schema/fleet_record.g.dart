// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FleetRecord> _$fleetRecordSerializer = new _$FleetRecordSerializer();

class _$FleetRecordSerializer implements StructuredSerializer<FleetRecord> {
  @override
  final Iterable<Type> types = const [FleetRecord, _$FleetRecord];
  @override
  final String wireName = 'FleetRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FleetRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uids;
    if (value != null) {
      result
        ..add('uids')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  FleetRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FleetRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uids':
          result.uids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$FleetRecord extends FleetRecord {
  @override
  final BuiltList<String> uids;
  @override
  final DocumentReference<Object> reference;

  factory _$FleetRecord([void Function(FleetRecordBuilder) updates]) =>
      (new FleetRecordBuilder()..update(updates)).build();

  _$FleetRecord._({this.uids, this.reference}) : super._();

  @override
  FleetRecord rebuild(void Function(FleetRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetRecordBuilder toBuilder() => new FleetRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetRecord &&
        uids == other.uids &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, uids.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FleetRecord')
          ..add('uids', uids)
          ..add('reference', reference))
        .toString();
  }
}

class FleetRecordBuilder implements Builder<FleetRecord, FleetRecordBuilder> {
  _$FleetRecord _$v;

  ListBuilder<String> _uids;
  ListBuilder<String> get uids => _$this._uids ??= new ListBuilder<String>();
  set uids(ListBuilder<String> uids) => _$this._uids = uids;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FleetRecordBuilder() {
    FleetRecord._initializeBuilder(this);
  }

  FleetRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uids = $v.uids?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetRecord;
  }

  @override
  void update(void Function(FleetRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FleetRecord build() {
    _$FleetRecord _$result;
    try {
      _$result = _$v ??
          new _$FleetRecord._(uids: _uids?.build(), reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'uids';
        _uids?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FleetRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
