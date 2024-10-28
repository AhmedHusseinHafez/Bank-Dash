// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class MyLocalization {
  MyLocalization();

  static MyLocalization? _current;

  static MyLocalization get current {
    assert(_current != null,
        'No instance of MyLocalization was loaded. Try to initialize the MyLocalization delegate before accessing MyLocalization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<MyLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = MyLocalization();
      MyLocalization._current = instance;

      return instance;
    });
  }

  static MyLocalization of(BuildContext context) {
    final instance = MyLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of MyLocalization present in the widget tree. Did you add MyLocalization.delegate in localizationsDelegates?');
    return instance!;
  }

  static MyLocalization? maybeOf(BuildContext context) {
    return Localizations.of<MyLocalization>(context, MyLocalization);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<MyLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<MyLocalization> load(Locale locale) => MyLocalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
