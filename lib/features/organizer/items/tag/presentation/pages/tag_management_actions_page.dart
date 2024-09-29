import 'package:flutter/material.dart';
import 'package:fo_fe/features/organizer/items/organizer_item/config/organizer_item_export.dart';
import 'package:fo_fe/features/organizer/items/tag/utils/tag_exports.dart';
import 'package:go_router/go_router.dart';

class TagManagementActionsPage extends StatelessWidget {
  final OrganizerItems<TagEntity> selectedTags;

  TagManagementActionsPage({super.key, OrganizerItems<TagEntity>? selectedTags})
      : selectedTags = selectedTags ?? OrganizerItems.empty();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => context.push('/tag/tag_add'),
                  child: const Text('Add Tag'),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Replace `selectedTags` with your actual selected tags variable
                    if (!selectedTags.isEmpty()) {
                      Navigator.pop(context, selectedTags);
                    }
                  },
                  child: const Text('Link'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => showFilterDialog(context),
                  child: const Text('Filter Tags'),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: ElevatedButton(
                  onPressed: () => showSortDialog(context),
                  child: const Text('Sort Tags'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Enter tag description',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

void showFilterDialog(BuildContext context) {
  // Implement the filter dialog for tags
}

void showSortDialog(BuildContext context) {
  // Implement the sort dialog for tags
}
