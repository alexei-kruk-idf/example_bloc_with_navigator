import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'bloc.dart';

abstract class BlocScreen<A> extends StatefulWidget {
  final A? args;

  const BlocScreen({super.key, this.args});
}

abstract class BlocScreenState<BS extends BlocScreen, B extends Bloc> extends State<BS>
    with WidgetsBindingObserver {
  @protected
  final bloc = GetIt.I.get<B>();

  @override
  void initState() {
    ///handle init state to bloc
    super.initState();
    bloc.initState();

    ///handle init args to bloc
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final settings = ModalRoute.of(context)?.settings;
      if (settings?.arguments != null || widget.args != null) {
        bloc.initArgs(settings?.arguments ?? widget.args);
      }
    });

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    bloc.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
