import 'package:example_bloc_with_navigator/bloc/bloc_screen.dart';
import 'package:example_bloc_with_navigator/navigator/base_page.dart';
import 'package:example_bloc_with_navigator/screen/red/red_bloc.dart';
import 'package:example_bloc_with_navigator/screen/widgets/navigation_widget.dart';
import 'package:flutter/material.dart';

class YellowScreen extends BlocScreen {
  static const ROUTE_NAME = '/YellowScreen';

  const YellowScreen({super.key});

  static BasePage page() => BasePage(
        key: UniqueKey(),
        builder: (context) => const YellowScreen(),
        name: ROUTE_NAME,
      );

  @override
  State<YellowScreen> createState() => _YellowScreenState();
}

class _YellowScreenState extends BlocScreenState<YellowScreen, RedBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Yellow Screen'),
      ),
      body: ColoredBox(
        color: Colors.yellow.shade100,
        child: NavigationWidget(
          pop: bloc.pop,
          popAll: bloc.popAll,
          pushGreenScreen: bloc.pushGreenScreen,
          pushRedScreen: bloc.pushRedScreen,
          pushYellowScreen: bloc.pushYellowScreen,
          pushCounterScreen: bloc.pushCounterScreen,
        ),
      ),
    );
  }
}
