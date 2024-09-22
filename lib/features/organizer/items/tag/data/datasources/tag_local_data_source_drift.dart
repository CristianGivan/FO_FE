import 'package:fo_fe/core/db/drift/organizer_drift_exports.dart';
import 'package:fo_fe/features/organizer/items/organizer_item/config/organizer_item_export.dart';
import 'package:fo_fe/features/organizer/items/tag/config/tag_exports.dart';

class TagLocalDataSourceDrift implements TagLocalDataSource {
  final OrganizerDriftDB db;

  TagLocalDataSourceDrift({required this.db});

  @override
  Future<int> insertTag(TagEntity tag) async {
    // Convert TagEntity to TagTableDriftCompanion before inserting
    final tagCompanion = TagMapper.entityToCompanion(tag);
    return await db.tagDaoDrift.insertTag(tagCompanion);
  }

  @override
  Future<bool> updateTag(TagEntity tag) async {
    final tagCompanion = TagMapper.entityToCompanion(tag);
    return await db.tagDaoDrift.updateTag(tagCompanion);
  }

  @override
  Future<int> deleteTag(int tagId) async {
    return await db.tagDaoDrift.deleteTag(tagId);
  }

  @override
  Future<TagTableDriftG?> getTagById(int id) async {
    return await db.tagDaoDrift.getTagById(id);
  }

  @override
  Future<List<TagTableDriftG>?> getTagItemsAll() async {
    return await db.tagDaoDrift.getTagItemsAll();
  }

  @override
  Future<List<TagTableDriftG?>?> getTagItemsByIdSet(IdSet idSet) async {
    return await db.tagDaoDrift.getTagItemsByTagIdSet(idSet.toSet());
  }
}
