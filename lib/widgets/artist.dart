import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../data/data.dart';

class Artist extends StatelessWidget {
  const Artist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: artists.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          final artist = artists[index];

          return Container(
            width: 155,
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
              top: 15,
              bottom: 0,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: ColorConstants.cardBackGroundColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  spreadRadius: 1,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 125,
                  width: 125,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(artist['image'], fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  artist['name'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
