import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

String _kSupabaseUrl = 'https://yisymcnzhtltqftwbmlm.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlpc3ltY256aHRsdHFmdHdibWxtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE3MTA0ODEsImV4cCI6MjA0NzI4NjQ4MX0.d4yLU0W7BnBQ4jDsjWL-_lghLS--7zTG56BwZTo0hUA';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
