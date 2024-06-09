import 'package:equifax_movie_db/core/mdb_theme.dart';
import 'package:equifax_movie_db/features/search/cubit/cubit/search_cubit.dart';
import 'package:equifax_movie_db/i18n/strings.g.dart';
import 'package:equifax_movie_db/widgets/movie_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late SearchController _controller;
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _controller = SearchController();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchAnchor(
            searchController: _controller,
            builder: (context, controller) => SearchBar(
              controller: _textController,
              hintText: '${localize.searchHere} ...',
              constraints: const BoxConstraints(maxHeight: 42, minHeight: 42),
              onSubmitted: (value) {
                _controller.openView();
                _controller.value = TextEditingValue(text: value);
                BlocProvider.of<SearchCubit>(context).search(value);
              },
            ),
            viewOnSubmitted: (value) =>
                BlocProvider.of<SearchCubit>(context).search(value),
            suggestionsBuilder: (context, controller) => [],
            viewBuilder: (list) {
              return BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 18),
                    itemCount: state.movieList.length,
                    itemBuilder: (context, index) {
                      final movie = state.movieList[index];
                      return MovieListTile(
                        movie: movie,
                        padding: const EdgeInsets.symmetric(
                            horizontal: MDBTheme.paddingMargin),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => _controller.openView(),
        ),
      ],
    );
  }
}
