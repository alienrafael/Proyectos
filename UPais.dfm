inherited FPais: TFPais
  Caption = 'Pais'
  ClientHeight = 524
  ClientWidth = 625
  FormStyle = fsMDIChild
  Visible = True
  ExplicitWidth = 641
  ExplicitHeight = 563
  PixelsPerInch = 96
  TextHeight = 20
  inherited Panel1: TPanel
    Height = 524
    ExplicitLeft = 0
    ExplicitHeight = 403
  end
  inherited PCPestanas: TcxPageControl
    Width = 560
    Height = 524
    ExplicitWidth = 560
    ExplicitHeight = 403
    ClientRectBottom = 522
    ClientRectRight = 558
    inherited cxTabSheet1: TcxTabSheet
      ExplicitWidth = 556
      ExplicitHeight = 366
      inherited cxGrid1: TcxGrid
        Width = 556
        Height = 487
        ExplicitLeft = 0
        ExplicitWidth = 556
        ExplicitHeight = 366
        inherited cxGrid1DBTableView1: TcxGridDBTableView
          DataController.DataSource = DSFDQPais
          FilterRow.ApplyChanges = fracImmediately
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Options.AutoWidthSizable = False
            Width = 39
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            DataBinding.FieldName = 'Clave'
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Options.AutoWidthSizable = False
            Width = 243
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 556
      ExplicitHeight = 487
      object Label1: TLabel
        Left = 61
        Top = 24
        Width = 13
        Height = 20
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 40
        Top = 53
        Width = 34
        Height = 20
        Caption = 'Clave'
      end
      object Label3: TLabel
        Left = 22
        Top = 85
        Width = 52
        Height = 20
        Caption = 'Nombre'
      end
      object eClave: TDBEdit
        Left = 80
        Top = 50
        Width = 121
        Height = 28
        DataField = 'Clave'
        DataSource = DSFDQPais
        TabOrder = 0
      end
      object eNombre: TDBEdit
        Left = 80
        Top = 82
        Width = 121
        Height = 28
        DataField = 'Nombre'
        DataSource = DSFDQPais
        TabOrder = 1
      end
      object eID: TDBEdit
        Left = 80
        Top = 18
        Width = 121
        Height = 28
        DataField = 'id'
        DataSource = DSFDQPais
        TabOrder = 2
      end
    end
  end
  inherited FormAutoScaler1: TFormAutoScaler
    DesignDPI = 96
    DesignHeight = 524
    DesignWidth = 625
    DesignTextHeight = 20
  end
  object DSFDQPais: TDataSource
    DataSet = FDQPais
    Left = 571
    Top = 84
  end
  object FDQPais: TFDQuery
    Connection = DMRecargas.FDCConexion
    Left = 531
    Top = 83
  end
end
