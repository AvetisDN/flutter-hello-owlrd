import 'package:flutter/material.dart';
import 'package:app_design/screens/post_grid.dart';
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
    MediaQueryData queryData = MediaQuery.of(context);
    return Consumer(builder: (context, ThemeModel themeNotifier, child) {
      return Scaffold(
        appBar: AppBar(
          leadingWidth: 32,
          title: Row(
            children: const [
              Icon(
                Icons.adb_rounded,
                size: 32,
              ),
              SizedBox(
                width: 12,
              ),
              Text("HelloOwlrd"),
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
        drawer: queryData.size.width < 1024
            ? const Drawer(
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('MENU'),
                  ),
                ),
              )
            : null,
        body: SafeArea(
          child: PostGrid(),
        ),
      );
    });
  }
}
