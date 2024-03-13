import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';
import 'package:flutter_application_3/presentation/screens/home/widgets/artist_container.dart';
import 'package:flutter_application_3/presentation/screens/home/widgets/artist_card.dart';
import 'package:flutter_application_3/presentation/widgets/custom_appbar.dart';
import 'package:flutter_application_3/presentation/widgets/menu_item.dart';
import 'package:flutter_application_3/presentation/widgets/mini_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> artists = [
    {'image': Images.ir, 'name': 'MAKING MY WAY'},
    {'image': Images.ir, 'name': 'Ed Sheeran'},
    {
      'image': Images.ir,
      'name': 'UI Breakfast: UI/UX Design and Product Strategy'
    },
    {'image': Images.ir, 'name': 'Sơn Tùng M-TP'},
    {'image': Images.ir, 'name': 'This Is Sơn Tùng M-TP'},
    {'image': Images.ir, 'name': 'Charlie Puth'},
  ];
  final List<String> menuItems = ['Music', 'Podcasts & Shows'];
  List<Map<String, dynamic>> artistsRectangle = [
    {'image': Images.Rectangle, 'name': 'MAKING MY WAY'},
    {'image': Images.Rectangle, 'name': 'Ed Sheeran'},
    {
      'image': Images.Rectangle,
      'name': 'UI Breakfast: UI/UX Design and Product Strategy'
    },
    {'image': Images.Rectangle, 'name': 'Sơn Tùng M-TP'},
    {'image': Images.Rectangle, 'name': 'This Is Sơn Tùng M-TP'},
    {'image': Images.Rectangle, 'name': 'Charlie Puth'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(
              icons: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                      size: 32,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.lock_reset_rounded,
                      color: Colors.white,
                      size: 32,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
              text: 'Good morning',
            ),
            const SizedBox(height: 14),
            SizedBox(
              height: 30,
              child: ListView.separated(
                itemBuilder: (_, index) => MenuItem(
                  text: menuItems[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemCount: menuItems.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1 / 0.3,
              ),
              itemBuilder: (context, index) => ArtistCard(
                path: artists[index]['image'],
                name: artists[index]['name'],
              ),
              itemCount: artists.length,
            ),
            const SizedBox(height: 24),
            const MiniTitle(),
            const SizedBox(height: 12),
            const ArtistContainer(),
            const SizedBox(height: 24),
            Text(
              'Jump back in',
              style: TextStyles.textTitle(fontSize: 20),
            ),
            const SizedBox(height: 17),
            SizedBox(
              height: 135,
              child: ListView.separated(
                itemCount: artistsRectangle.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (contex, index) => Image.asset(
                  artistsRectangle[index]['image'],
                ),
                separatorBuilder: (BuildContext contex, int index) =>
                    const SizedBox(width: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
