// 🐦 Flutter imports:

import 'package:flutter/material.dart';

class ActionTile extends StatelessWidget {
  const ActionTile({
    super.key,
    this.onTap,
    this.title,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.overridenColor,
    this.isLoading = false,
    this.trailing,
    this.leadingWidget,
    this.forceExpanded = true,
    this.padding,
    this.titleWidget,
  });

  final Widget? leadingWidget;
  final VoidCallback? onTap;
  final String? title;
  final MainAxisAlignment mainAxisAlignment;
  final Color? overridenColor;
  final bool isLoading;
  final Widget? trailing;
  final bool forceExpanded;
  final EdgeInsets? padding;
  final Widget? titleWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(vertical: 10),
      child: Semantics(
        label: title,
        child: GestureDetector(
          onTap: isLoading ? null : onTap,
          behavior: HitTestBehavior.opaque,
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: [
              // Loading indicator or leading widget
              if (isLoading)
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                )
              else if (leadingWidget != null)
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: leadingWidget!,
                  ),
                ),

              // Title section - always wrap in Expanded or Flexible
              if (titleWidget != null || title != null)
                forceExpanded
                    ? Expanded(
                        child: titleWidget ??
                            Text(
                              title!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: overridenColor ??
                                          Theme.of(context)
                                              .textTheme
                                              .headlineMedium
                                              ?.color),
                            ),
                      )
                    : Flexible(
                        child: titleWidget ??
                            Text(
                              title!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                      color: overridenColor ??
                                          Theme.of(context)
                                              .textTheme
                                              .headlineMedium
                                              ?.color),
                            ),
                      ),

              // Trailing widget
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ),
    );
  }
}
