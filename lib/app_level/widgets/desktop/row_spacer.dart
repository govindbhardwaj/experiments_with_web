import 'package:flutter/material.dart';

class RowSpacer extends StatelessWidget {
  const RowSpacer({
    Key key,
    @required this.children,
    this.spacerWidget = const SizedBox(width: 8),
    this.crossAxisAlignment = CrossAxisAlignment.center,
  })  : assert(children.length > 1),
        super(key: key);

  final List<Widget> children;

  final Widget spacerWidget;

  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final _spacedChildren = <Widget>[];

    for (int i = 0; i < children.length; i++) {
      if (i == 0) {
        _spacedChildren.add(children[i]);
      } else if (i == children.length - 1) {
        _spacedChildren.add(spacerWidget);
        _spacedChildren.add(children[i]);
      } else {
        _spacedChildren.add(spacerWidget);
        _spacedChildren.add(children[i]);
      }
    }

    return Row(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: _spacedChildren,
    );
  }
}
