import 'package:flutter/material.dart';
import 'package:flutter_application_3/infrastructure/const.dart';
import 'package:flutter_application_3/infrastructure/styles.dart';
import 'package:flutter_application_3/presentation/screens/auth/widgets/search_field.dart';
import 'package:flutter_application_3/presentation/screens/home/widgets/category_item.dart';
import 'package:flutter_application_3/presentation/widgets/custom_appbar.dart';

class SearchPage extends StatefulWidget {
  final ValueChanged<String>? searchOnChanged;

  const SearchPage({super.key, this.searchOnChanged});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String, dynamic>> categories = [
    {'category': 'Podcasts', 'image': Images.ir},
    {'category': 'Live Events', 'image': Images.ir},
    {'category': 'Made For You', 'image': Images.ir},
    {'category': 'New releases', 'image': Images.ir},
    {'category': 'Vietnamese Music', 'image': Images.ir},
    {'category': 'Pop', 'image': Images.ir},
    {'category': 'K-pop', 'image': Images.ir},
    {'category': 'Hip-Hop', 'image': Images.ir},
    {'category': 'Charts', 'image': Images.ir},
    {'category': 'Fresh Finds', 'image': Images.ir},
    {'category': 'Podcasts', 'image': Images.ir},
    {'category': 'Live Events', 'image': Images.ir},
    {'category': 'Made For You', 'image': Images.ir},
    {'category': 'New releases', 'image': Images.ir},
    {'category': 'Vietnamese Music', 'image': Images.ir},
  ];
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(
            text: 'Search',
            icons: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: AppColors.focusedField,
                  size: 32,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          CSearchField(
            controller: searchController,
            onChanged: widget.searchOnChanged,
            prefixIcon: const Icon(
              Icons.search,
              color: AppColors.focusedField,
            ),
            style: TextStyles.searchHint(color: AppColors.black),
            hintText: 'What do you want to lissten to?',
            hintStyle: TextStyles.searchHint(),
          ),
          const SizedBox(height: 13),
          Text(
            'Browse all',
            style: TextStyles.searchHint(color: Colors.white),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                mainAxisExtent: 90,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CategoryItem(
                  item: categories[index],
                );
              },
              itemCount: categories.length,
            ),
          )
        ],
      ),
    );
  }
}
