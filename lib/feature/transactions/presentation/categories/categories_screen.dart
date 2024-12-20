import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/i18n/translations/translations.g.dart';
import '../../bloc/categories.dart';
import '../../domain/entity/category.dart';
import 'categories_scope.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  CategoriesScreenState createState() => CategoriesScreenState();
}

class CategoriesScreenState extends State<CategoriesScreen> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void deactivate() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.categories),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: FloatingActionButton(
          onPressed: _openAddCategoryDialog,
          child: const Icon(Icons.add),
        ),
      ),
      body: BlocBuilder<CategoriesBloc, CategoriesState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.categories.length,
            itemBuilder: (context, index) {
              final category = state.categories[index];
              return GestureDetector(
                onTap: () {
                  context.pop(category);
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(category.title),
                            Text(category.description),
                            Text('id - ${category.id}'),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () => _openEditCategoryDialog(category),
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            CategoriesScope.delete(context, category.id!);
                          },
                          icon: const Icon(Icons.highlight_remove_sharp),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

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
              child: Text(t.cancel),
            ),
            TextButton(
              onPressed: () {
                CategoriesScope.add(
                    context, Category(description: _descriptionController.text, title: _titleController.text));
                context.pop();
                _titleController.clear();
                _descriptionController.clear();
              },
              child: Text(t.save),
            ),
          ],
          title: Text(t.categoriesForm),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(hintText: t.writeACategory, labelText: t.category),
                ),
                TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(hintText: t.writeADescription, labelText: t.description),
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
          title: Text(t.editCategory),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(labelText: t.title),
              ),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: t.description),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: context.pop,
              child: Text(t.cancel),
            ),
            TextButton(
              onPressed: () {
                CategoriesScope.update(
                    context,
                    Category(
                      description: _descriptionController.text,
                      title: _titleController.text,
                      id: category.id,
                    ));
                context.pop();
                _titleController.clear();
                _descriptionController.clear();
              },
              child: Text(t.save),
            ),
          ],
        );
      },
    );
  }
}
