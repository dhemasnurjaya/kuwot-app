import 'package:flutter/material.dart';

// TODO: redesign responsive body for large screens instead of centering
class ResponsiveBodyWidget extends StatelessWidget {
  final Widget child;
  const ResponsiveBodyWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return child;
        } else {
          return Container(
            color: Theme.of(context).colorScheme.surface,
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: child,
              ),
            ),
          );
        }
      },
    );
  }
}
