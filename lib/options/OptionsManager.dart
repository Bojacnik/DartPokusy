abstract class OptionsManager {
  late final List<String> _options;

  OptionsManager(List<String> options) {
    _options = options;
  }

  List<String> get() {
    return _options;
  }
}
