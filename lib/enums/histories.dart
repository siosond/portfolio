import 'package:portfolio/enums/types/history_type.dart';

enum Histories {
  yondu(
    historyType: HistoryType.work,
    positionCount: 1,
    responsibilitiesPerPosition: [3],
  ),
  cafe24(
    historyType: HistoryType.work,
    positionCount: 3,
    responsibilitiesPerPosition: [2, 2, 8],
  ),
  aptus(
    historyType: HistoryType.work,
    positionCount: 1,
    responsibilitiesPerPosition: [1],
  ),
  pup(
    historyType: HistoryType.education,
  );

  final HistoryType historyType;
  final int? positionCount;
  final List<int>? responsibilitiesPerPosition;

  const Histories({
    required this.historyType,
    this.positionCount = 1,
    this.responsibilitiesPerPosition = const [],
  });
}
