import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/App/state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterInitState());

  static CounterCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  int number = 1;

  void inCreaseNumber() {
    number++;
    emit(CounterIncreaseNumber());
  }

  void deCreaseNumber() {
    number--;
    emit(CounterDecreaseNumber());
  }

}