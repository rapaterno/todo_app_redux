import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_app_redux/domain/app/app_state.dart';
import 'package:todo_app_redux/domain/store.dart';
import 'package:todo_app_redux/presentation/router/routes.dart';
import 'package:todo_app_redux/shared/keys.dart';

import 'router/router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final store = createStore();
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          key: Key(SharedKeys.mainApp),
          navigatorKey: SharedKeys.navKey,
          title: "Todo Redux",
          theme: ThemeData(),
          initialRoute: Routes.allTasks,
          onGenerateRoute: AppRouter.generateRoute,
        ));
  }

  GlobalKey<NavigatorState> _getNavigatorKey() {
    return GlobalKey<NavigatorState>();
  }
}
