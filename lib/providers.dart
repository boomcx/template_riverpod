import 'dart:developer';
import 'package:hooks_riverpod/hooks_riverpod.dart';

export 'providers/app.dart';
export 'providers/user_auth.dart';
export 'providers/user.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    final type = provider.runtimeType.toString();
    if (type.startsWith('_')) return;
    log('+ $type:', name: 'Provider');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    final type = provider.runtimeType.toString();
    if (type.startsWith('_')) return;
    log('- $type:', name: 'Provider');
  }
}
