import 'package:flutter/material.dart';

class AppObserver extends WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.inactive:
        // App is inactive
        print('AppLifecycleState.inactive');
        break;
      case AppLifecycleState.paused:
        // App is paused
        print('AppLifecycleState.paused');
        break;
      case AppLifecycleState.resumed:
        // App is resumed
        print('AppLifecycleState.resumed');
        break;
      case AppLifecycleState.detached:
        // App is detached
        print('AppLifecycleState.detached');
        break;
      case AppLifecycleState.hidden:
      // TODO: Handle this case.
    }
  }

  @override
  void didChangeLocales(List<Locale>? locales) {
    super.didChangeLocales(locales);
    print('Locales changed: $locales');
  }

  @override
  void didChangeDependencies() {
    // super.didChangeDependencies();
    print('Dependencies changed');
  }

  @override
  void didHaveMemoryPressure() {
    super.didHaveMemoryPressure();
    print('Memory pressure detected');
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    print('Metrics changed');
  }

  @override
  void didChangeTextScaleFactor() {
    super.didChangeTextScaleFactor();
    print('Text scale factor changed');
  }
}
