inherited FMunicipio: TFMunicipio
  Caption = 'FMunicipio'
  ClientHeight = 410
  ClientWidth = 631
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 647
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 20
  inherited Panel1: TPanel
    Height = 410
    ExplicitHeight = 410
  end
  inherited PCPestanas: TcxPageControl
    Width = 566
    Height = 410
    Properties.ActivePage = cxTabSheet2
    OnChange = PCPestanasChange
    ExplicitWidth = 566
    ExplicitHeight = 410
    ClientRectBottom = 408
    ClientRectRight = 564
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 35
      ExplicitWidth = 562
      ExplicitHeight = 373
      inherited cxGrid1: TcxGrid
        Width = 562
        Height = 373
        ExplicitWidth = 562
        ExplicitHeight = 373
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = DSFDQMunicipio
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
          end
          object cxGrid1DBTableView1cveMunicipio: TcxGridDBColumn
            DataBinding.FieldName = 'cveMunicipio'
          end
          object cxGrid1DBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 200
          end
          object cxGrid1DBTableView1id_Estado: TcxGridDBColumn
            DataBinding.FieldName = 'id_Estado'
          end
          object cxGrid1DBTableView1Nombre_Pais: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre_Pais'
            Width = 200
          end
          object cxGrid1DBTableView1IDPais: TcxGridDBColumn
            DataBinding.FieldName = 'IDPais'
          end
          object cxGrid1DBTableView1Nombre_Estado: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre_Estado'
            Width = 200
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 35
      ExplicitWidth = 562
      ExplicitHeight = 373
      object Label3: TLabel
        Left = 22
        Top = 184
        Width = 52
        Height = 20
        Caption = 'Nombre'
      end
      object Label2: TLabel
        Left = 40
        Top = 146
        Width = 34
        Height = 20
        Caption = 'Clave'
      end
      object Label4: TLabel
        Left = 51
        Top = 70
        Width = 23
        Height = 20
        Caption = 'Pais'
      end
      object Label1: TLabel
        Left = 61
        Top = 32
        Width = 13
        Height = 20
        Caption = 'ID'
      end
      object Label5: TLabel
        Left = 33
        Top = 108
        Width = 41
        Height = 20
        Caption = 'Estado'
      end
      object eNombre: TDBEdit
        Left = 78
        Top = 181
        Width = 200
        Height = 28
        DataField = 'Nombre'
        DataSource = DSFDQMunicipio
        TabOrder = 0
      end
      object eClave: TDBEdit
        Left = 78
        Top = 143
        Width = 200
        Height = 28
        DataField = 'cveMunicipio'
        DataSource = DSFDQMunicipio
        TabOrder = 1
      end
      object cbPais: TcxDBLookupComboBox
        Left = 80
        Top = 67
        DataBinding.DataField = 'IDPais'
        DataBinding.DataSource = DSFDQMunicipio
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = DSFDQPais
        Properties.OnCloseUp = cbPaisPropertiesCloseUp
        TabOrder = 2
        Width = 200
      end
      object eID: TDBEdit
        Left = 80
        Top = 29
        Width = 121
        Height = 28
        DataField = 'id'
        DataSource = DSFDQMunicipio
        Enabled = False
        TabOrder = 3
      end
      object cbEstado: TcxDBLookupComboBox
        Left = 78
        Top = 105
        DataBinding.DataField = 'id_Estado'
        DataBinding.DataSource = DSFDQMunicipio
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = DSFDQEstado
        TabOrder = 4
        Width = 200
      end
    end
  end
  inherited FormAutoScaler1: TFormAutoScaler
    DesignDPI = 96
    DesignHeight = 410
    DesignWidth = 631
    DesignTextHeight = 20
  end
  object DSFDQPais: TDataSource
    DataSet = FDQPais
    Left = 531
    Top = 92
  end
  object DSFDQEstado: TDataSource
    DataSet = FDQEstado
    Left = 531
    Top = 140
  end
  object DSFDQMunicipio: TDataSource
    DataSet = FDQMunicipio
    Left = 531
    Top = 188
  end
  object FDQPais: TFDQuery
    Connection = DMRecargas.FDCConexion
    Left = 576
    Top = 88
  end
  object FDQEstado: TFDQuery
    Connection = DMRecargas.FDCConexion
    SQL.Strings = (
      
        'SELECT a."id", a."Clave", a."Nombre", a."IDPais", p."Nombre" as ' +
        '"Nombre_Pais" '
      'FROM "Estado" a '
      'inner join "Pais" p on (p."id" = a."IDPais") '
      'order by a."id"')
    Left = 576
    Top = 144
  end
  object FDQMunicipio: TFDQuery
    Connection = DMRecargas.FDCConexion
    SQL.Strings = (
      'SELECT a."id", a."cveMunicipio", a."Nombre", a."id_Estado", '
      
        'es."Nombre" as "Nombre_Pais", a."IDPais", p."Nombre" as "Nombre_' +
        'Estado" '
      'FROM "Municipio" a '
      'inner join "Pais" p on (p."id" = a."IDPais") '
      'inner join "Estado" es on (es."id" = a."id_Estado") '
      'order by a."id" ')
    Left = 584
    Top = 192
  end
end
