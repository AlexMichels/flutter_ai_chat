import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// provider used to access the AppLocalizations object for the current locale
part 'app_localization_provider.g.dart';

@riverpod
AppLocalizations applocalizations(ApplocalizationsRef ref) {
  ref.state = lookupAppLocalizations(
    basicLocaleListResolution(
      [WidgetsBinding.instance.platformDispatcher.locale],
      AppLocalizations.supportedLocales,
    ),
  );
  // update afterwards
  final observer = _LocaleObserver((locales) {
    ref.state = lookupAppLocalizations(
      basicLocaleListResolution(
        [WidgetsBinding.instance.platformDispatcher.locale],
        AppLocalizations.supportedLocales,
      ),
    );
  });
  final binding = WidgetsBinding.instance;
  ref.onDispose(() => binding.removeObserver(observer));
  return ref.state;
}

/// observed used to notify the caller when the locale changes
class _LocaleObserver extends WidgetsBindingObserver {
  _LocaleObserver(this._didChangeLocales);
  final void Function(List<Locale>? locales) _didChangeLocales;
  @override
  void didChangeLocales(List<Locale>? locales) {
    _didChangeLocales(locales);
  }
}
