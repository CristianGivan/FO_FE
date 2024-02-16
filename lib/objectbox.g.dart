// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'
    as obx_int; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart' as obx;
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'features/organizer/elements/tag/tag_lib.dart';
import 'features/organizer/elements/task/task_lib.dart';
import 'features/organizer/elements/tasks/tasks_lib.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <obx_int.ModelEntity>[
  obx_int.ModelEntity(
      id: const obx_int.IdUid(7, 5650714963522330027),
      name: 'TagModelObjectBox',
      lastPropertyId: const obx_int.IdUid(2, 5242424261184802348),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 2258511365302918199),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 5242424261184802348),
            name: 'tag',
            type: 9,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[
        obx_int.ModelRelation(
            id: const obx_int.IdUid(4, 5710533945711838494),
            name: 'tagList',
            targetId: const obx_int.IdUid(9, 3053398241385483537))
      ],
      backlinks: <obx_int.ModelBacklink>[]),
  obx_int.ModelEntity(
      id: const obx_int.IdUid(8, 8841294787726541045),
      name: 'TaskEntityObjectBox',
      lastPropertyId: const obx_int.IdUid(4, 5045021498320082843),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 8388656654865544023),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 2313022321528077314),
            name: 'subject',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 5563824768326263453),
            name: 'status',
            type: 1,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(4, 5045021498320082843),
            name: 'tasksListId',
            type: 11,
            flags: 520,
            indexId: const obx_int.IdUid(3, 7753468892164461201),
            relationTarget: 'TasksEntityObjectBox')
      ],
      relations: <obx_int.ModelRelation>[
        obx_int.ModelRelation(
            id: const obx_int.IdUid(5, 1766363893111537619),
            name: 'tagList',
            targetId: const obx_int.IdUid(7, 5650714963522330027))
      ],
      backlinks: <obx_int.ModelBacklink>[]),
  obx_int.ModelEntity(
      id: const obx_int.IdUid(9, 3053398241385483537),
      name: 'TasksEntityObjectBox',
      lastPropertyId: const obx_int.IdUid(4, 1299006206327415992),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 7151006859267257590),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 2217746610498390072),
            name: 'name',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 8246088054932938447),
            name: 'date',
            type: 10,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(4, 1299006206327415992),
            name: 'location',
            type: 9,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[
        obx_int.ModelBacklink(
            name: 'taskList', srcEntity: 'TaskEntityObjectBox', srcField: '')
      ])
];

/// Shortcut for [Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [Store.new] for an explanation of all parameters.
///
/// For Flutter apps, also calls `loadObjectBoxLibraryAndroidCompat()` from
/// the ObjectBox Flutter library to fix loading the native ObjectBox library
/// on Android 6 and older.
Future<obx.Store> openStore(
    {String? directory,
    int? maxDBSizeInKB,
    int? maxDataSizeInKB,
    int? fileMode,
    int? maxReaders,
    bool queriesCaseSensitiveDefault = true,
    String? macosApplicationGroup}) async {
  await loadObjectBoxLibraryAndroidCompat();
  return obx.Store(getObjectBoxModel(),
      directory: directory ?? (await defaultStoreDirectory()).path,
      maxDBSizeInKB: maxDBSizeInKB,
      maxDataSizeInKB: maxDataSizeInKB,
      fileMode: fileMode,
      maxReaders: maxReaders,
      queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
      macosApplicationGroup: macosApplicationGroup);
}

