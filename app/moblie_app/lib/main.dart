import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moblie_app/ui/home.dart';
import 'package:moblie_app/ui/more.dart';
import 'package:moblie_app/ui/myway.dart';
import 'package:moblie_app/ui/reward.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter _goRoute = GoRouter(
  initialLocation: '/home',
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Scaffold(
          body: navigationShell,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navigationShell.currentIndex,
            selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
            unselectedItemColor: const Color.fromARGB(255, 172, 172, 172),
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              navigationShell.goBranch(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.auto_stories), label: "마이웨이"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
              BottomNavigationBarItem(icon: Icon(Icons.workspace_premium), label: "혜택"),
              BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "더 보기"),
            ],
          ),
        );
      },
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/myway',
            builder: (context, state) => const MywayScreen(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/home',
            builder: (context, state) => const HomeScreen(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/reward',
            builder: (context, state) => const RewardScreen(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/more',
            builder: (context, state) => const MoreScreen(),
          )
        ])
      ],
    )
  ],
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _goRoute,
    );
  }
}
