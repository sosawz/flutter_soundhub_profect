// import 'package:flutter/material.dart';

// import '../models/playlist_model.dart';
// import '../widgets/playlist_card.dart';
// import '../widgets/section_header.dart';

// class PlaylistScreen extends StatelessWidget {
//   const PlaylistScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<Playlist> playlists = Playlist.playlists;
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Color.fromARGB(255, 17, 17, 17),
//             Color.fromARGB(255, 17, 17, 17),
//           ],
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: const _CustomAppBar(),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               const _SearchBar(),
//               _PlaylistMusic(playlists: playlists),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _PlaylistMusic extends StatelessWidget {
//   const _PlaylistMusic({
//     Key? key,
//     required this.playlists,
//   }) : super(key: key);

//   final List<Playlist> playlists;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         children: [
//           const SectionHeader(title: 'My Playlists'),
//           ListView.builder(
//             shrinkWrap: true,
//             padding: const EdgeInsets.only(top: 20),
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: playlists.length,
//             itemBuilder: ((context, index) {
//               return PlaylistCard(playlist: playlists[index]);
//             }),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _SearchBar extends StatelessWidget {
//   const _SearchBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextFormField(
//             decoration: InputDecoration(
//               isDense: true,
//               filled: true,
//               fillColor: const Color.fromARGB(255, 97, 97, 97),
//               hintText: 'Search',
//               hintStyle: Theme.of(context)
//                   .textTheme
//                   .bodyMedium!
//                   .copyWith(color: const Color.fromARGB(255, 234, 255, 247)),
//               prefixIcon: const Icon(Icons.search,
//                   color: Color.fromARGB(255, 73, 190, 183)),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(15.0),
//                 borderSide: BorderSide.none,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const _CustomAppBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       title: const Align(
//         alignment: Alignment.center,
//         child: Text(
//           'My Playlist',
//           style: TextStyle(
//             color: Color.fromARGB(255, 234, 255, 247),
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(56.0);
// }

import 'package:flutter/material.dart';

import '../models/playlist_model.dart';
import '../widgets/playlist_card.dart';
import '../widgets/section_header.dart';
import '../widgets/search_input.dart'; // Import the SearchInput widget

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Playlist> playlists = Playlist.playlists;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 17, 17, 17),
            Color.fromARGB(255, 17, 17, 17),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const _CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: const SearchInput(),
              ),
              _PlaylistMusic(playlists: playlists),
            ],
          ),
        ),
      ),
    );
  }
}

class _PlaylistMusic extends StatelessWidget {
  const _PlaylistMusic({
    Key? key,
    required this.playlists,
  }) : super(key: key);

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SectionHeader(title: 'My Playlists'),
          ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 20),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: playlists.length,
            itemBuilder: ((context, index) {
              return PlaylistCard(playlist: playlists[index]);
            }),
          ),
        ],
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
          'My Playlist',
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
  Size get preferredSize => const Size.fromHeight(66.0);
}
