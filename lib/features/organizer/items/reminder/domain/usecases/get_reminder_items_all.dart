import 'package:dartz/dartz.dart';
import 'package:fo_fe/core/error/failures.dart';
import 'package:fo_fe/core/usecase/usecase.dart';
import 'package:fo_fe/core/util/organizer/core_util_organizer.dart';
import 'package:fo_fe/features/organizer/items/reminder/reminder_exports.dart';

class GetReminderItemsAll
    implements UseCase<OrganizerItems<ReminderEntity>, NoParams> {
  final ReminderRepository repository;

  GetReminderItemsAll(this.repository);

  @override
  Future<Either<Failure, OrganizerItems<ReminderEntity>>> call(
      NoParams params) async {
    return await repository.getReminderItemsAll();
  }
}
