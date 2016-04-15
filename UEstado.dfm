inherited FEstado: TFEstado
  Caption = 'Estado'
  ClientHeight = 444
  ClientWidth = 649
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 665
  ExplicitHeight = 483
  PixelsPerInch = 96
  TextHeight = 20
  inherited Panel1: TPanel
    Height = 444
    ExplicitHeight = 444
    inherited imgCerrar: TImage
      ExplicitTop = 469
    end
    inherited imgCancelar: TImage
      ExplicitTop = 417
    end
    inherited imgAgregar: TImage
      ExplicitTop = 261
    end
    inherited imgEditar: TImage
      ExplicitTop = 313
    end
    inherited imgGuardar: TImage
      ExplicitTop = 365
    end
  end
  inherited PCPestanas: TcxPageControl
    Width = 584
    Height = 444
    Properties.ActivePage = cxTabSheet2
    ExplicitWidth = 584
    ExplicitHeight = 444
    ClientRectBottom = 442
    ClientRectRight = 582
    inherited cxTabSheet1: TcxTabSheet
      ExplicitWidth = 580
      ExplicitHeight = 407
      inherited cxGrid1: TcxGrid
        Width = 580
        Height = 407
        ExplicitWidth = 580
        ExplicitHeight = 407
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = DSFDQEstado
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 29
          end
          object cxGrid1DBTableView1Clave: TcxGridDBColumn
            DataBinding.FieldName = 'Clave'
          end
          object cxGrid1DBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object cxGrid1DBTableView1IDPais: TcxGridDBColumn
            DataBinding.FieldName = 'IDPais'
          end
          object cxGrid1DBTableView1Nombre_Pais: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre_Pais'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 580
      ExplicitHeight = 407
      object Label1: TLabel
        Left = 61
        Top = 32
        Width = 13
        Height = 20
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 40
        Top = 96
        Width = 34
        Height = 20
        Caption = 'Clave'
      end
      object Label3: TLabel
        Left = 22
        Top = 128
        Width = 52
        Height = 20
        Caption = 'Nombre'
      end
      object Label4: TLabel
        Left = 51
        Top = 64
        Width = 23
        Height = 20
        Caption = 'Pais'
      end
      object eNombre: TDBEdit
        Left = 80
        Top = 125
        Width = 200
        Height = 28
        DataField = 'Nombre'
        DataSource = DSFDQEstado
        TabOrder = 0
      end
      object eClave: TDBEdit
        Left = 80
        Top = 93
        Width = 200
        Height = 28
        DataField = 'Clave'
        DataSource = DSFDQEstado
        TabOrder = 1
      end
      object eID: TDBEdit
        Left = 81
        Top = 29
        Width = 121
        Height = 28
        DataField = 'id'
        DataSource = DSFDQEstado
        Enabled = False
        TabOrder = 2
      end
      object cbPais: TcxDBLookupComboBox
        Left = 81
        Top = 61
        DataBinding.DataField = 'IDPais'
        DataBinding.DataSource = DSFDQEstado
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = DSFDQPais
        TabOrder = 3
        Width = 200
      end
    end
  end
  inherited FormAutoScaler1: TFormAutoScaler
    Left = 574
    Top = 29
    DesignDPI = 96
    DesignHeight = 444
    DesignWidth = 649
    DesignTextHeight = 20
  end
  object DSFDQEstado: TDataSource
    DataSet = FDQEstado
    Left = 531
    Top = 84
  end
  object DSFDQPais: TDataSource
    DataSet = FDQPais
    Left = 571
    Top = 84
  end
  object FDQPais: TFDQuery
    Connection = DMRecargas.FDCConexion
    Left = 576
    Top = 136
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
    Top = 136
  end
end