/// Returns the ObjectBox model definition for this project for use with
/// [Store.new].
obx_int.ModelDefinition getObjectBoxModel() {
  final model = obx_int.ModelInfo(
      entities: _entities,
      lastEntityId: const obx_int.IdUid(9, 3053398241385483537),
      lastIndexId: const obx_int.IdUid(3, 7753468892164461201),
      lastRelationId: const obx_int.IdUid(5, 1766363893111537619),
      lastSequenceId: const obx_int.IdUid(0, 0),
      retiredEntityUids: const [
        5735795579823374075,
        4787668857948876254,
        5201131681681810458,
        5754620483051360054,
        3285700931215435993,
        524205366324894762
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
        1455233171597280513,
        2639039194009327659,
        4231793772058500342,
        7123980248889949558,
        3015836608076066763,
        437847706315127330,
        5090821216454948599,
        872689623534653838,
        4968635037491189103,
        201832726302280569,
        4393132937231206203
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, obx_int.EntityDefinition>{
    TagModelObjectBox: obx_int.EntityDefinition<TagModelObjectBox>(
        model: _entities[0],
        toOneRelations: (TagModelObjectBox object) => [],
        toManyRelations: (TagModelObjectBox object) => {
              obx_int.RelInfo<TagModelObjectBox>.toMany(4, object.id):
                  object.tagList
            },
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
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final tagParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final object = TagModelObjectBox(tagParam, id: idParam);
          obx_int.InternalToManyAccess.setRelInfo<TagModelObjectBox>(
              object.tagList,
              store,
              obx_int.RelInfo<TagModelObjectBox>.toMany(4, object.id));
          return object;
        }),
    TaskEntityObjectBox: obx_int.EntityDefinition<TaskEntityObjectBox>(
        model: _entities[1],
        toOneRelations: (TaskEntityObjectBox object) => [object.tasksList],
        toManyRelations: (TaskEntityObjectBox object) => {
              obx_int.RelInfo<TaskEntityObjectBox>.toMany(5, object.id):
                  object.tagList
            },
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
        objectFromFB: (obx.Store store, ByteData fbData) {
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
          obx_int.InternalToManyAccess.setRelInfo<TaskEntityObjectBox>(
              object.tagList,
              store,
              obx_int.RelInfo<TaskEntityObjectBox>.toMany(5, object.id));
          return object;
        }),
    TasksEntityObjectBox: obx_int.EntityDefinition<TasksEntityObjectBox>(
        model: _entities[2],
        toOneRelations: (TasksEntityObjectBox object) => [],
        toManyRelations: (TasksEntityObjectBox object) => {
              obx_int.RelInfo<TaskEntityObjectBox>.toOneBacklink(4, object.id,
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
        objectFromFB: (obx.Store store, ByteData fbData) {
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
          obx_int.InternalToManyAccess.setRelInfo<TasksEntityObjectBox>(
              object.taskList,
              store,
              obx_int.RelInfo<TaskEntityObjectBox>.toOneBacklink(4, object.id,
                  (TaskEntityObjectBox srcObject) => srcObject.tasksList));
          return object;
        })
  };

  return obx_int.ModelDefinition(model, bindings);
}

/// [TagModelObjectBox] entity fields to define ObjectBox queries.
class TagModelObjectBox_ {
  /// see [TagModelObjectBox.id]
  static final id =
      obx.QueryIntegerProperty<TagModelObjectBox>(_entities[0].properties[0]);

  /// see [TagModelObjectBox.tag]
  static final tag =
      obx.QueryStringProperty<TagModelObjectBox>(_entities[0].properties[1]);

  /// see [TagModelObjectBox.tagList]
  static final tagList =
      obx.QueryRelationToMany<TagModelObjectBox, TasksEntityObjectBox>(
          _entities[0].relations[0]);
}

/// [TaskEntityObjectBox] entity fields to define ObjectBox queries.
class TaskEntityObjectBox_ {
  /// see [TaskEntityObjectBox.id]
  static final id =
      obx.QueryIntegerProperty<TaskEntityObjectBox>(_entities[1].properties[0]);

  /// see [TaskEntityObjectBox.subject]
  static final subject =
      obx.QueryStringProperty<TaskEntityObjectBox>(_entities[1].properties[1]);

  /// see [TaskEntityObjectBox.status]
  static final status =
      obx.QueryBooleanProperty<TaskEntityObjectBox>(_entities[1].properties[2]);

  /// see [TaskEntityObjectBox.tasksList]
  static final tasksList =
      obx.QueryRelationToOne<TaskEntityObjectBox, TasksEntityObjectBox>(
          _entities[1].properties[3]);

  /// see [TaskEntityObjectBox.tagList]
  static final tagList =
      obx.QueryRelationToMany<TaskEntityObjectBox, TagModelObjectBox>(
          _entities[1].relations[0]);
}

/// [TasksEntityObjectBox] entity fields to define ObjectBox queries.
class TasksEntityObjectBox_ {
  /// see [TasksEntityObjectBox.id]
  static final id = obx.QueryIntegerProperty<TasksEntityObjectBox>(
      _entities[2].properties[0]);

  /// see [TasksEntityObjectBox.name]
  static final name =
      obx.QueryStringProperty<TasksEntityObjectBox>(_entities[2].properties[1]);

  /// see [TasksEntityObjectBox.date]
  static final date =
      obx.QueryDateProperty<TasksEntityObjectBox>(_entities[2].properties[2]);

  /// see [TasksEntityObjectBox.location]
  static final location =
      obx.QueryStringProperty<TasksEntityObjectBox>(_entities[2].properties[3]);

  /// see [TasksEntityObjectBox.taskList]
  static final taskList =
      obx.QueryBacklinkToMany<TaskEntityObjectBox, TasksEntityObjectBox>(
          TaskEntityObjectBox_.tasksList);
}
