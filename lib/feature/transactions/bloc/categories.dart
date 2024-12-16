import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entity/category.dart';
import '../domain/repository/i_category_repository.dart';

part 'categories.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const CategoriesState._();

  const factory CategoriesState.idle({required List<Category> categories}) = _Idle;
  const factory CategoriesState.progress({required List<Category> categories}) = _Progress;
  const factory CategoriesState.success({required List<Category> categories}) = _Success;
  const factory CategoriesState.error({required List<Category> categories, required String error}) = _Error;
}

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.add({required Category category}) = _AddCategoryEvent;
  const factory CategoriesEvent.delete({required int id}) = _DeleteCategoryEvent;
  const factory CategoriesEvent.onChange({required List<Category> categories}) = _OnChangeCategoriesEvent;
  const factory CategoriesEvent.update({required Category category}) = _UpdateCategoryEvent;
}

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final ICategoriesRepository _repository;
  late final StreamSubscription<List<Category>> _categoriesSubscription;

  CategoriesBloc({required ICategoriesRepository repository})
      : _repository = repository,
        super(CategoriesState.idle(categories: repository.categories.value)) {
    on<CategoriesEvent>(
      (event, emit) => event.map(
        add: (event) => _add(event, emit),
        update: (event) => _update(event, emit),
        delete: (event) => _delete(event, emit),
        onChange: (event) => _onChange(event, emit),
      ),
    );
    repository.categories.stream.listen(
      (newCategories) => add(CategoriesEvent.onChange(categories: newCategories)),
      onError: addError,
      cancelOnError: false,
    );
  }

  Future<void> _add(_AddCategoryEvent event, Emitter<CategoriesState> emit) async {
    emit(CategoriesState.progress(categories: state.categories));
    try {
      await _repository.create(event.category);
      emit(CategoriesState.success(categories: state.categories));
    } on Exception catch (e) {
      emit(CategoriesState.error(categories: state.categories, error: 'Failed to add category: $e'));
    } finally {
      emit(CategoriesState.idle(categories: state.categories));
    }
  }

  Future<void> _delete(_DeleteCategoryEvent event, Emitter<CategoriesState> emit) async {
    emit(CategoriesState.progress(categories: state.categories));
    try {
      await _repository.delete(event.id);
      emit(CategoriesState.success(categories: state.categories));
    } on Exception catch (e) {
      emit(CategoriesState.error(categories: state.categories, error: 'Failed to delete category: $e'));
    } finally {
      emit(CategoriesState.idle(categories: state.categories));
    }
  }

  Future<void> _update(_UpdateCategoryEvent event, Emitter<CategoriesState> emit) async {
    emit(CategoriesState.progress(categories: state.categories));
    try {
      await _repository.update(event.category);
      emit(CategoriesState.success(categories: state.categories));
    } on Exception catch (e) {
      emit(CategoriesState.error(categories: state.categories, error: 'Failed to update category: $e'));
    } finally {
      emit(CategoriesState.idle(categories: state.categories));
    }
  }

  void _onChange(_OnChangeCategoriesEvent event, Emitter<CategoriesState> emit) {
    emit(CategoriesState.idle(categories: event.categories));
  }

  @override
  Future<void> close() {
    _categoriesSubscription.cancel();
    _repository.dispose();
    return super.close();
  }
}
