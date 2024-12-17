import 'dart:convert';

import 'package:flutter/material.dart';

import 'category.dart';

// Кодек для сериализации и десериализации ValueNotifier<Category?>
class ValueNotifierCategoryCodec extends Codec<Object?, Object?> {
  const ValueNotifierCategoryCodec();

  @override
  Converter<Object?, Object?> get decoder => const _ValueNotifierCategoryDecoder();

  @override
  Converter<Object?, Object?> get encoder => const _ValueNotifierCategoryEncoder();
}

/// Декодер: преобразует данные из сериализованного формата обратно в ValueNotifier<Category?>
class _ValueNotifierCategoryDecoder extends Converter<Object?, Object?> {
  const _ValueNotifierCategoryDecoder();

  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }
    final inputAsMap = json.decode(input as String) as Map<String, Object?>;
    return ValueNotifier<Category?>(Category.fromJson(inputAsMap as String));
  }
}

/// Энкодер: сериализует ValueNotifier<Category?> в строку JSON
class _ValueNotifierCategoryEncoder extends Converter<Object?, Object?> {
  const _ValueNotifierCategoryEncoder();

  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }
    if (input is ValueNotifier<Category?>) {
      return json.encode(input.value?.toJson());
    }
    throw FormatException('Cannot encode type ${input.runtimeType}');
  }
}
