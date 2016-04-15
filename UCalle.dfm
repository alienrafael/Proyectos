inherited FCalle: TFCalle
  Caption = 'FCalle'
  ClientHeight = 446
  ClientWidth = 644
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 660
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 20
  inherited Panel1: TPanel
    Height = 446
    ExplicitHeight = 446
  end
  inherited PCPestanas: TcxPageControl
    Width = 579
    Height = 446
    Properties.ActivePage = cxTabSheet2
    ExplicitWidth = 579
    ExplicitHeight = 446
    ClientRectBottom = 444
    ClientRectRight = 577
    inherited cxTabSheet1: TcxTabSheet
      ExplicitWidth = 575
      ExplicitHeight = 409
      inherited cxGrid1: TcxGrid
        Width = 575
        Height = 409
        ExplicitWidth = 575
        ExplicitHeight = 409
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = DSFDQCalle
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 42
          end
          object cxGrid1DBTableView1clave: TcxGridDBColumn
            DataBinding.FieldName = 'clave'
          end
          object cxGrid1DBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 128
          end
          object cxGrid1DBTableView1idpais: TcxGridDBColumn
            DataBinding.FieldName = 'idpais'
          end
          object cxGrid1DBTableView1Nombre_Pais: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre_Pais'
            Width = 174
          end
          object cxGrid1DBTableView1idestado: TcxGridDBColumn
            DataBinding.FieldName = 'idestado'
          end
          object cxGrid1DBTableView1Nombre_Estado: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre_Estado'
            Width = 216
          end
          object cxGrid1DBTableView1idmunicipio: TcxGridDBColumn
            DataBinding.FieldName = 'idmunicipio'
          end
          object cxGrid1DBTableView1Nombre_Munucipio: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre_Munucipio'
          end
          object cxGrid1DBTableView1idcolonia: TcxGridDBColumn
            DataBinding.FieldName = 'idcolonia'
          end
          object cxGrid1DBTableView1Nombre_Colonia: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre_Colonia'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 575
      ExplicitHeight = 409
      object Label1: TLabel
        Left = 75
        Top = 29
        Width = 13
        Height = 20
        Caption = 'ID'
      end
      object Label4: TLabel
        Left = 65
        Top = 61
        Width = 23
        Height = 20
        Caption = 'Pais'
      end
      object Label6: TLabel
        Left = 47
        Top = 93
        Width = 41
        Height = 20
        Caption = 'Estado'
      end
      object Label5: TLabel
        Left = 28
        Top = 125
        Width = 60
        Height = 20
        Caption = 'Municipio'
      end
      object Label2: TLabel
        Left = 54
        Top = 189
        Width = 34
        Height = 20
        Caption = 'Clave'
      end
      object Label3: TLabel
        Left = 36
        Top = 221
        Width = 52
        Height = 20
        Caption = 'Nombre'
      end
      object Label7: TLabel
        Left = 42
        Top = 157
        Width = 46
        Height = 20
        Caption = 'Colonia'
      end
      object eID: TDBEdit
        Left = 104
        Top = 26
        Width = 121
        Height = 28
        DataField = 'id'
        DataSource = DSFDQCalle
        Enabled = False
        TabOrder = 0
      end
      object cbPais: TcxDBLookupComboBox
        Left = 104
        Top = 60
        DataBinding.DataField = 'idpais'
        DataBinding.DataSource = DSFDQCalle
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
      object eNombre: TDBEdit
        Left = 104
        Top = 218
        Width = 200
        Height = 28
        DataField = 'Nombre'
        DataSource = DSFDQCalle
        TabOrder = 2
      end
      object eClave: TDBEdit
        Left = 104
        Top = 186
        Width = 200
        Height = 28
        DataField = 'clave'
        DataSource = DSFDQCalle
        TabOrder = 3
      end
      object cbMunicipio: TcxDBLookupComboBox
        Left = 104
        Top = 122
        DataBinding.DataField = 'idmunicipio'
        DataBinding.DataSource = DSFDQCalle
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = DSFDQMunicipio
        Properties.OnCloseUp = cbMunicipioPropertiesCloseUp
        TabOrder = 4
        Width = 200
      end
      object cbEstado: TcxDBLookupComboBox
        Left = 104
        Top = 90
        DataBinding.DataField = 'idestado'
        DataBinding.DataSource = DSFDQCalle
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
      object cbColonia: TcxDBLookupComboBox
        Left = 104
        Top = 154
        DataBinding.DataField = 'idcolonia'
        DataBinding.DataSource = DSFDQCalle
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = DSFDQColonia
        TabOrder = 6
        Width = 200
      end
    end
  end
  inherited FormAutoScaler1: TFormAutoScaler
    Left = 622
    DesignDPI = 96
    DesignHeight = 446
    DesignWidth = 644
    DesignTextHeight = 20
  end
  inherited XPManifest1: TXPManifest
    Left = 592
    Top = 81
  end
  object DSFDQPais: TDataSource
    DataSet = FDQPais
    Left = 467
    Top = 36
  end
  object DSFDQEstado: TDataSource
    DataSet = FDQEstado
    Left = 467
    Top = 92
  end
  object DSFDQMunicipio: TDataSource
    DataSet = FDQMunicipio
    Left = 467
    Top = 148
  end
  object DSFDQColonia: TDataSource
    DataSet = FDQColonia
    Left = 467
    Top = 196
  end
  object DSFDQCalle: TDataSource
    DataSet = FDQCalle
    Left = 467
    Top = 244
  end
  object FDQPais: TFDQuery
    Connection = DMRecargas.FDCConexion
    Left = 528
    Top = 40
  end
  object FDQEstado: TFDQuery
    Connection = DMRecargas.FDCConexion
    SQL.Strings = (
      
        'SELECT a."id", a."Clave", a."Nombre", a."IDPais", p."Nombre" as ' +
        '"Nombre_Pais" '
      'FROM "Estado" a '
      'inner join "Pais" p on (p."id" = a."IDPais") '
      'order by a."id"')
    Left = 528
    Top = 96
  end
  object FDQMunicipio: TFDQuery
    Connection = DMRecargas.FDCConexion
    SQL.Strings = (
      
        'SELECT a."id", a."Clave", a."Nombre", a."IDPais", p."Nombre" as ' +
        '"Nombre_Pais" '
      'FROM "Estado" a '
      'inner join "Pais" p on (p."id" = a."IDPais") '
      'order by a."id"')
    Left = 528
    Top = 152
  end
  object FDQColonia: TFDQuery
    Connection = DMRecargas.FDCConexion
    SQL.Strings = (
      
        'SELECT a."id", a."Clave", a."Nombre", a."IDPais", p."Nombre" as ' +
        '"Nombre_Pais" '
      'FROM "Estado" a '
      'inner join "Pais" p on (p."id" = a."IDPais") '
      'order by a."id"')
    Left = 528
    Top = 200
  end
  object FDQCalle: TFDQuery
    Connection = DMRecargas.FDCConexion
    SQL.Strings = (
      
        'SELECT a."id", a."Clave", a."Nombre", a."IDPais", p."Nombre" as ' +
        '"Nombre_Pais" '
      'FROM "Estado" a '
      'inner join "Pais" p on (p."id" = a."IDPais") '
      'order by a."id"')
    Left = 528
    Top = 248
  end
end
