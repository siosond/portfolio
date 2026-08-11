enum PlacementType { start, center, end }

PlacementType placementAt(int index, int length) {
  if (index == 0) return PlacementType.start;
  if (index == length - 1) return PlacementType.end;
  return PlacementType.center;
}
