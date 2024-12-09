import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moblie_app/ui/home_viewmodel.dart';
import 'package:moblie_app/utils/remove_glow_behavior.dart';
import 'package:moblie_app/utils/snap/snap.dart';
import 'package:moblie_app/utils/snap/snap_scroll_physics.dart';
import 'package:moblie_app/widget/common_header.dart';
import 'package:moblie_app/widget/home/home_action.dart';
import 'package:moblie_app/widget/home/home_diff.dart';
import 'package:moblie_app/widget/home/home_notice.dart';
import 'package:moblie_app/widget/home/home_stats.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var list = ref.watch(mainViewModelProvider);
    if(list.isEmpty){
      ref.read(mainViewModelProvider.notifier).fetchUser();
    }
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 243, 245),
      body: SafeArea(
          child: CustomScrollView(
        physics: SnapScrollPhysics(snaps: [Snap.avoidZone(0, 50)]),
        scrollBehavior: RemoveScrollGlowBehavior(),
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: HeaderDelegate(),
          ),
          const SliverToBoxAdapter(
            child: HomeAction(step: "0"),
          ),
          const SliverToBoxAdapter(
            child: HomeStats(step: "0"),
          ),
          const  SliverToBoxAdapter(
            child: HomeDiff(step: "0"),
          ),
          const  SliverToBoxAdapter(
            child: HomeNotice(step: "0"),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          )
        ],
      )),
    );
  }
}


// class MyHomePage extends ConsumerStatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   ConsumerState<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends ConsumerState<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var list = ref.watch(mainViewModelProvider);
//     if(list.isEmpty){
//       ref.read(mainViewModelProvider.notifier).fetchUser();
//     }
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//           itemCount: list.length,
//           itemBuilder: (context, index) {
//             return Text("${list[index].id}", style: TextStyle(color: Colors.black),);
//           }), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
