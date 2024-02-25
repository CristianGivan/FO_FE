// Mocks generated by Mockito 5.4.4 from annotations
// in fo_fe/test/feature/organizer/elements/task/data/repositories/task_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:fo_fe/core/platform/network_info.dart' as _i4;
import 'package:fo_fe/features/organizer/elements/tag/tag_lib.dart' as _i11;
import 'package:fo_fe/features/organizer/elements/task/data/datasources/task_local_data_source.dart'
    as _i6;
import 'package:fo_fe/features/organizer/elements/task/data/datasources/task_remote_data_source.dart'
    as _i7;
import 'package:fo_fe/features/organizer/elements/task/data/datasources/task_sync.dart'
    as _i8;
import 'package:fo_fe/features/organizer/elements/task/domain/entities/topic.dart'
    as _i14;
import 'package:fo_fe/features/organizer/elements/task/domain/entities/user.dart'
    as _i3;
import 'package:fo_fe/features/organizer/elements/task/domain/entities/work.dart'
    as _i13;
import 'package:fo_fe/features/organizer/elements/task/task_lib.dart' as _i2;
import 'package:fo_fe/features/organizer/organizer.dart' as _i12;
import 'package:fo_fe/features/organizer/util/organizer_enums.dart' as _i10;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i9;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeTaskModel_0 extends _i1.SmartFake implements _i2.TaskModel {
  _FakeTaskModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDateTime_1 extends _i1.SmartFake implements DateTime {
  _FakeDateTime_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUser_2 extends _i1.SmartFake implements _i3.User {
  _FakeUser_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i4.NetworkInfo {
  @override
  _i5.Future<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _i5.Future<bool>.value(false),
        returnValueForMissingStub: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
}

/// A class which mocks [TaskLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskLocalDataSource extends _i1.Mock
    implements _i6.TaskLocalDataSource {
  @override
  _i5.Future<_i2.TaskModel> putTask(_i2.TaskModel? task) => (super.noSuchMethod(
        Invocation.method(
          #putTask,
          [task],
        ),
        returnValue: _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #putTask,
            [task],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #putTask,
            [task],
          ),
        )),
      ) as _i5.Future<_i2.TaskModel>);

  @override
  _i5.Future<_i2.TaskModel> postTask(_i2.TaskModel? task) =>
      (super.noSuchMethod(
        Invocation.method(
          #postTask,
          [task],
        ),
        returnValue: _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #postTask,
            [task],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #postTask,
            [task],
          ),
        )),
      ) as _i5.Future<_i2.TaskModel>);

  @override
  _i5.Future<_i2.TaskModel> getTaskById(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getTaskById,
          [id],
        ),
        returnValue: _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #getTaskById,
            [id],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #getTaskById,
            [id],
          ),
        )),
      ) as _i5.Future<_i2.TaskModel>);

  @override
  _i5.Future<void> deleteTask(int? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteTask,
          [id],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [TaskRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskRemoteDataSource extends _i1.Mock
    implements _i7.TaskRemoteDataSource {
  @override
  _i5.Future<_i2.TaskModel> putTask(_i2.TaskModel? task) => (super.noSuchMethod(
        Invocation.method(
          #putTask,
          [task],
        ),
        returnValue: _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #putTask,
            [task],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #putTask,
            [task],
          ),
        )),
      ) as _i5.Future<_i2.TaskModel>);

  @override
  _i5.Future<_i2.TaskModel> postTask(_i2.TaskModel? task) =>
      (super.noSuchMethod(
        Invocation.method(
          #postTask,
          [task],
        ),
        returnValue: _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #postTask,
            [task],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #postTask,
            [task],
          ),
        )),
      ) as _i5.Future<_i2.TaskModel>);

  @override
  _i5.Future<_i2.TaskModel> getTaskById(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getTaskById,
          [id],
        ),
        returnValue: _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #getTaskById,
            [id],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #getTaskById,
            [id],
          ),
        )),
      ) as _i5.Future<_i2.TaskModel>);

  @override
  _i5.Future<Map<String, dynamic>> getUpdatedTaskAsJsonIfDifferent(
          Map<String, dynamic>? json) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUpdatedTaskAsJsonIfDifferent,
          [json],
        ),
        returnValue:
            _i5.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
        returnValueForMissingStub:
            _i5.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i5.Future<Map<String, dynamic>>);

  @override
  _i5.Future<void> deleteTask(int? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteTask,
          [id],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [TaskSync].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskSync extends _i1.Mock implements _i8.TaskSync {
  @override
  _i5.Future<_i2.TaskModel> syncTaskWithId(int? id) => (super.noSuchMethod(
        Invocation.method(
          #syncTaskWithId,
          [id],
        ),
        returnValue: _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #syncTaskWithId,
            [id],
          ),
        )),
        returnValueForMissingStub:
            _i5.Future<_i2.TaskModel>.value(_FakeTaskModel_0(
          this,
          Invocation.method(
            #syncTaskWithId,
            [id],
          ),
        )),
      ) as _i5.Future<_i2.TaskModel>);
}

