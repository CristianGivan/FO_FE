import 'package:drift/drift.dart';
import 'package:fo_fe/core/db/drift/organizer_drift_exports.dart';
import 'package:fo_fe/features/organizer/items/organizer_item/config/organizer_item_export.dart';
import 'package:fo_fe/features/organizer/items/tag/config/tag_exports.dart';

class TagMapper {
  static TagEntity entityFromTableDrift(TagTableDriftG tag) {
    return TagEntity(
      id: tag.id,
      subject: tag.subject,
    );
  }

  static OrganizerItems<TagEntity> entityItemsFromTableDriftItems(
      List<TagTableDriftG> items) {
    return OrganizerItems.of(items.map(entityFromTableDrift).toList());
  }

  static TagTableDriftCompanion tableDriftCompanionFromEntity(
      TagEntity entity) {
    return TagTableDriftCompanion(
      id: Value(entity.id),
      subject: Value(entity.subject),
    );
  }

  static TagTableDriftCompanion entityToCompanion(TagEntity entity) {
    return TagTableDriftCompanion(
      id: entity.id == 0 ? const Value.absent() : Value(entity.id),
      subject: Value(entity.subject),
    );
  }
}
