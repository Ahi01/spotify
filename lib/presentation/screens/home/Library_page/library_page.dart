import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/presentation/screens/home/widgets/library_item.dart';
import 'package:flutter_application_3/presentation/screens/home/widgets/library_row.dart';
import 'package:flutter_application_3/presentation/widgets/custom_appbar.dart';

import '../../../widgets/menu_item.dart';
import '../widgets/sort_row.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  final List<Map<String, dynamic>> data = [
    // первая строка
    {
      'title': 'Liked Songs',
      'subtitle': 'Playlist | 3 songs',
      'isCircle': null,
      'image': const Icon(
        Icons.favorite,
        color: Colors.white,
        size: 30,
      ),
    },
    {
      'title': 'Local File',
      'subtitle': 'Playlist | 2 tracks',
      'isCircle': null,
      'image': const Icon(
        Icons.folder,
        color: AppColors.greenLight,
        size: 30,
      ),
    },
    {
      'title': 'New Episodes',
      'subtitle': 'Update today',
      'isCircle': null,
      'image': const Icon(
        Icons.notifications,
        color: AppColors.greenLight,
        size: 30,
      ),
    },
    // вторая строка
    {
      'title': 'MAKING MY WAY',
      'subtitle': 'Album | Sơn Tùng M-TP',
      'isCircle': false,
      'image': Images.Rectangle
    },
    {
      'title': 'TED Talks Daily',
      'subtitle': 'Podcast | TED',
      'isCircle': false,
      'image': Images.Rectangle
    },
    {
      'title': 'Sơn Tùng M-TP',
      'subtitle': 'Playlist | TPHUC',
      'isCircle': false,
      'image': Images.Rectangle
    },
    // третья строка
    {
      'title': 'Sơn Tùng M-TP',
      'subtitle': 'Artist',
      'isCircle': true,
      'image': Images.i1
    },
    {
      'title': 'Ed Sheeran',
      'subtitle': 'Artist',
      'isCircle': true,
      'image': Images.i1
    },
    {
      'title': 'Charlie Puth',
      'subtitle': 'Artist',
      'isCircle': true,
      'image': Images.i1
    },
  ];
  final List<String> menuItems = [
    'Music',
    'Podcasts & Shows',
    'Albums',
    'Artists',
    'Music',
    'Podcasts & Shows',
    'Albums',
    'Artists',
    'Music',
    'Podcasts & Shows',
    'Albums',
    'Artists'
  ];
  bool isGrid = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomAppbar(
            text: 'Library',
            ava: Images.i1,
            icons: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 30,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (_, index) => MenuItem(text: menuItems[index]),
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemCount: menuItems.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(height: 8),
        const Divider(thickness: 1, color: AppColors.greyDark),
        const SizedBox(height: 12),
        SortRow(
          callBack: () => setState(() => isGrid = !isGrid),
          isGrid: isGrid,
        ),
        const SizedBox(height: 12),
        Expanded(
          child: isGrid
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 10 / 13),
                  itemBuilder: (context, index) => LibraryItem(
                    item: data[index],
                  ),
                  itemCount: data.length,
                )
              : ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) => LibraryRowItem(
                    item: data[index],
                  ),
                  itemCount: data.length,
                ),
        ),
      ],
    );
  }
}
