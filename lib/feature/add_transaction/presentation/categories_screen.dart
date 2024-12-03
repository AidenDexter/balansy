import 'package:flutter/material.dart';

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
        onPressed: () => showDialog(
            context: context,
            builder: (parameters) {
              return AddCategoryAlertDialog(
                  category: _category,
                  titleController: _titleController,
                  databaseService: _databaseService,
                  descriptionController: _descriptionController);
            }),
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
              final item = snapshot.data![index];
              return Dismissible(
                key: Key(item.id.toString()),
                onDismissed: (direction) {
                  direction == DismissDirection.startToEnd
                      ? _databaseService.deleteCategory(category.id)
                      :
                      //TODO: добавить возможность редактирования
                      _databaseService.deleteCategory(category.id);
                  setState(() {});
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${item.title} dismissed',
                      ),
                    ),
                  );
                },
                background: Container(
                  alignment: Alignment.centerLeft,
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Assets.icons.bin.svg(),
                  ),
                ),
                secondaryBackground: Container(
                  alignment: Alignment.centerRight,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: Assets.icons.pencilUiWhite.svg(),
                  ),
                ),
                child: ListTile(
                  onLongPress: () {
                    setState(() {
                      _databaseService.deleteCategory(category.id);
                    });
                  },
                  title: Text(category.title),
                  subtitle: Text(category.description),
                  trailing: Checkbox(
                    value: category.status == 1,
                    onChanged: (value) async {
                      await _databaseService.updateCategoryStatus(
                        category.id,
                        value! ? 1 : 0,
                      );

                      setState(() {
                        category.status = value ? 1 : 0;
                      });
                      debugPrint(
                        '@@@@@@@@@@@@@ Checkbox value changed to $value',
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
