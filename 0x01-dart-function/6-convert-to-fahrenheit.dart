List<String> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
  .map((celsius) => ((celsius * 9 / 5) + 32).toStringAsFixed(2)).toList();
}