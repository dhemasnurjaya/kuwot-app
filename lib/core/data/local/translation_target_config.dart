import 'package:kuwot/core/data/local/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

const translationTargetConfigKey = 'translationTarget';
const defaultTranslationTarget = TranslationTarget('en', 'English');
const translationTargets = [
  defaultTranslationTarget,
  TranslationTarget('ar', 'Arabic'),
  TranslationTarget('bg', 'Bulgarian'),
  TranslationTarget('cs', 'Czech'),
  TranslationTarget('da', 'Danish'),
  TranslationTarget('de', 'German'),
  TranslationTarget('el', 'Greek'),
  TranslationTarget('es', 'Spanish'),
  TranslationTarget('et', 'Estonian'),
  TranslationTarget('fi', 'Finnish'),
  TranslationTarget('fr', 'French'),
  TranslationTarget('hu', 'Hungarian'),
  TranslationTarget('id', 'Indonesian'),
  TranslationTarget('it', 'Italian'),
  TranslationTarget('ja', 'Japanese'),
  TranslationTarget('ko', 'Korean'),
  TranslationTarget('lt', 'Lithuanian'),
  TranslationTarget('lv', 'Latvian'),
  TranslationTarget('nb', 'Norwegian Bokmål'),
  TranslationTarget('nl', 'Dutch'),
  TranslationTarget('pl', 'Polish'),
  TranslationTarget('pt', 'Portuguese'),
  TranslationTarget('ro', 'Romanian'),
  TranslationTarget('ru', 'Russian'),
  TranslationTarget('sk', 'Slovak'),
  TranslationTarget('sl', 'Slovenian'),
  TranslationTarget('sv', 'Swedish'),
  TranslationTarget('tr', 'Turkish'),
  TranslationTarget('uk', 'Ukrainian'),
  TranslationTarget('zh', 'Chinese'),
];

class TranslationTarget {
  final String id;
  final String name;

  const TranslationTarget(this.id, this.name);
}

class TranslationTargetConfig extends Config<TranslationTarget> {
  TranslationTargetConfig({required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  @override
  Future<TranslationTarget?> get() async {
    final id = sharedPreferences.getString(translationTargetConfigKey);
    return translationTargets.where((element) => element.id == id).firstOrNull;
  }

  @override
  Future<void> set(TranslationTarget value) async {
    await sharedPreferences.setString(translationTargetConfigKey, value.id);
  }

  @override
  Future<void> remove() async {
    await sharedPreferences.remove(translationTargetConfigKey);
  }
}
