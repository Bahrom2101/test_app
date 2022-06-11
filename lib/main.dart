import 'package:auto_updater/auto_updater.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String _feedURL = 'https://github.com/Bahrom2101/test_app/blob/master/dist/appcast.xml';

  void _handleClickSetFeedURL() async {
    await autoUpdater.setFeedURL(_feedURL);
  }

  void _handleClickCheckForUpdates() async {
    await autoUpdater.checkForUpdates();
  }

  void _handleClickCheckForUpdatesWithoutUI() async {
    await autoUpdater.checkForUpdates(inBackground: true);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 196,
              height: 48,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {
                  _handleClickSetFeedURL();
                },
                child: const Center(
                    child: Text(
                  'handleClickSetFeedURL',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 196,
              height: 48,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {
                  _handleClickCheckForUpdates();
                },
                child: const Center(
                    child: Text(
                      'handleClickCheckForUpdates',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 196,
              height: 48,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {
                  _handleClickCheckForUpdatesWithoutUI();
                },
                child: const Center(
                    child: Text(
                      'handleClickCheckForUpdatesWithoutUI',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
