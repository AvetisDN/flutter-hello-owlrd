import 'package:app_design/menu.dart';
import 'package:app_design/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_design/theme/theme_model.dart';
import 'package:app_design/theme/theme_data.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: Consumer(builder: (context, ThemeModel themeNotifier, child) {
        return MaterialApp(
          title: 'Owlrd',
          theme: themeNotifier.isDark ? darkTheme : lightTheme,
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      }),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return Scaffold(
        appBar: AppBar(
          leadingWidth: 32,
          title: Row(
            children: [
              Image.asset(
                themeNotifier.isDark
                    ? 'assets/images/logo-dark.png'
                    : 'assets/images/logo-light.png',
                height: 32,
                color:
                    themeNotifier.isDark ? Colors.blueGrey[900] : Colors.white,
              ),
              const SizedBox(
                width: 12,
              ),
              const Text("HelloOwlrd"),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(themeNotifier.isDark
                  ? Icons.nightlight_round
                  : Icons.wb_sunny),
              onPressed: () {
                themeNotifier.isDark
                    ? themeNotifier.isDark = false
                    : themeNotifier.isDark = true;
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: SafeArea(
            child: drawerMenu(),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: HomeScreen(),
          ),
        ),
      );
    });
  }
}
