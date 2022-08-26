// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StatusRecord> _$statusRecordSerializer =
    new _$StatusRecordSerializer();

class _$StatusRecordSerializer implements StructuredSerializer<StatusRecord> {
  @override
  final Iterable<Type> types = const [StatusRecord, _$StatusRecord];
  @override
  final String wireName = 'StatusRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, StatusRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.damage;
    if (value != null) {
      result
        ..add('damage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.exp;
    if (value != null) {
      result
        ..add('exp')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.level;
    if (value != null) {
      result
        ..add('level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  StatusRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatusRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'damage':
          result.damage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'exp':
          result.exp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$StatusRecord extends StatusRecord {
  @override
  final String uid;
  @override
  final int damage;
  @override
  final int exp;
  @override
  final int level;
  @override
  final String displayName;
  @override
  final DocumentReference<Object> reference;

  factory _$StatusRecord([void Function(StatusRecordBuilder) updates]) =>
      (new StatusRecordBuilder()..update(updates)).build();

  _$StatusRecord._(
      {this.uid,
      this.damage,
      this.exp,
      this.level,
      this.displayName,
      this.reference})
      : super._();

  @override
  StatusRecord rebuild(void Function(StatusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusRecordBuilder toBuilder() => new StatusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusRecord &&
        uid == other.uid &&
        damage == other.damage &&
        exp == other.exp &&
        level == other.level &&
        displayName == other.displayName &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, uid.hashCode), damage.hashCode), exp.hashCode),
                level.hashCode),
            displayName.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StatusRecord')
          ..add('uid', uid)
          ..add('damage', damage)
          ..add('exp', exp)
          ..add('level', level)
          ..add('displayName', displayName)
          ..add('reference', reference))
        .toString();
  }
}

class StatusRecordBuilder
    implements Builder<StatusRecord, StatusRecordBuilder> {
  _$StatusRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  int _damage;
  int get damage => _$this._damage;
  set damage(int damage) => _$this._damage = damage;

  int _exp;
  int get exp => _$this._exp;
  set exp(int exp) => _$this._exp = exp;

  int _level;
  int get level => _$this._level;
  set level(int level) => _$this._level = level;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  StatusRecordBuilder() {
    StatusRecord._initializeBuilder(this);
  }

  StatusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _damage = $v.damage;
      _exp = $v.exp;
      _level = $v.level;
      _displayName = $v.displayName;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatusRecord;
  }

  @override
  void update(void Function(StatusRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StatusRecord build() {
    final _$result = _$v ??
        new _$StatusRecord._(
            uid: uid,
            damage: damage,
            exp: exp,
            level: level,
            displayName: displayName,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
