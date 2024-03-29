import 'package:demo_apps/admob/admob_view.dart';
import 'package:demo_apps/calendar/calendar_view.dart';
import 'package:demo_apps/download_pdf.dart';
import 'package:demo_apps/getx_learn/getx_bottomSheet.dart';
import 'package:demo_apps/getx_learn/getx_showDialog.dart';
import 'package:demo_apps/getx_learn/getx_snackbar.dart';
import 'package:demo_apps/go_router/router.dart';
import 'package:demo_apps/listview_card.dart';
import 'package:demo_apps/provider/event_provider.dart';
import 'package:demo_apps/select_watch.dart';
import 'package:demo_apps/sliver.dart';
import 'package:demo_apps/textfield/textfield_view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:go_router/go_router.dart';

import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();
  runApp(
    ChangeNotifierProvider(
      create: (context) => EventProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      title: 'My App',
      home: CalendarView(),
    );

    // return MaterialApp.router(
    //   routerConfig: router,
    // );
  }
}

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
      ],
    ),
  ],
);
