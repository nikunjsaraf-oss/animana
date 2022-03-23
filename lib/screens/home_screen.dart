import 'package:animana/data/anime_data.dart';
import 'package:animana/widgets/anime_head.dart';
import 'package:animana/widgets/custom_scroll_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _scrollOffset = 0.0;
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(size.width, 80),
        child: CustomAppBar(
          title: 'ANIMANA',
          scrollOffset: _scrollOffset,
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: AnimeHead(
              featuredAnime: hxhContent,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomHorizontalScrollBar(
              title: 'Developer\'s Choice',
              animeList: developerChoiceList,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomHorizontalScrollBar(
              title: 'Trending Worldwide',
              animeList: trendingAnime,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomHorizontalScrollBar(
              title: 'Top rated on MyAimeList',
              animeList: topMAL,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomHorizontalScrollBar(
              title: 'Popular on IMdb',
              animeList: popularAnimes,
            ),
          ),
        ],
      ),
    );
  }
}
