import 'package:flutter/material.dart';
import 'package:hero_effect/base/baseviewmodel.dart';
import 'package:hero_effect/data/categories.dart';
import 'package:hero_effect/model/categories.dart';
import 'package:hero_effect/model/travelsmodel.dart';
import 'package:mobx/mobx.dart';
part 'categories_viewmodel.g.dart';

class CategoriesViewModel = _CategoriesViewModelBase with _$CategoriesViewModel;

abstract class _CategoriesViewModelBase with Store, BaseViewModel {
  @observable
  List<CategoriesModel> categories = <CategoriesModel>[];

  @observable
  bool isLoading = false;

  @observable
  List<String> popList = <String>[];

  @observable
  List<TravelModel> travels = <TravelModel>[];

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  getData() {
    if (categoriesData is List) {
      List<dynamic> values = categoriesData;
      for (int i = 0; i < values.length; i++) {
        categories.add(CategoriesModel.fromMap(values[i]));
      }
    }
    if (populerList is List) {
      popList = populerList;
    }
    if (travelList is List) {
      List<dynamic> values = travelList;
      for (int i = 0; i < values.length; i++) {
        travels.add(TravelModel.fromMap(values[i]));
      }
    }
  }

  @override
  void setContext(BuildContext? context) => this.context = context;

  @override
  void init() {
    getData();
  }
}
