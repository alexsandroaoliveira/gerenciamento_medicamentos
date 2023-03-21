object DmMedicamentos: TDmMedicamentos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 181
  Top = 200
  Height = 303
  Width = 406
  object SQLConnection1: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=c:\proj\medicamentos.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=sysdba'
      'ServerCharSet='
      'SQLDialect=1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 32
    Top = 48
  end
  object SQLReacoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  REACAO_ADVERSA;')
    SQLConnection = SQLConnection1
    Left = 112
    Top = 48
  end
  object SQLMedicamentos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  MEDICAMENTO M'
      '  JOIN FABRICANTE F ON'
      '    M.ID_FABRICANTE = F.ID_FABRICANTE')
    SQLConnection = SQLConnection1
    Left = 112
    Top = 112
  end
  object SQLMedicamentoReacoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  MEDICAMENTO M'
      '  JOIN MEDICAMENTO_REACAO MR ON'
      '    M.ID_MEDICAMENTO = MR.ID_MEDICAMENTO'
      '  JOIN REACAO_ADVERSA R ON'
      '    MR.ID_REACAO = R.ID_REACAO'
      '')
    SQLConnection = SQLConnection1
    Left = 120
    Top = 176
  end
  object SQLFabricante: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  FABRICANTE;')
    SQLConnection = SQLConnection1
    Left = 104
    object SQLFabricanteID_FABRICANTE: TIntegerField
      FieldName = 'ID_FABRICANTE'
      Required = True
    end
    object SQLFabricanteNOME: TStringField
      FieldName = 'NOME'
      Size = 400
    end
  end
end
