// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:fo_fe/features/tasks/data/models/objectBox/tag_model.dart';
import 'package:fo_fe/features/tasks/data/models/objectBox/task_entity.dart';
import 'package:fo_fe/features/tasks/data/models/objectBox/tasks_entity.dart';
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(4, 5754620483051360054),
      name: 'TagEntity',
      lastPropertyId: const IdUid(2, 4231793772058500342),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2639039194009327659),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4231793772058500342),
            name: 'tag',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[
        ModelRelation(
            id: const IdUid(2, 2866779773342488094),
            name: 'tagList',
            targetId: const IdUid(6, 524205366324894762))
      ],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(5, 3285700931215435993),
      name: 'TaskEntity',
      lastPropertyId: const IdUid(4, 5090821216454948599),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 7123980248889949558),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3015836608076066763),
            name: 'subject',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 437847706315127330),
            name: 'status',
            type: 1,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 5090821216454948599),
            name: 'tasksListId',
            type: 11,
            flags: 520,
            indexId: const IdUid(2, 6852783443853021295),
            relationTarget: 'TasksEntity')
      ],
      relations: <ModelRelation>[
        ModelRelation(
            id: const IdUid(3, 7846698519573524815),
            name: 'tagList',
            targetId: const IdUid(4, 5754620483051360054))
      ],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(6, 524205366324894762),
      name: 'TasksEntity',
      lastPropertyId: const IdUid(4, 4393132937231206203),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 872689623534653838),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4968635037491189103),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 201832726302280569),
            name: 'date',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 4393132937231206203),
            name: 'location',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'taskList', srcEntity: 'TaskEntity', srcField: '')
      ])
];

