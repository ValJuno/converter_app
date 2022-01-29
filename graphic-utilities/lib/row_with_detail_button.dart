import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'border_bottom_box.dart';

class RowWithDetailButton extends StatelessWidget {
  const RowWithDetailButton({
    required this.columns,
    this.onDetail,
    this.onDownload,
  });

  final List<Widget> columns;
  final VoidCallback? onDetail;
  final VoidCallback? onDownload;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onDetail ?? null,
      child: BorderBottomBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: this._cells(context),
        ),
      ),
    );
  }

  List<Widget> _cells(BuildContext context) {
    List<Widget> cells = [];
    for (int i = 0; i < columns.length; i++) {
      Widget column = columns[i];
      cells.add(
        column,
      );

      if (i != columns.length - 1) {
        cells.add(
          SizedBox(
            width: 5,
          ),
        );
      }
    }

    if (onDetail != null) {
      cells.add(
        SizedBox(
          width: 5,
        ),
      );
      cells.add(
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: onDetail,
          color: Theme.of(context).accentColor,
        ),
      );
    } else if (onDownload != null) {
      cells.add(
        SizedBox(
          width: 5,
        ),
      );
      cells.add(
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.download,
          ),
          onPressed: onDownload,
          color: Theme.of(context).accentColor,
        ),
      );
    }
    return cells;
  }
}
