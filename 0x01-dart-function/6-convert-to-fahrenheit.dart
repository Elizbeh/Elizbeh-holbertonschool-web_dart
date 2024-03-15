List<double> convertToF(List<double> temperaturesInC) {
    return temperaturesInC.map((double celsius) {
        return double.parse(((celsius * 9/5) + 32).toStringAsFixed(2));
    }).toList();
}