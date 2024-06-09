import 'package:equifax_movie_db/i18n/strings.g.dart';

enum CategoryEnum { topRated, popular }

extension CategoryEnumExtension on CategoryEnum {
  String get path {
    switch (this) {
      case CategoryEnum.topRated:
        return 'top_rated';
      case CategoryEnum.popular:
        return 'popular';
    }
  }

  String get title {
    switch (this) {
      case CategoryEnum.topRated:
        return localize.topRated;
      case CategoryEnum.popular:
        return localize.popular;
    }
  }
}