/// A class which mocks [TaskModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskModel extends _i1.Mock implements _i2.TaskModel {
  @override
  int get id => (super.noSuchMethod(
        Invocation.getter(#id),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  set id(int? _id) => super.noSuchMethod(
        Invocation.setter(
          #id,
          _id,
        ),
        returnValueForMissingStub: null,
      );

  @override
  String get subject => (super.noSuchMethod(
        Invocation.getter(#subject),
        returnValue: _i9.dummyValue<String>(
          this,
          Invocation.getter(#subject),
        ),
        returnValueForMissingStub: _i9.dummyValue<String>(
          this,
          Invocation.getter(#subject),
        ),
      ) as String);

  @override
  set subject(String? _subject) => super.noSuchMethod(
        Invocation.setter(
          #subject,
          _subject,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get status => (super.noSuchMethod(
        Invocation.getter(#status),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  set status(bool? _status) => super.noSuchMethod(
        Invocation.setter(
          #status,
          _status,
        ),
        returnValueForMissingStub: null,
      );

  @override
  DateTime get createdDate => (super.noSuchMethod(
        Invocation.getter(#createdDate),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.getter(#createdDate),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.getter(#createdDate),
        ),
      ) as DateTime);

  @override
  set createdDate(DateTime? _createdDate) => super.noSuchMethod(
        Invocation.setter(
          #createdDate,
          _createdDate,
        ),
        returnValueForMissingStub: null,
      );

  @override
  DateTime get startDate => (super.noSuchMethod(
        Invocation.getter(#startDate),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.getter(#startDate),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.getter(#startDate),
        ),
      ) as DateTime);

  @override
  set startDate(DateTime? _startDate) => super.noSuchMethod(
        Invocation.setter(
          #startDate,
          _startDate,
        ),
        returnValueForMissingStub: null,
      );

  @override
  DateTime get endDate => (super.noSuchMethod(
        Invocation.getter(#endDate),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.getter(#endDate),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.getter(#endDate),
        ),
      ) as DateTime);

  @override
  set endDate(DateTime? _endDate) => super.noSuchMethod(
        Invocation.setter(
          #endDate,
          _endDate,
        ),
        returnValueForMissingStub: null,
      );

  @override
  double get workingTime => (super.noSuchMethod(
        Invocation.getter(#workingTime),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);

  @override
  set workingTime(double? _workingTime) => super.noSuchMethod(
        Invocation.setter(
          #workingTime,
          _workingTime,
        ),
        returnValueForMissingStub: null,
      );

  @override
  double get estimatedTime => (super.noSuchMethod(
        Invocation.getter(#estimatedTime),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);

  @override
  set estimatedTime(double? _estimatedTime) => super.noSuchMethod(
        Invocation.setter(
          #estimatedTime,
          _estimatedTime,
        ),
        returnValueForMissingStub: null,
      );

  @override
  double get estimatedLeftTime => (super.noSuchMethod(
        Invocation.getter(#estimatedLeftTime),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);

  @override
  set estimatedLeftTime(double? _estimatedLeftTime) => super.noSuchMethod(
        Invocation.setter(
          #estimatedLeftTime,
          _estimatedLeftTime,
        ),
        returnValueForMissingStub: null,
      );

  @override
  double get workingProgress => (super.noSuchMethod(
        Invocation.getter(#workingProgress),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);

  @override
  set workingProgress(double? _workingProgress) => super.noSuchMethod(
        Invocation.setter(
          #workingProgress,
          _workingProgress,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i10.TaskStatus get taskStatus => (super.noSuchMethod(
        Invocation.getter(#taskStatus),
        returnValue: _i10.TaskStatus.undefined,
        returnValueForMissingStub: _i10.TaskStatus.undefined,
      ) as _i10.TaskStatus);

  @override
  set taskStatus(_i10.TaskStatus? _taskStatus) => super.noSuchMethod(
        Invocation.setter(
          #taskStatus,
          _taskStatus,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.User get creator => (super.noSuchMethod(
        Invocation.getter(#creator),
        returnValue: _FakeUser_2(
          this,
          Invocation.getter(#creator),
        ),
        returnValueForMissingStub: _FakeUser_2(
          this,
          Invocation.getter(#creator),
        ),
      ) as _i3.User);

  @override
  set creator(_i3.User? _creator) => super.noSuchMethod(
        Invocation.setter(
          #creator,
          _creator,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<_i3.User> get userList => (super.noSuchMethod(
        Invocation.getter(#userList),
        returnValue: <_i3.User>[],
        returnValueForMissingStub: <_i3.User>[],
      ) as List<_i3.User>);

  @override
  set userList(List<_i3.User>? _userList) => super.noSuchMethod(
        Invocation.setter(
          #userList,
          _userList,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<_i11.Tag> get tagList => (super.noSuchMethod(
        Invocation.getter(#tagList),
        returnValue: <_i11.Tag>[],
        returnValueForMissingStub: <_i11.Tag>[],
      ) as List<_i11.Tag>);

  @override
  set tagList(List<_i11.Tag>? _tagList) => super.noSuchMethod(
        Invocation.setter(
          #tagList,
          _tagList,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<_i12.Reminder> get reminderList => (super.noSuchMethod(
        Invocation.getter(#reminderList),
        returnValue: <_i12.Reminder>[],
        returnValueForMissingStub: <_i12.Reminder>[],
      ) as List<_i12.Reminder>);

  @override
  set reminderList(List<_i12.Reminder>? _reminderList) => super.noSuchMethod(
        Invocation.setter(
          #reminderList,
          _reminderList,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<_i13.Work> get workList => (super.noSuchMethod(
        Invocation.getter(#workList),
        returnValue: <_i13.Work>[],
        returnValueForMissingStub: <_i13.Work>[],
      ) as List<_i13.Work>);

  @override
  set workList(List<_i13.Work>? _workList) => super.noSuchMethod(
        Invocation.setter(
          #workList,
          _workList,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<_i14.Topic> get topicList => (super.noSuchMethod(
        Invocation.getter(#topicList),
        returnValue: <_i14.Topic>[],
        returnValueForMissingStub: <_i14.Topic>[],
      ) as List<_i14.Topic>);

  @override
  set topicList(List<_i14.Topic>? _topicList) => super.noSuchMethod(
        Invocation.setter(
          #topicList,
          _topicList,
        ),
        returnValueForMissingStub: null,
      );

  @override
  int get remoteTaskId => (super.noSuchMethod(
        Invocation.getter(#remoteTaskId),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  set remoteTaskId(int? _remoteTaskId) => super.noSuchMethod(
        Invocation.setter(
          #remoteTaskId,
          _remoteTaskId,
        ),
        returnValueForMissingStub: null,
      );

  @override
  DateTime get lastUpdate => (super.noSuchMethod(
        Invocation.getter(#lastUpdate),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.getter(#lastUpdate),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.getter(#lastUpdate),
        ),
      ) as DateTime);

  @override
  set lastUpdate(DateTime? _lastUpdate) => super.noSuchMethod(
        Invocation.setter(
          #lastUpdate,
          _lastUpdate,
        ),
        returnValueForMissingStub: null,
      );

  @override
  DateTime get lastViewDate => (super.noSuchMethod(
        Invocation.getter(#lastViewDate),
        returnValue: _FakeDateTime_1(
          this,
          Invocation.getter(#lastViewDate),
        ),
        returnValueForMissingStub: _FakeDateTime_1(
          this,
          Invocation.getter(#lastViewDate),
        ),
      ) as DateTime);

  @override
  set lastViewDate(DateTime? _lastViewDate) => super.noSuchMethod(
        Invocation.setter(
          #lastViewDate,
          _lastViewDate,
        ),
        returnValueForMissingStub: null,
      );

  @override
  int get remoteViews => (super.noSuchMethod(
        Invocation.getter(#remoteViews),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  set remoteViews(int? _remoteViews) => super.noSuchMethod(
        Invocation.setter(
          #remoteViews,
          _remoteViews,
        ),
        returnValueForMissingStub: null,
      );

  @override
  int get views => (super.noSuchMethod(
        Invocation.getter(#views),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  set views(int? _views) => super.noSuchMethod(
        Invocation.setter(
          #views,
          _views,
        ),
        returnValueForMissingStub: null,
      );

  @override
  String get checksum => (super.noSuchMethod(
        Invocation.getter(#checksum),
        returnValue: _i9.dummyValue<String>(
          this,
          Invocation.getter(#checksum),
        ),
        returnValueForMissingStub: _i9.dummyValue<String>(
          this,
          Invocation.getter(#checksum),
        ),
      ) as String);

  @override
  set checksum(String? _checksum) => super.noSuchMethod(
        Invocation.setter(
          #checksum,
          _checksum,
        ),
        returnValueForMissingStub: null,
      );

  @override
  List<Object> get props => (super.noSuchMethod(
        Invocation.getter(#props),
        returnValue: <Object>[],
        returnValueForMissingStub: <Object>[],
      ) as List<Object>);

  @override
  Map<String, dynamic> toJson() => (super.noSuchMethod(
        Invocation.method(
          #toJson,
          [],
        ),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);

  @override
  Map<String, dynamic> sendJsonToCheckIfIsUpdated() => (super.noSuchMethod(
        Invocation.method(
          #sendJsonToCheckIfIsUpdated,
          [],
        ),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);

  @override
  _i2.TaskModel copyWith({
    int? id,
    String? subject,
    bool? status,
    DateTime? createdDate,
    DateTime? startDate,
    DateTime? endDate,
    double? workingTime,
    double? estimatedTime,
    double? estimatedLeftTime,
    double? workingProgress,
    _i10.TaskStatus? taskStatus,
    _i3.User? creator,
    List<_i3.User>? userList,
    List<_i11.Tag>? tagList,
    List<_i12.Reminder>? reminderList,
    List<_i13.Work>? workList,
    List<_i14.Topic>? topicList,
    int? remoteTaskId,
    DateTime? lastUpdate,
    DateTime? lastViewDate,
    int? remoteViews,
    int? views,
    String? checksum,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #copyWith,
          [],
          {
            #id: id,
            #subject: subject,
            #status: status,
            #createdDate: createdDate,
            #startDate: startDate,
            #endDate: endDate,
            #workingTime: workingTime,
            #estimatedTime: estimatedTime,
            #estimatedLeftTime: estimatedLeftTime,
            #workingProgress: workingProgress,
            #taskStatus: taskStatus,
            #creator: creator,
            #userList: userList,
            #tagList: tagList,
            #reminderList: reminderList,
            #workList: workList,
            #topicList: topicList,
            #remoteTaskId: remoteTaskId,
            #lastUpdate: lastUpdate,
            #lastViewDate: lastViewDate,
            #remoteViews: remoteViews,
            #views: views,
            #checksum: checksum,
          },
        ),
        returnValue: _FakeTaskModel_0(
          this,
          Invocation.method(
            #copyWith,
            [],
            {
              #id: id,
              #subject: subject,
              #status: status,
              #createdDate: createdDate,
              #startDate: startDate,
              #endDate: endDate,
              #workingTime: workingTime,
              #estimatedTime: estimatedTime,
              #estimatedLeftTime: estimatedLeftTime,
              #workingProgress: workingProgress,
              #taskStatus: taskStatus,
              #creator: creator,
              #userList: userList,
              #tagList: tagList,
              #reminderList: reminderList,
              #workList: workList,
              #topicList: topicList,
              #remoteTaskId: remoteTaskId,
              #lastUpdate: lastUpdate,
              #lastViewDate: lastViewDate,
              #remoteViews: remoteViews,
              #views: views,
              #checksum: checksum,
            },
          ),
        ),
        returnValueForMissingStub: _FakeTaskModel_0(
          this,
          Invocation.method(
            #copyWith,
            [],
            {
              #id: id,
              #subject: subject,
              #status: status,
              #createdDate: createdDate,
              #startDate: startDate,
              #endDate: endDate,
              #workingTime: workingTime,
              #estimatedTime: estimatedTime,
              #estimatedLeftTime: estimatedLeftTime,
              #workingProgress: workingProgress,
              #taskStatus: taskStatus,
              #creator: creator,
              #userList: userList,
              #tagList: tagList,
              #reminderList: reminderList,
              #workList: workList,
              #topicList: topicList,
              #remoteTaskId: remoteTaskId,
              #lastUpdate: lastUpdate,
              #lastViewDate: lastViewDate,
              #remoteViews: remoteViews,
              #views: views,
              #checksum: checksum,
            },
          ),
        ),
      ) as _i2.TaskModel);

  @override
  bool changeState() => (super.noSuchMethod(
        Invocation.method(
          #changeState,
          [],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
}
