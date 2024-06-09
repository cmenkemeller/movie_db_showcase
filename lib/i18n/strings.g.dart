/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 26 (13 per locale)
///
/// Built on 2024-06-09 at 16:17 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
  en(languageCode: 'en', build: Translations.build),
  es(languageCode: 'es', build: _StringsEs.build);

  const AppLocale(
      {required this.languageCode,
      this.scriptCode,
      this.countryCode,
      required this.build}); // ignore: unused_element

  @override
  final String languageCode;
  @override
  final String? scriptCode;
  @override
  final String? countryCode;
  @override
  final TranslationBuilder<AppLocale, Translations> build;

  /// Gets current instance managed by [LocaleSettings].
  Translations get translations =>
      LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of localize).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = localize.someKey.anotherKey;
/// String b = localize['someKey.anotherKey']; // Only for edge cases!
Translations get localize => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final localize = Translations.of(context); // Get localize variable.
/// String a = localize.someKey.anotherKey; // Use localize variable.
/// String b = localize['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider
    extends BaseTranslationProvider<AppLocale, Translations> {
  TranslationProvider({required super.child})
      : super(settings: LocaleSettings.instance);

  static InheritedLocaleData<AppLocale, Translations> of(
          BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.localize.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
  Translations get localize => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings
    extends BaseFlutterLocaleSettings<AppLocale, Translations> {
  LocaleSettings._() : super(utils: AppLocaleUtils.instance);

  static final instance = LocaleSettings._();

  // static aliases (checkout base methods for documentation)
  static AppLocale get currentLocale => instance.currentLocale;
  static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
  static AppLocale setLocale(AppLocale locale,
          {bool? listenToDeviceLocale = false}) =>
      instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale setLocaleRaw(String rawLocale,
          {bool? listenToDeviceLocale = false}) =>
      instance.setLocaleRaw(rawLocale,
          listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale useDeviceLocale() => instance.useDeviceLocale();
  @Deprecated('Use [AppLocaleUtils.supportedLocales]')
  static List<Locale> get supportedLocales => instance.supportedLocales;
  @Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]')
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
  static void setPluralResolver(
          {String? language,
          AppLocale? locale,
          PluralResolver? cardinalResolver,
          PluralResolver? ordinalResolver}) =>
      instance.setPluralResolver(
        language: language,
        locale: locale,
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      );
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
  AppLocaleUtils._()
      : super(baseLocale: _baseLocale, locales: AppLocale.values);

  static final instance = AppLocaleUtils._();

  // static aliases (checkout base methods for documentation)
  static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
  static AppLocale parseLocaleParts(
          {required String languageCode,
          String? scriptCode,
          String? countryCode}) =>
      instance.parseLocaleParts(
          languageCode: languageCode,
          scriptCode: scriptCode,
          countryCode: countryCode);
  static AppLocale findDeviceLocale() => instance.findDeviceLocale();
  static List<Locale> get supportedLocales => instance.supportedLocales;
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final localize = Translations.of(context);
  static Translations of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.en,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  // Translations
  String get appName => 'Movies DB App';
  String get findYourMovies => 'Find your movies';
  String get title => 'Title';
  String get releaseDate => 'Release Date';
  String get averageRating => 'Average Rating';
  String get searchHere => 'Search here';
  String get overview => 'Overview';
  String get popularity => 'Popularity';
  String get voteCount => 'Vote Count';
  String get back => 'Back';
  String get topRated => 'Top Rated';
  String get popular => 'Popular';
  String get categories => 'Categories';
}

// Path: <root>
class _StringsEs implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsEs.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.es,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <es>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  @override
  late final _StringsEs _root = this; // ignore: unused_field

  // Translations
  @override
  String get appName => 'App de Movies DB';
  @override
  String get findYourMovies => 'Encuentra tus películas';
  @override
  String get title => 'Título';
  @override
  String get releaseDate => 'Fecha de Lanzamiento';
  @override
  String get averageRating => 'Calificación Promedio';
  @override
  String get searchHere => 'Buscar aquí';
  @override
  String get overview => 'Resumen';
  @override
  String get popularity => 'Popularidad';
  @override
  String get voteCount => 'Conteo de Votos';
  @override
  String get back => 'Regresar';
  @override
  String get topRated => 'Mejor Valoradas';
  @override
  String get popular => 'Popular';
  @override
  String get categories => 'Categorías';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'appName':
        return 'Movies DB App';
      case 'findYourMovies':
        return 'Find your movies';
      case 'title':
        return 'Title';
      case 'releaseDate':
        return 'Release Date';
      case 'averageRating':
        return 'Average Rating';
      case 'searchHere':
        return 'Search here';
      case 'overview':
        return 'Overview';
      case 'popularity':
        return 'Popularity';
      case 'voteCount':
        return 'Vote Count';
      case 'back':
        return 'Back';
      case 'topRated':
        return 'Top Rated';
      case 'popular':
        return 'Popular';
      case 'categories':
        return 'Categories';
      default:
        return null;
    }
  }
}

extension on _StringsEs {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'appName':
        return 'App de Movies DB';
      case 'findYourMovies':
        return 'Encuentra tus películas';
      case 'title':
        return 'Título';
      case 'releaseDate':
        return 'Fecha de Lanzamiento';
      case 'averageRating':
        return 'Calificación Promedio';
      case 'searchHere':
        return 'Buscar aquí';
      case 'overview':
        return 'Resumen';
      case 'popularity':
        return 'Popularidad';
      case 'voteCount':
        return 'Conteo de Votos';
      case 'back':
        return 'Regresar';
      case 'topRated':
        return 'Mejor Valoradas';
      case 'popular':
        return 'Popular';
      case 'categories':
        return 'Categorías';
      default:
        return null;
    }
  }
}
