import 'package:example_bloc_with_navigator/bloc/bloc.dart';
import 'package:example_bloc_with_navigator/screen/counter/counter_screen.dart';
import 'package:example_bloc_with_navigator/screen/green/green_screen.dart';
import 'package:example_bloc_with_navigator/screen/red/red_screen.dart';
import 'package:example_bloc_with_navigator/screen/yellow/yellow_screen.dart';

class GreenBloc extends BlocImpl {
  void pushGreenScreen() {
    appNavigator.push(GreenScreen.page());
  }

  void pushRedScreen() {
    appNavigator.push(RedScreen.page());
  }

  void pushYellowScreen() {
    appNavigator.push(YellowScreen.page());
  }

  void pop() {
    appNavigator.pop();
  }

  void popAll() {
    appNavigator.popAllAndPush(GreenScreen.page());
  }

  void pushCounterScreen() {
    appNavigator.push(CounterScreen.page());
  }
}
