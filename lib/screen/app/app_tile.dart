import 'package:example_bloc_with_navigator/navigator/base_page.dart';
import 'package:example_bloc_with_navigator/screen/counter/counter_screen.dart';

class AppTile {
  final List<BasePage> pages;

  AppTile({required this.pages});

  factory AppTile.init() => AppTile(
        pages: [
          CounterScreen.page(),
        ],
      );
}
