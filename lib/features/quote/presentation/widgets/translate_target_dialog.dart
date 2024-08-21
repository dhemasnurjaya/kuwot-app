import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuwot/core/data/local/translation_target_config.dart';
import 'package:kuwot/core/presentation/bloc/config/translation_target_cubit.dart';

class TranslateTargetDialog extends StatelessWidget {
  const TranslateTargetDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final header = Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 8, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Quote Language',
            style: GoogleFonts.sriracha(fontSize: 24),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop<TranslationTarget?>(null);
            },
            icon: const FaIcon(FontAwesomeIcons.xmark),
          ),
        ],
      ),
    );

    final currentTranslationTarget =
        context.read<TranslationTargetCubit>().state;

    final languageList = SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: translationTargets.length,
        itemBuilder: (context, index) {
          final isSelected =
              currentTranslationTarget.name == translationTargets[index].name;
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            title: Text(
              translationTargets[index].name,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
            ),
            trailing: isSelected ? const FaIcon(FontAwesomeIcons.check) : null,
            onTap: () {
              context.read<TranslationTargetCubit>().set(
                    translationTargets[index],
                  );
              Navigator.of(context)
                  .pop<TranslationTarget?>(translationTargets[index]);
            },
          );
        },
      ),
    );

    return Dialog(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          header,
          const Divider(height: 1),
          languageList,
        ],
      ),
    );
  }
}
