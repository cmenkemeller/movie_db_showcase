import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:equifax_movie_db/features/home/cubit/home_cubit.dart';
import 'package:equifax_movie_db/util/category_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesWidget extends StatelessWidget {
  final CategoryEnum selectedCategory;
  const CategoriesWidget({required this.selectedCategory, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: MDBTheme.paddingMargin),
        itemCount: CategoryEnum.values.length,
        itemBuilder: (context, index) => ChoiceChip(
          label: Text(CategoryEnum.values[index].title),
          selected: selectedCategory == CategoryEnum.values[index],
          onSelected: (value) => BlocProvider.of<HomeCubit>(context)
              .updateSortBy(CategoryEnum.values[index]),
        ),
      ),
    );
  }
}
