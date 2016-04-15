inherited FProveedor: TFProveedor
  Caption = 'FProveedor'
  ExplicitWidth = 829
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 20
  inherited PCPestanas: TcxPageControl
    Properties.ActivePage = cxTabSheet2
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 35
      ExplicitWidth = 760
      ExplicitHeight = 603
      inherited cxGrid1: TcxGrid
        ExplicitLeft = 3
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = DSFDQProveedor
          object cxGrid1DBTableView1IID: TcxGridDBColumn
            DataBinding.FieldName = 'IID'
          end
          object cxGrid1DBTableView1SNOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'SNOMBRE'
            Width = 235
          end
          object cxGrid1DBTableView1DPCOMISION_RECARGAS: TcxGridDBColumn
            DataBinding.FieldName = 'DPCOMISION_RECARGAS'
            Width = 172
          end
          object cxGrid1DBTableView1DPCOSTO_COBRO_SERVICIO: TcxGridDBColumn
            DataBinding.FieldName = 'DPCOSTO_COBRO_SERVICIO'
            Width = 195
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 5
      ExplicitTop = 37
      ExplicitWidth = 760
      ExplicitHeight = 603
      object ID: TLabel
        Left = 149
        Top = 30
        Width = 13
        Height = 20
        Caption = 'ID'
      end
      object Label1: TLabel
        Left = 110
        Top = 62
        Width = 52
        Height = 20
        Caption = 'Nombre'
      end
      object Label2: TLabel
        Left = 45
        Top = 94
        Width = 117
        Height = 20
        Caption = 'Comision Recargas'
      end
      object Label3: TLabel
        Left = 74
        Top = 126
        Width = 88
        Height = 20
        Caption = 'Costo Servicio'
      end
      object eID: TDBEdit
        Left = 176
        Top = 27
        Width = 121
        Height = 28
        DataField = 'IID'
        DataSource = DSFDQProveedor
        TabOrder = 0
      end
      object eNombre: TDBEdit
        Left = 176
        Top = 59
        Width = 200
        Height = 28
        DataField = 'SNOMBRE'
        DataSource = DSFDQProveedor
        TabOrder = 1
      end
      object eCRecargas: TDBEdit
        Left = 176
        Top = 91
        Width = 200
        Height = 28
        DataField = 'DPCOMISION_RECARGAS'
        DataSource = DSFDQProveedor
        TabOrder = 2
      end
      object eCostoServicio: TDBEdit
        Left = 176
        Top = 123
        Width = 200
        Height = 28
        DataField = 'DPCOSTO_COBRO_SERVICIO'
        DataSource = DSFDQProveedor
        TabOrder = 3
      end
    end
  end
  inherited FormAutoScaler1: TFormAutoScaler
    DesignDPI = 96
    DesignHeight = 640
    DesignWidth = 829
    DesignTextHeight = 20
  end
  object FDQProveedor: TFDQuery
    Active = True
    Connection = DMRecargas.FDCConexion
    SQL.Strings = (
      
        'SELECT a.IID, a.SNOMBRE, a.DPCOMISION_RECARGAS, a.DPCOSTO_COBRO_' +
        'SERVICIO'
      'FROM PROVEEDOR a')
    Left = 691
    Top = 91
  end
  object DSFDQProveedor: TDataSource
    DataSet = FDQProveedor
    Left = 691
    Top = 139
  end
end
