import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/services/database_service/database_service.dart';
import '../../domain/entity/category.dart';

class AddCategoryAlertDialog extends StatelessWidget {
  const AddCategoryAlertDialog({
    required Category category,
    required TextEditingController titleController,
    required DatabaseService databaseService,
    required TextEditingController descriptionController,
    super.key,
  })  : _category = category,
        _titleController = titleController,
        _databaseService = databaseService,
        _descriptionController = descriptionController;

  final Category _category;
  final TextEditingController _titleController;
  final DatabaseService _databaseService;
  final TextEditingController _descriptionController;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            _category
              ..description = _descriptionController.text
              ..title = _titleController.text;
            _databaseService.addCategory(_category.title, _category.description);

            context.pop();
            _titleController.clear();
            _descriptionController.clear();
            // final result = await _categoryService.saveCategory(_category);
            // debugPrint(result.toString());
          },
          child: const Text('Save'),
        ),
      ],
      title: const Text('Categories Form'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(hintText: 'Write a category', labelText: 'Category'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(hintText: 'Write a description', labelText: 'Description'),
            ),
          ],
        ),
      ),
    );
  }
}
