class CharModels {
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  bool hintShow;
  CharModels({
    this.hintShow = false,
    this.correctValue,
    this.currentIndex,
    this.currentValue,
  });
  getCurrentValue() {
    correctValue != null ? currentValue : null;
    hintShow ? correctValue : null;
  }

  clear() {
    currentIndex = null;
    currentValue = null;
  }
}
