inherited DMRecargas: TDMRecargas
  OldCreateOrder = True
  inherited FDCConexion: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=localhost/3051:E:\Desarrollo\BD\Firebird 2.5\RECARGAS.F' +
        'DB')
    Connected = True
  end
  inherited FDQSeleccionar: TFDQuery
    Left = 160
  end
end
