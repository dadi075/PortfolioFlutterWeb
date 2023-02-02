import 'package:flutter/material.dart';
import 'package:github_profile2/components/about_block.dart';
import 'package:github_profile2/components/menu_drawer.dart';
import 'package:github_profile2/utils/responsive.dart';
import 'package:github_profile2/components/top_bar_contents.dart';

import 'components/change_theme_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();

  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: ResponsiveWidget.isMediumScreen(context) || ResponsiveWidget.isSmallScreen(context) ?
      AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Nagy Dávid - Fullstack developer"
        ),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ) :
      PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: TopBarContents(),
      ),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                AboutBlock(screenSize: screenSize),
              ],
            )
          ],
        ),
      ),
    );
  }
}

