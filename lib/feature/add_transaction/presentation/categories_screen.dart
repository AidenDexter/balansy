import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/resources/assets.gen.dart';
import '../../../core/services/database_service/database_service.dart';
import '../domain/entity/category.dart';
import 'components/add_category_alert_dialog.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  CategoriesScreenState createState() => CategoriesScreenState();
}

class CategoriesScreenState extends State<CategoriesScreen> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _category = Category();
  // var _categoryService = CategoryService();
  final DatabaseService _databaseService = DatabaseService.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openAddCategoryDialog,
        child: const Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: _databaseService.getCategories(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No categories available.'),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final category = snapshot.data![index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                child: Row(children: [
                  Column(
                    children: [
                      Text(category.title),
                      Text(category.description),
                    ],
                  ),
                  const Spacer(),
                  IconButton(onPressed: () => _openEditCategoryDialog(category), icon: const Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _databaseService.deleteCategory(category.id);
                        });
                      },
                      icon: const Icon(Icons.highlight_remove_sharp)),
                  Checkbox(
                    value: category.status == 1,
                    onChanged: (value) async {
                      await _databaseService.updateCategoryStatus(
                        category.id,
                        value! ? 1 : 0,
                      );
                      setState(() {
                        category.status = value ? 1 : 0;
                      });
                      debugPrint('Checkbox value changed to $value');
                    },
                  ),
                ]),
              );
            },
          );
        },
      ),
    );
  }

  /// Открывает диалог добавления новой категории
  void _openAddCategoryDialog() {
    _titleController.clear();
    _descriptionController.clear();
    showDialog(
      context: context,
      builder: (parameters) {
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
                setState(() {
                  _databaseService.updateCategories(_category.id, _category.title, _category.description);
                });
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
      },
    );
  }

  void _openEditCategoryDialog(Category category) {
    _titleController.text = category.title;
    _descriptionController.text = category.description;

    showDialog(
      context: context,
      builder: (parameters) {
        return AlertDialog(
          title: const Text('Edit Category'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: context.pop,
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                category
                  ..title = _titleController.text
                  ..description = _descriptionController.text;
                _databaseService.updateCategory(category);
                setState(() {});
                context.pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
