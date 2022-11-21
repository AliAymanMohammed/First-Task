import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/HomeScreen/model/dummy_list_model.dart';
import 'package:test/cubit/states.dart';

import 'package:flutter/material.dart';

import '../DioHelper/dio.dart';

class MainCubit extends Cubit<MainCubitStates> {
  MainCubit() : super(CubitInitialState());

  static MainCubit get(context) {
    return BlocProvider.of(context);
  }

  var isOpened = false;

  void toggleDrawer() {
    isOpened = !isOpened;
    emit(DrawerState());
  }

  DummyNewsList? dummyNewsList;
  void getDummyList() {
    emit(DummyListLoadingState());
    DioHelper.getData(
      'v2/top-headlines',
      {
        'country': 'eg',
        'category%100': 'business',
        'apiKey': 'd745b378a0f44906b347600d289edfe2',
      },
    )?.then((value) {
      dummyNewsList = DummyNewsList.fromJson(value.data);
      emit(DummyListDoneState());
    });
  }
}
