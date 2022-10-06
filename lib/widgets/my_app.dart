import 'package:flutter/material.dart';
import '../theme/theme_constants.dart';
import '../theme/theme_manager.dart';
import 'initial_page.dart';
ThemeManager _themeManager=ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  initState(){
    _themeManager.addListener(themeChange);
    super.initState();
  }
  dispose(){
    _themeManager.removeListener(themeChange);
    super.dispose();
  }

  themeChange(){
    if(mounted){
      setState((){});
    }
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: _themeManager.themeMode,
      home:  SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: Text('BMI CALCULATOR'),
    actions: [
    Switch(value: _themeManager.themeMode == ThemeMode.dark,
    onChanged: (require){
    _themeManager.toggleTheme(require);
    })
    ],
    centerTitle: true,
    elevation: 0,
    ),
          body: MainScreen(),
    )
      ),
    );
  }
}