/// Shortcut for [Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [Store.new] for an explanation of all parameters.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// Returns the ObjectBox model definition for this project for use with
/// [Store.new].
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(6, 524205366324894762),
      lastIndexId: const IdUid(2, 6852783443853021295),
      lastRelationId: const IdUid(3, 7846698519573524815),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [
        5735795579823374075,
        4787668857948876254,
        5201131681681810458
      ],
      retiredIndexUids: const [],
      retiredPropertyUids: const [
        4607110769923732927,
        6529364470559083335,
        8377820518789455468,
        6502335330767450180,
        4296137058567386666,
        4239757816560296528,
        1092399789920343667,
        4846626173629698775,
        6505559489564168971,
        1455233171597280513
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    TagModelObjectBox: EntityDefinition<TagModelObjectBox>(
        model: _entities[0],
        toOneRelations: (TagModelObjectBox object) => [],
        toManyRelations: (TagModelObjectBox object) =>
            {RelInfo<TagModelObjectBox>.toMany(2, object.id): object.tagList},
        getId: (TagModelObjectBox object) => object.id,
        setId: (TagModelObjectBox object, int id) {
          object.id = id;
        },
        objectToFB: (TagModelObjectBox object, fb.Builder fbb) {
          final tagOffset = fbb.writeString(object.tag);
          fbb.startTable(3);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, tagOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final tagParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final object = TagModelObjectBox(tagParam, id: idParam);
          InternalToManyAccess.setRelInfo<TagModelObjectBox>(object.tagList,
              store, RelInfo<TagModelObjectBox>.toMany(2, object.id));
          return object;
        }),
    TaskEntityObjectBox: EntityDefinition<TaskEntityObjectBox>(
        model: _entities[1],
        toOneRelations: (TaskEntityObjectBox object) => [object.tasksList],
        toManyRelations: (TaskEntityObjectBox object) =>
            {RelInfo<TaskEntityObjectBox>.toMany(3, object.id): object.tagList},
        getId: (TaskEntityObjectBox object) => object.id,
        setId: (TaskEntityObjectBox object, int id) {
          object.id = id;
        },
        objectToFB: (TaskEntityObjectBox object, fb.Builder fbb) {
          final subjectOffset = fbb.writeString(object.subject);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, subjectOffset);
          fbb.addBool(2, object.status);
          fbb.addInt64(3, object.tasksList.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final subjectParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final statusParam =
              const fb.BoolReader().vTableGet(buffer, rootOffset, 8, false);
          final object = TaskEntityObjectBox(subjectParam,
              id: idParam, status: statusParam);
          object.tasksList.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);
          object.tasksList.attach(store);
          InternalToManyAccess.setRelInfo<TaskEntityObjectBox>(object.tagList,
              store, RelInfo<TaskEntityObjectBox>.toMany(3, object.id));
          return object;
        }),
    TasksEntityObjectBox: EntityDefinition<TasksEntityObjectBox>(
        model: _entities[2],
        toOneRelations: (TasksEntityObjectBox object) => [],
        toManyRelations: (TasksEntityObjectBox object) => {
              RelInfo<TaskEntityObjectBox>.toOneBacklink(4, object.id,
                      (TaskEntityObjectBox srcObject) => srcObject.tasksList):
                  object.taskList
            },
        getId: (TasksEntityObjectBox object) => object.id,
        setId: (TasksEntityObjectBox object, int id) {
          object.id = id;
        },
        objectToFB: (TasksEntityObjectBox object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final locationOffset = object.location == null
              ? null
              : fbb.writeString(object.location!);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addInt64(2, object.date?.millisecondsSinceEpoch);
          fbb.addOffset(3, locationOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final dateValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 8);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final nameParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final dateParam = dateValue == null
              ? null
              : DateTime.fromMillisecondsSinceEpoch(dateValue);
          final locationParam = const fb.StringReader(asciiOptimization: true)
              .vTableGetNullable(buffer, rootOffset, 10);
          final object = TasksEntityObjectBox(
              id: idParam,
              name: nameParam,
              date: dateParam,
              location: locationParam);
          InternalToManyAccess.setRelInfo<TasksEntityObjectBox>(
              object.taskList,
              store,
              RelInfo<TaskEntityObjectBox>.toOneBacklink(4, object.id,
                  (TaskEntityObjectBox srcObject) => srcObject.tasksList));
          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [TagModelObjectBox] entity fields to define ObjectBox queries.
class TagEntity_ {
  /// see [TagModelObjectBox.id]
  static final id =
      QueryIntegerProperty<TagModelObjectBox>(_entities[0].properties[0]);

  /// see [TagModelObjectBox.tag]
  static final tag =
      QueryStringProperty<TagModelObjectBox>(_entities[0].properties[1]);

  /// see [TagModelObjectBox.tagList]
  static final tagList =
      QueryRelationToMany<TagModelObjectBox, TasksEntityObjectBox>(
          _entities[0].relations[0]);
}

/// [TaskEntityObjectBox] entity fields to define ObjectBox queries.
class TaskEntity_ {
  /// see [TaskEntityObjectBox.id]
  static final id =
      QueryIntegerProperty<TaskEntityObjectBox>(_entities[1].properties[0]);

  /// see [TaskEntityObjectBox.subject]
  static final subject =
      QueryStringProperty<TaskEntityObjectBox>(_entities[1].properties[1]);

  /// see [TaskEntityObjectBox.status]
  static final status =
      QueryBooleanProperty<TaskEntityObjectBox>(_entities[1].properties[2]);

  /// see [TaskEntityObjectBox.tasksList]
  static final tasksList =
      QueryRelationToOne<TaskEntityObjectBox, TasksEntityObjectBox>(
          _entities[1].properties[3]);

  /// see [TaskEntityObjectBox.tagList]
  static final tagList =
      QueryRelationToMany<TaskEntityObjectBox, TagModelObjectBox>(
          _entities[1].relations[0]);
}

/// [TasksEntityObjectBox] entity fields to define ObjectBox queries.
class TasksEntity_ {
  /// see [TasksEntityObjectBox.id]
  static final id =
      QueryIntegerProperty<TasksEntityObjectBox>(_entities[2].properties[0]);

  /// see [TasksEntityObjectBox.name]
  static final name =
      QueryStringProperty<TasksEntityObjectBox>(_entities[2].properties[1]);

  /// see [TasksEntityObjectBox.date]
  static final date =
      QueryIntegerProperty<TasksEntityObjectBox>(_entities[2].properties[2]);

  /// see [TasksEntityObjectBox.location]
  static final location =
      QueryStringProperty<TasksEntityObjectBox>(_entities[2].properties[3]);
}
