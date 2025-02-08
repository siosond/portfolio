import 'package:flutter/material.dart';
import 'package:portfolio/views/common/start_aligned_column.dart';

class HistoryItems extends StatelessWidget {
  final List<String> items;

  const HistoryItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return StartAlignedColumn(
      children: items.map(
        (element) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.circle, size: 8.0),
              ),
              Expanded(
                child: Text(
                  element,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
