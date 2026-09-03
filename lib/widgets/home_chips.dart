import 'package:flutter/material.dart';

final listOfCategoryName = <String>[
  "All",
  "Deals",
  "Consoles",
  "Controllers",
  "Audio",
  "Keyboards",
  "Mice",
  "Monitors",
  "Deals",
];

class HomeCategorySection extends StatefulWidget {
  const HomeCategorySection({super.key});

  @override
  State<HomeCategorySection> createState() => _HomeCategorySectionState();
}

class _HomeCategorySectionState extends State<HomeCategorySection> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: listOfCategoryName.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return ChoiseChipCategory(
            chipName: listOfCategoryName[i],
            isSelected: selectedIndex == i,
            onSelected: () => setState(() => selectedIndex = i),
            //    بتقول لـ Flutter بتغير القيمة
            //   "في حاجة اتغيرت"من 0 لـ 3
          );
        },
      ),
    );
  }
}

class ChoiseChipCategory extends StatelessWidget {
  const ChoiseChipCategory({
    super.key,
    required this.chipName,
    required this.isSelected,
    required this.onSelected,
  });

  final String chipName;
  final bool isSelected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: isSelected,
      onSelected: (_) => onSelected(),
      label: Text(chipName),
    );
  }
}
