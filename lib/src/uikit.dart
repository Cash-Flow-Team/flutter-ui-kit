import 'package:uikit/src/modals/uikit_component_group.dart';

typedef RegisterUiComponentsCallback = List<UiComponentGroup> Function();

abstract class UiKit {
  static RegisterUiComponentsCallback _registrationCallback;
  static List<UiComponentGroup> get uiComponentsGroups {
    final builders = _registrationCallback() ?? [];
    // Group here builders by component group field in the builders
    return builders;
  }

  static void register(RegisterUiComponentsCallback registrationCallback) {
    _registrationCallback = registrationCallback;
  }
}
