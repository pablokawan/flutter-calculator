class Memory {
  String _value = "0";

  String get value {
    return _value;
  }

  void _clearAll() {
    _value = "0";
  }

  void applyCommand(String command) {
    if (command == "AC") {
      _clearAll();
      return;
    }

    _value += command;
  }
}
