import 'package:flutter/material.dart'; // import ไลบรารี Line Awesome Flutter

import '../constants/colors.dart';
import '../data/data.dart';
import '../widgets/browse_card.dart';
import '../widgets/search_input.dart';
import '../widgets/custom_title.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 17, 17),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Search',
          style: TextStyle(
            color: const Color.fromARGB(255, 234, 255, 247),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            color: const Color.fromARGB(255, 17, 17, 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchInput(),
                const SizedBox(
                  height: 13,
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: searchList
                      .map(
                        (search) => Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: ColorConstants.cardBackGroundColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            search,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 234, 255, 247),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(
                  height: 12,
                ),
                const CustomTitle(title: 'Browse all'),
                const SizedBox(
                  height: 13,
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: const [
                    BrowseCard(
                      title: 'Made For You',
                      color1: '#E02FCF',
                      color2: '#00C188',
                    ),
                    BrowseCard(
                      title: 'Charts',
                      color1: '#0A3CEC',
                      color2: '#4DD4AC',
                    ),
                    BrowseCard(
                      title: 'Discover',
                      color1: '#0A3CEC',
                      color2: '#D9DD01',
                    ),
                    BrowseCard(
                      title: 'New Release',
                      color1: '#0E31AE',
                      color2: '#DD1010',
                    ),
                    BrowseCard(
                      title: 'Thai Music',
                      color1: '#00897b',
                      color2: '#ffc107',
                    ),
                    BrowseCard(
                      title: 'K-Pop',
                      color1: '#f57c00',
                      color2: '#7e57c2',
                    ),
                    BrowseCard(
                      title: 'Hip-Hop',
                      color1: '#e51c23',
                      color2: '#673ab7',
                    ),
                    BrowseCard(
                      title: 'R&B',
                      color1: '#3f51b5',
                      color2: '#7cb342',
                    ),
                    BrowseCard(
                      title: 'Rock',
                      color1: '#1a237e',
                      color2: '#26c6da',
                    ),
                    BrowseCard(
                      title: 'Top-Hits',
                      color1: '#ff5722',
                      color2: '#ec407a',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Align(
        alignment: Alignment.center,
        child: Text(
          'Search',
          style: TextStyle(
            color: Color.fromARGB(255, 234, 255, 247),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
