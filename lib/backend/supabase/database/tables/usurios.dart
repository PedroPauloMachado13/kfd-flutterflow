import '../database.dart';

class UsuriosTable extends SupabaseTable<UsuriosRow> {
  @override
  String get tableName => 'USUÁRIOS';

  @override
  UsuriosRow createRow(Map<String, dynamic> data) => UsuriosRow(data);
}

class UsuriosRow extends SupabaseDataRow {
  UsuriosRow(super.data);

  @override
  SupabaseTable get table => UsuriosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get uid => getField<String>('UID');
  set uid(String? value) => setField<String>('UID', value);

  String? get nome => getField<String>('NOME');
  set nome(String? value) => setField<String>('NOME', value);

  String? get email => getField<String>('EMAIL');
  set email(String? value) => setField<String>('EMAIL', value);

  String? get telefone => getField<String>('TELEFONE');
  set telefone(String? value) => setField<String>('TELEFONE', value);

  String? get rg => getField<String>('RG');
  set rg(String? value) => setField<String>('RG', value);

  String? get cpf => getField<String>('CPF');
  set cpf(String? value) => setField<String>('CPF', value);

  String? get dataDeNasc => getField<String>('DATA DE NASC');
  set dataDeNasc(String? value) => setField<String>('DATA DE NASC', value);

  String? get foto => getField<String>('FOTO');
  set foto(String? value) => setField<String>('FOTO', value);

  String? get time => getField<String>('TIME');
  set time(String? value) => setField<String>('TIME', value);

  String? get cidade => getField<String>('CIDADE');
  set cidade(String? value) => setField<String>('CIDADE', value);

  String? get liga => getField<String>('LIGA');
  set liga(String? value) => setField<String>('LIGA', value);

  String? get numero => getField<String>('NUMERO');
  set numero(String? value) => setField<String>('NUMERO', value);

  String? get posicao => getField<String>('POSIÇÃO');
  set posicao(String? value) => setField<String>('POSIÇÃO', value);

  String? get idade => getField<String>('IDADE');
  set idade(String? value) => setField<String>('IDADE', value);
}
