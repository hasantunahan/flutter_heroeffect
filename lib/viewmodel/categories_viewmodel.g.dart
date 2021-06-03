// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoriesViewModel on _CategoriesViewModelBase, Store {
  final _$categoriesAtom = Atom(name: '_CategoriesViewModelBase.categories');

  @override
  List<CategoriesModel> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<CategoriesModel> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_CategoriesViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$popListAtom = Atom(name: '_CategoriesViewModelBase.popList');

  @override
  List<String> get popList {
    _$popListAtom.reportRead();
    return super.popList;
  }

  @override
  set popList(List<String> value) {
    _$popListAtom.reportWrite(value, super.popList, () {
      super.popList = value;
    });
  }

  final _$travelsAtom = Atom(name: '_CategoriesViewModelBase.travels');

  @override
  List<TravelModel> get travels {
    _$travelsAtom.reportRead();
    return super.travels;
  }

  @override
  set travels(List<TravelModel> value) {
    _$travelsAtom.reportWrite(value, super.travels, () {
      super.travels = value;
    });
  }

  final _$_CategoriesViewModelBaseActionController =
      ActionController(name: '_CategoriesViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_CategoriesViewModelBaseActionController.startAction(
        name: '_CategoriesViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_CategoriesViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getData() {
    final _$actionInfo = _$_CategoriesViewModelBaseActionController.startAction(
        name: '_CategoriesViewModelBase.getData');
    try {
      return super.getData();
    } finally {
      _$_CategoriesViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
categories: ${categories},
isLoading: ${isLoading},
popList: ${popList},
travels: ${travels}
    ''';
  }
}
