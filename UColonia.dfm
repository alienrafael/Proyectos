inherited FColonia: TFColonia
  Caption = 'FColonia'
  ClientHeight = 536
  ClientWidth = 802
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 818
  ExplicitHeight = 575
  PixelsPerInch = 96
  TextHeight = 20
  inherited Panel1: TPanel
    Height = 536
    ExplicitHeight = 536
  end
  inherited PCPestanas: TcxPageControl
    Width = 737
    Height = 536
    Properties.ActivePage = cxTabSheet2
    OnChange = PCPestanasChange
    ExplicitWidth = 737
    ExplicitHeight = 536
    ClientRectBottom = 534
    ClientRectRight = 735
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 35
      ExplicitWidth = 733
      ExplicitHeight = 499
      inherited cxGrid1: TcxGrid
        Width = 733
        Height = 499
        ExplicitWidth = 733
        ExplicitHeight = 499
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = DSFDQColonia
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 45
          end
          object cxGrid1DBTableView1Clave: TcxGridDBColumn
            DataBinding.FieldName = 'Clave'
          end
          object cxGrid1DBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 123
          end
          object cxGrid1DBTableView1IDPais: TcxGridDBColumn
            DataBinding.FieldName = 'IDPais'
            Width = 47
          end
          object cxGrid1DBTableView1Nombre_Pais: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre_Pais'
            Width = 171
          end
          object cxGrid1DBTableView1id_Estado: TcxGridDBColumn
            DataBinding.FieldName = 'id_Estado'
          end
          object cxGrid1DBTableView1Nombre_Estado: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre_Estado'
            Width = 193
          end
          object cxGrid1DBTableView1id_Municipio: TcxGridDBColumn
            DataBinding.FieldName = 'id_Municipio'
          end
          object cxGrid1DBTableView1Nombre_Municipio: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre_Municipio'
            Width = 190
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 35
      ExplicitWidth = 733
      ExplicitHeight = 499
      object Label1: TLabel
        Left = 91
        Top = 32
        Width = 13
        Height = 20
        Caption = 'ID'
      end
      object Label4: TLabel
        Left = 81
        Top = 64
        Width = 23
        Height = 20
        Caption = 'Pais'
      end
      object Label2: TLabel
        Left = 70
        Top = 160
        Width = 34
        Height = 20
        Caption = 'Clave'
      end
      object Label3: TLabel
        Left = 52
        Top = 192
        Width = 52
        Height = 20
        Caption = 'Nombre'
      end
      object Label5: TLabel
        Left = 44
        Top = 128
        Width = 60
        Height = 20
        Caption = 'Municipio'
      end
      object Label6: TLabel
        Left = 63
        Top = 96
        Width = 41
        Height = 20
        Caption = 'Estado'
      end
      object eID: TDBEdit
        Left = 120
        Top = 29
        Width = 121
        Height = 28
        DataField = 'id'
        DataSource = DSFDQColonia
        Enabled = False
        TabOrder = 0
      end
      object cbPais: TcxDBLookupComboBox
        Left = 120
        Top = 61
        DataBinding.DataField = 'IDPais'
        DataBinding.DataSource = DSFDQColonia
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = DSFDQPais
        Properties.OnCloseUp = cbPaisPropertiesCloseUp
        TabOrder = 1
        Width = 200
      end
      object eClave: TDBEdit
        Left = 120
        Top = 157
        Width = 200
        Height = 28
        DataField = 'Clave'
        DataSource = DSFDQColonia
        TabOrder = 2
      end
      object eNombre: TDBEdit
        Left = 120
        Top = 189
        Width = 200
        Height = 28
        DataField = 'Nombre'
        DataSource = DSFDQColonia
        TabOrder = 3
      end
      object cbMunicipio: TcxDBLookupComboBox
        Left = 120
        Top = 125
        DataBinding.DataField = 'id_Municipio'
        DataBinding.DataSource = DSFDQColonia
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = DSFDQMunicipio
        TabOrder = 4
        Width = 200
      end
      object cbEstado: TcxDBLookupComboBox
        Left = 120
        Top = 93
        DataBinding.DataField = 'id_Estado'
        DataBinding.DataSource = DSFDQColonia
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = DSFDQEstado
        Properties.OnCloseUp = cbEstadoPropertiesCloseUp
        TabOrder = 5
        Width = 200
      end
    end
  end
  inherited FormAutoScaler1: TFormAutoScaler
    Left = 462
    Top = 45
    DesignDPI = 96
    DesignHeight = 536
    DesignWidth = 802
    DesignTextHeight = 20
  end
  inherited XPManifest1: TXPManifest
    Left = 688
    Top = 49
  end
  object DSFDQPais: TDataSource
    DataSet = FDQPais
    Left = 547
    Top = 44
  end
  object DSFDQEstado: TDataSource
    DataSet = FDQEstado
    Left = 547
    Top = 100
  end
  object DSFDQMunicipio: TDataSource
    DataSet = FDQMunicipio
    Left = 547
    Top = 156
  end
  object DSFDQColonia: TDataSource
    DataSet = FDQColonia
    Left = 547
    Top = 204
  end
  object FDQPais: TFDQuery
    Connection = DMRecargas.FDCConexion
    Left = 608
    Top = 48
  end
  object FDQEstado: TFDQuery
    Connection = DMRecargas.FDCConexion
    SQL.Strings = (
      
        'SELECT a."id", a."Clave", a."Nombre", a."IDPais", p."Nombre" as ' +
        '"Nombre_Pais" '
      'FROM "Estado" a '
      'inner join "Pais" p on (p."id" = a."IDPais") '
      'order by a."id"')
    Left = 608
    Top = 112
  end
  object FDQMunicipio: TFDQuery
    Connection = DMRecargas.FDCConexion
    Left = 608
    Top = 160
  end
  object FDQColonia: TFDQuery
    Active = True
    Connection = DMRecargas.FDCConexion
    SQL.Strings = (
      
        'SELECT a."id",a."Clave", a."Nombre", a."IDPais", p."Nombre" as "' +
        'Nombre_Pais", '
      
        'a."id_Estado", es."Nombre" as "Nombre_Estado", a."id_Municipio",' +
        ' mun."Nombre" as "Nombre_Municipio" '
      'FROM "Colonia" a '
      'inner join "Pais" p on (p."id" = a."IDPais") '
      'inner join "Estado" es on (es."id" = a."id_Estado") '
      'inner join "Municipio" mun on (a."id_Municipio" = mun."id") '
      'order by a."id" ')
    Left = 616
    Top = 208
  end
end
