import 'package:hooks_riverpod/hooks_riverpod.dart';

// 外部から変更が可能なステート（状態）を公開するプロバイダ
final counterProvider = StateProvider((ref)=> 0);