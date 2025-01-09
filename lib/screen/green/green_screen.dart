import 'package:example_bloc_with_navigator/bloc/bloc_screen.dart';
import 'package:example_bloc_with_navigator/navigator/base_page.dart';
import 'package:example_bloc_with_navigator/screen/green/green_bloc.dart';
import 'package:example_bloc_with_navigator/screen/widgets/navigation_widget.dart';
import 'package:flutter/material.dart';

class GreenScreen extends BlocScreen {
  static const ROUTE_NAME = '/GreenScreen';

  const GreenScreen({super.key});

  static BasePage page() => BasePage(
        key: UniqueKey(),
        builder: (context) => const GreenScreen(),
        name: ROUTE_NAME,
      );

  @override
  State<GreenScreen> createState() => _GreenScreenState();
}

class _GreenScreenState extends BlocScreenState<GreenScreen, GreenBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Green Screen'),
      ),
      body: ColoredBox(
        color: Colors.green.shade100,
        child: NavigationWidget(
          pop: bloc.pop,
          popAll: bloc.popAll,
          pushGreenScreen: bloc.pushGreenScreen,
          pushRedScreen: bloc.pushRedScreen,
          pushCounterScreen: bloc.pushCounterScreen,
          pushYellowScreen: bloc.pushYellowScreen,
        ),
      ),
    );
  }
}
