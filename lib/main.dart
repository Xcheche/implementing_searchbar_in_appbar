import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search Bar',
      home: LearningAppbar(),
    );
  }
}

class LearningAppbar extends StatefulWidget {
  const LearningAppbar({super.key});

  @override
  State<LearningAppbar> createState() => _LearningAppbarState();
}

class _LearningAppbarState extends State<LearningAppbar> {
  Icon customIcon = Icon(Icons.search);
  Widget customSearchBar = Text('AppBar');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customSearchBar,
        centerTitle: true,
        leading: InkWell(
          onTap: () {},
          child: const Icon(Icons.menu),
        ),
        titleSpacing: 60.0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = Icon(Icons.cancel);
                  customSearchBar = TextField(
                    textInputAction: TextInputAction.go,
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                  );
                } else {
                  customIcon = Icon(Icons.search);
                  customSearchBar = const Text('counterAPP');
                }
              });
            },
            icon: customIcon,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
        // bottom: PreferredSize(
        //   preferredSize: const Size(50, 50),
        //   child: Container(),
        // ),
        // elevation: 20.0,
      ),
    );
  }
}
