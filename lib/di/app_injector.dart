import 'package:example_bloc_with_navigator/navigator/base_navigator.dart';
import 'package:example_bloc_with_navigator/screen/app/app_bloc.dart';
import 'package:example_bloc_with_navigator/screen/counter/counter_bloc.dart';
import 'package:example_bloc_with_navigator/screen/green/green_bloc.dart';
import 'package:example_bloc_with_navigator/screen/red/red_bloc.dart';
import 'package:example_bloc_with_navigator/screen/yellow/yellow_bloc.dart';
import 'package:get_it/get_it.dart';

void initAppDi() {
  GetIt.I.registerSingleton<NavigatorImpl>(NavigatorImpl());
  GetIt.I.registerFactory<GreenBloc>(() => GreenBloc());
  GetIt.I.registerFactory<RedBloc>(() => RedBloc());
  GetIt.I.registerFactory<YellowBloc>(() => YellowBloc());
  GetIt.I.registerFactory<AppBloc>(() => AppBloc());
  GetIt.I.registerFactory<CounterBloc>(() => CounterBloc());
}
