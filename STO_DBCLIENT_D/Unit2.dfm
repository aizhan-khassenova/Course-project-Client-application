object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 405
  Width = 574
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Persist Security Info=False;User ID=sa;Init' +
      'ial Catalog=Hasenova;Data Source=(local);Initial File Name="";Se' +
      'rver SPN="";'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 144
    Top = 32
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'CUST'
    Left = 88
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 88
    Top = 160
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 184
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 184
    Top = 160
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CommandType = cmdStoredProc
    Parameters = <>
    Left = 272
    Top = 96
  end
  object DataSource3: TDataSource
    DataSet = ADODataSet1
    Left = 272
    Top = 160
  end
end
