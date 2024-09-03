// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
// class home extends StatefulWidget {
//   home({super.key});
//
//   @override
//   State<home> createState() => _homeState();
// }
//
// class _homeState extends State<home> {
//   final CarouselController carouselController = CarouselController();
//   int currentIndex = 0;
//   List<dynamic> imgList = [
//     {"id": 1, "image_path": "assets/Slide/img1.png"},
//     {"id": 2, "image_path": 'assets/Slide/img2.png'},
//     {"id": 3, "image_path": 'assets/Slide/img3.png'},
//     {"id": 4, "image_path": 'assets/Slide/img4.png'},
//     {"id": 5, "image_path": 'assets/Slide/img5.png'},
//   ];
//   List<Widget>_listTile = <Widget>[
//     const BackGroundTile(backgroundColor: Colors.pinkAccent, icondata: Icons.home),
//     const BackGroundTile(backgroundColor: Colors.redAccent, icondata: Icons.ac_unit),
//     const BackGroundTile(backgroundColor: Colors.lightBlue, icondata: Icons.landscape),
//     const BackGroundTile(backgroundColor: Colors.amber, icondata: Icons.portrait),
//     const BackGroundTile(backgroundColor: Colors.deepPurpleAccent, icondata: Icons.music_note),
//     const BackGroundTile(backgroundColor: Colors.limeAccent, icondata: Icons.access_alarms),
//     const BackGroundTile(backgroundColor: Colors.indigo, icondata: Icons.satellite_outlined),
//     const BackGroundTile(backgroundColor: Colors.cyan, icondata: Icons.search_sharp),
//     const BackGroundTile(backgroundColor: Colors.yellowAccent, icondata: Icons.adjust_rounded),
//     const BackGroundTile(backgroundColor: Colors.deepOrange, icondata: Icons.attach_money),
//   ];
//   List<StaggeredTile>  _cardTile = <StaggeredTile> [
//     const StaggeredTile.count(4, 3),
//     const StaggeredTile.count(2, 2),
//     const StaggeredTile.count(2, 3),
//     const StaggeredTile.count(2, 2),
//     const StaggeredTile.count(2, 3),
//     const StaggeredTile.count(2, 2),
//     const StaggeredTile.count(2, 3),
//     const StaggeredTile.count(2, 2),
//     const StaggeredTile.count(2, 3),
//     const StaggeredTile.count(2, 2),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       // body: SingleChildScrollView(
//       //   child: Container(
//       //     child: Column(
//       //       children: [
//       //         Padding(
//       //           padding: const EdgeInsets.all(0),
//       //           child: Stack(
//       //             children: [
//       //               Container(
//       //                 height: 180,
//       //                 width: double.infinity,
//       //                 decoration: BoxDecoration(
//       //                   boxShadow: const [
//       //                     BoxShadow(
//       //                       color: Colors.black12,
//       //                       blurRadius: 10,
//       //                       offset: Offset(2, 3),
//       //                     ),
//       //                   ],
//       //                   color: Colors.transparent,
//       //                 ),
//       //                 child: CarouselSlider(
//       //                   items: imgList
//       //                       .map(
//       //                         (item) => Container(
//       //                           height: 150,
//       //                           decoration: BoxDecoration(
//       //                             image: DecorationImage(
//       //                               image: AssetImage(
//       //                                 item['image_path'],
//       //                               ),
//       //                               fit: BoxFit.cover,
//       //                             ),
//       //                           ),
//       //                         ),
//       //                       )
//       //                       .toList(),
//       //                   carouselController: carouselController,
//       //                   options: CarouselOptions(
//       //                     scrollPhysics: const BouncingScrollPhysics(),
//       //                     autoPlay: true,
//       //                     aspectRatio: 2,
//       //                     viewportFraction: 1,
//       //                     onPageChanged: (index, reason) {
//       //                       setState(() {
//       //                         currentIndex = index;
//       //                       });
//       //                     },
//       //                   ),
//       //                 ),
//       //               ),
//       //               Positioned(
//       //                 bottom: 10,
//       //                 left: 0,
//       //                 right: 0,
//       //                 child: Row(
//       //                   mainAxisAlignment: MainAxisAlignment.center,
//       //                   children: imgList.asMap().entries.map((entry) {
//       //                     return GestureDetector(
//       //                       onTap: () =>
//       //                           carouselController.animateToPage(entry.key),
//       //                       child: Container(
//       //                         width: currentIndex == entry.key ? 17 : 7,
//       //                         height: 7.0,
//       //                         margin: const EdgeInsets.symmetric(
//       //                           horizontal: 3.0,
//       //                         ),
//       //                         decoration: BoxDecoration(
//       //                           borderRadius: BorderRadius.circular(10),
//       //                           color: currentIndex == entry.key
//       //                               ? Colors.red
//       //                               : Colors.teal,
//       //                         ),
//       //                       ),
//       //                     );
//       //                   }).toList(),
//       //                 ),
//       //               ),
//       //             ],
//       //           ),
//       //         ),
//       //         Padding(
//       //           padding: const EdgeInsets.all(8.0),
//       //           child: Container(
//       //             decoration: BoxDecoration(
//       //               color: Colors.red,
//       //               borderRadius: BorderRadius.circular(10),
//       //             ),
//       //             height: 140,
//       //             width: double.infinity,
//       //           ),
//       //         ),
//       //         Padding(
//       //           padding: const EdgeInsets.all(8.0),
//       //           child: Row(
//       //             mainAxisAlignment: MainAxisAlignment.start,
//       //             children: [
//       //               Text("All Products"),
//       //             ],
//       //           ),
//       //         ),
//       //         MasonryGridView.count(
//       //           crossAxisCount: 4,
//       //           mainAxisSpacing: 4,
//       //           crossAxisSpacing: 4,
//       //           itemBuilder: (context, index) {
//       //             return Text('ddddddddddddddd');
//       //           },
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       // ),
//       body: StaggeredGridView.count(
//         crossAxisCount: 4,
//         staggeredTiles: _cardTile,
//         children: _listTile,
//         mainAxisSpacing: 4.0,
//         crossAxisSpacing: 4.0,
//
//       ),
//     );
//   }
// }
// class BackGroundTile extends StatelessWidget {
//   final Color backgroundColor;
//   final IconData icondata;
//   const BackGroundTile({required this.backgroundColor, required this.icondata});
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: backgroundColor,
//       child: Icon(icondata, color: Colors.white),
//     );
//   }
// }
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered Grid View Example'),
      ),
      body:MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Tile(
            index: index,
            extent: (index % 5 + 1) * 100,
          );
        },
      ),
    );
  }
}
class Tile extends StatelessWidget {
  final int index;
  final double extent;

  const Tile({
    Key? key,
    required this.index,
    required this.extent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[index % Colors.primaries.length], // Use a color from a list of predefined colors
      child: Center(
        child: Text(
          'Item $index',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      height: extent, // Set the height of the container
    );
  }
}
