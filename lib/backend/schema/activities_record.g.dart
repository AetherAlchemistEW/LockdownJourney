// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActivitiesRecord> _$activitiesRecordSerializer =
    new _$ActivitiesRecordSerializer();

class _$ActivitiesRecordSerializer
    implements StructuredSerializer<ActivitiesRecord> {
  @override
  final Iterable<Type> types = const [ActivitiesRecord, _$ActivitiesRecord];
  @override
  final String wireName = 'ActivitiesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ActivitiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.sleep;
    if (value != null) {
      result
        ..add('sleep')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.eat;
    if (value != null) {
      result
        ..add('eat')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.repairs;
    if (value != null) {
      result
        ..add('repairs')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.talk;
    if (value != null) {
      result
        ..add('talk')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.walk;
    if (value != null) {
      result
        ..add('walk')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.check;
    if (value != null) {
      result
        ..add('check')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hobby;
    if (value != null) {
      result
        ..add('hobby')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.work;
    if (value != null) {
      result
        ..add('work')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  ActivitiesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActivitiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'sleep':
          result.sleep = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'eat':
          result.eat = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'repairs':
          result.repairs = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'talk':
          result.talk = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'walk':
          result.walk = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'check':
          result.check = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hobby':
          result.hobby = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'work':
          result.work = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$ActivitiesRecord extends ActivitiesRecord {
  @override
  final bool sleep;
  @override
  final bool eat;
  @override
  final bool repairs;
  @override
  final bool talk;
  @override
  final bool walk;
  @override
  final bool check;
  @override
  final bool hobby;
  @override
  final bool work;
  @override
  final DocumentReference<Object> reference;

  factory _$ActivitiesRecord(
          [void Function(ActivitiesRecordBuilder) updates]) =>
      (new ActivitiesRecordBuilder()..update(updates)).build();

  _$ActivitiesRecord._(
      {this.sleep,
      this.eat,
      this.repairs,
      this.talk,
      this.walk,
      this.check,
      this.hobby,
      this.work,
      this.reference})
      : super._();

  @override
  ActivitiesRecord rebuild(void Function(ActivitiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivitiesRecordBuilder toBuilder() =>
      new ActivitiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivitiesRecord &&
        sleep == other.sleep &&
        eat == other.eat &&
        repairs == other.repairs &&
        talk == other.talk &&
        walk == other.walk &&
        check == other.check &&
        hobby == other.hobby &&
        work == other.work &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, sleep.hashCode), eat.hashCode),
                                repairs.hashCode),
                            talk.hashCode),
                        walk.hashCode),
                    check.hashCode),
                hobby.hashCode),
            work.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActivitiesRecord')
          ..add('sleep', sleep)
          ..add('eat', eat)
          ..add('repairs', repairs)
          ..add('talk', talk)
          ..add('walk', walk)
          ..add('check', check)
          ..add('hobby', hobby)
          ..add('work', work)
          ..add('reference', reference))
        .toString();
  }
}

class ActivitiesRecordBuilder
    implements Builder<ActivitiesRecord, ActivitiesRecordBuilder> {
  _$ActivitiesRecord _$v;

  bool _sleep;
  bool get sleep => _$this._sleep;
  set sleep(bool sleep) => _$this._sleep = sleep;

  bool _eat;
  bool get eat => _$this._eat;
  set eat(bool eat) => _$this._eat = eat;

  bool _repairs;
  bool get repairs => _$this._repairs;
  set repairs(bool repairs) => _$this._repairs = repairs;

  bool _talk;
  bool get talk => _$this._talk;
  set talk(bool talk) => _$this._talk = talk;

  bool _walk;
  bool get walk => _$this._walk;
  set walk(bool walk) => _$this._walk = walk;

  bool _check;
  bool get check => _$this._check;
  set check(bool check) => _$this._check = check;

  bool _hobby;
  bool get hobby => _$this._hobby;
  set hobby(bool hobby) => _$this._hobby = hobby;

  bool _work;
  bool get work => _$this._work;
  set work(bool work) => _$this._work = work;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ActivitiesRecordBuilder() {
    ActivitiesRecord._initializeBuilder(this);
  }

  ActivitiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sleep = $v.sleep;
      _eat = $v.eat;
      _repairs = $v.repairs;
      _talk = $v.talk;
      _walk = $v.walk;
      _check = $v.check;
      _hobby = $v.hobby;
      _work = $v.work;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivitiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActivitiesRecord;
  }

  @override
  void update(void Function(ActivitiesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActivitiesRecord build() {
    final _$result = _$v ??
        new _$ActivitiesRecord._(
            sleep: sleep,
            eat: eat,
            repairs: repairs,
            talk: talk,
            walk: walk,
            check: check,
            hobby: hobby,
            work: work,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
