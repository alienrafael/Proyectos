object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Recargas'
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 640
    Height = 189
    Cursor = crHandPoint
    ApplicationButton.Menu = dxRibbonBackstageView1
    BarManager = dxBarManager1
    Style = rs2013
    ColorSchemeName = 'White'
    Fonts.ApplicationButton.Charset = DEFAULT_CHARSET
    Fonts.ApplicationButton.Color = clWindowText
    Fonts.ApplicationButton.Height = -15
    Fonts.ApplicationButton.Name = 'Segoe UI Light'
    Fonts.ApplicationButton.Style = []
    Fonts.AssignedFonts = [afTabHeader, afGroup, afGroupHeader, afApplicationButton]
    Fonts.Group.Charset = DEFAULT_CHARSET
    Fonts.Group.Color = 5978398
    Fonts.Group.Height = -15
    Fonts.Group.Name = 'Segoe UI Light'
    Fonts.Group.Style = []
    Fonts.GroupHeader.Charset = DEFAULT_CHARSET
    Fonts.GroupHeader.Color = 6710886
    Fonts.GroupHeader.Height = -15
    Fonts.GroupHeader.Name = 'Segoe UI Light'
    Fonts.GroupHeader.Style = []
    Fonts.TabHeader.Charset = DEFAULT_CHARSET
    Fonts.TabHeader.Color = clWindowText
    Fonts.TabHeader.Height = -15
    Fonts.TabHeader.Name = 'Segoe UI Light'
    Fonts.TabHeader.Style = []
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Catalogos'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar3'
        end
        item
        end
        item
          ToolbarName = 'dxBarManager1Bar4'
        end>
      Index = 0
    end
    object dxRibbon1Tab2: TdxRibbonTab
      Caption = 'Configuraci'#243'n'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 1
    end
  end
  object dxRibbonBackstageView1: TdxRibbonBackstageView
    Left = 40
    Top = 222
    Width = 577
    Height = 266
    Buttons = <>
    Ribbon = dxRibbon1
    object dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet
      Left = 132
      Top = 0
      Active = True
      Caption = 'Acceso Rapido'
      DesignSize = (
        445
        266)
      object dxRibbonBackstageViewGalleryControl1: TdxRibbonBackstageViewGalleryControl
        Left = 12
        Top = 44
        Width = 300
        Height = 208
        Anchors = [akLeft, akTop, akBottom]
        BorderStyle = cxcbsNone
        OptionsView.ColumnAutoWidth = True
        OptionsView.ColumnCount = 1
        OptionsView.ContentOffset.All = 0
        OptionsView.Item.Text.AlignHorz = taLeftJustify
        OptionsView.Item.Text.AlignVert = vaCenter
        OptionsView.Item.Text.Position = posRight
        OptionsView.Item.PinMode = bgipmTag
        Ribbon = dxRibbon1
        object dxRibbonBackstageViewGalleryControl1Group1: TdxRibbonBackstageViewGalleryGroup
          ShowCaption = False
          object dxRibbonBackstageViewGalleryControl1Group1Item1: TdxRibbonBackstageViewGalleryItem
            Caption = 'New Item'
            Description = 'New Item Description'
          end
        end
      end
      object cxLabel1: TcxLabel
        Left = 12
        Top = 12
        AutoSize = False
        Caption = 'Acceso Rapido'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        Properties.LineOptions.Alignment = cxllaBottom
        Properties.LineOptions.Visible = True
        Transparent = True
        Height = 26
        Width = 300
      end
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 457
    Width = 640
    Height = 23
    Panels = <>
    Ribbon = dxRibbon1
    LookAndFeel.NativeStyle = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.SkinName = ''
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 568
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Piel'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxSkinChooserGalleryItem2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Catalogos'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRibbonGalleryItem1'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      Caption = 'Proveedores'
      CaptionButtons = <>
      DockedLeft = 165
      DockedTop = 0
      FloatLeft = 674
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRibbonGalleryItem2'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem
      Caption = 'New Skin Chooser'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxRibbonGalleryItem1: TdxRibbonGalleryItem
      Caption = 'New Gallery'
      Category = 0
      Visible = ivAlways
      GalleryOptions.ColumnCount = 2
      GalleryFilter.Categories = <>
      GalleryInRibbonOptions.MinColumnCount = 1
      ItemLinks = <>
      object dxRibbonGalleryItem1Group2: TdxRibbonGalleryGroup
        Header.Caption = 'Informacion'
        Header.Visible = True
        Options.AssignedValues = [avItemImagePosition]
        Options.ItemImagePosition = gipLeft
        object dxRibbonGalleryItem1Group2Item2: TdxRibbonGalleryGroupItem
          Caption = 'Pais'
          OnClick = dxRibbonGalleryItem1Group2Item2Click
        end
        object dxRibbonGalleryItem1Group2Item3: TdxRibbonGalleryGroupItem
          Caption = 'Estado'
          OnClick = dxRibbonGalleryItem1Group2Item3Click
        end
        object dxRibbonGalleryItem1Group2Item4: TdxRibbonGalleryGroupItem
          Caption = 'Municipio'
          OnClick = dxRibbonGalleryItem1Group2Item4Click
        end
        object dxRibbonGalleryItem1Group2Item5: TdxRibbonGalleryGroupItem
          Caption = 'Colonia'
          OnClick = dxRibbonGalleryItem1Group2Item5Click
        end
        object dxRibbonGalleryItem1Group2Item6: TdxRibbonGalleryGroupItem
          Caption = 'Calle'
          OnClick = dxRibbonGalleryItem1Group2Item6Click
        end
      end
    end
    object dxSkinChooserGalleryItem2: TdxSkinChooserGalleryItem
      Caption = 'New Skin Chooser'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
      OnSkinChanged = dxSkinChooserGalleryItem2SkinChanged
    end
    object dxRibbonGalleryItem2: TdxRibbonGalleryItem
      Caption = 'Nueva Galer'#237'a'
      Category = 0
      Visible = ivAlways
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2013White'
    Left = 536
    Top = 8
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    NativeStyle = False
    SkinName = 'Office2013White'
    Left = 464
    Top = 16
  end
  object dxTabbedMDIManager1: TdxTabbedMDIManager
    Active = True
    LookAndFeel.SkinName = ''
    TabProperties.AllowTabDragDrop = True
    TabProperties.CustomButtons.Buttons = <>
    TabProperties.CustomButtons.Mode = cbmActiveTab
    Left = 592
    Top = 296
  end
  object dxBarApplicationMenu1: TdxBarApplicationMenu
    BarManager = dxBarManager1
    Buttons = <>
    ExtraPane.Items = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ItemLinks = <>
    UseOwnFont = True
    Left = 592
    Top = 184
  end
end
