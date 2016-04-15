unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView,
  dxRibbonCustomizationForm, cxContainer, cxEdit, dxRibbonGallery,
  dxSkinChooserGallery, dxSkinsForm, dxStatusBar, dxRibbonStatusBar, cxLabel,
  dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxSkinsCore,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, cxPC,
  dxSkinscxPCPainter, dxBarBuiltInMenu, dxBarApplicationMenu, dxTabbedMDI;

type
  TFPrincipal = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonBackstageView1: TdxRibbonBackstageView;
    dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbonBackstageViewGalleryControl1: TdxRibbonBackstageViewGalleryControl;
    cxLabel1: TcxLabel;
    dxRibbonBackstageViewGalleryControl1Group1: TdxRibbonBackstageViewGalleryGroup;
    dxSkinController1: TdxSkinController;
    dxRibbonBackstageViewGalleryControl1Group1Item1: TdxRibbonBackstageViewGalleryItem;
    cxLookAndFeelController1: TcxLookAndFeelController;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1Bar2: TdxBar;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarManager1Bar3: TdxBar;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxRibbonGalleryItem1Group2: TdxRibbonGalleryGroup;
    dxRibbonGalleryItem1Group2Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItem1Group2Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItem1Group2Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItem1Group2Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItem1Group2Item6: TdxRibbonGalleryGroupItem;
    dxSkinChooserGalleryItem2: TdxSkinChooserGalleryItem;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxBarManager1Bar4: TdxBar;
    dxRibbonGalleryItem2: TdxRibbonGalleryItem;
    procedure FormCreate(Sender: TObject);
    procedure dxSkinChooserGalleryItem2SkinChanged(Sender: TObject;
      const ASkinName: string);
    procedure dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
    procedure dxRibbonGalleryItem1Group2Item3Click(Sender: TObject);
    procedure dxRibbonGalleryItem1Group2Item4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxRibbonGalleryItem1Group2Item5Click(Sender: TObject);
    procedure dxRibbonGalleryItem1Group2Item6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UPais, Func_Globales, UEstado, UMunicipio, UDMRecargas, UCalle, UColonia;

{ TForm1 }

procedure TFPrincipal.dxRibbonGalleryItem1Group2Item2Click(Sender: TObject);
begin
  //Pais
  if not Assigned(FPais) then
    Application.CreateForm(TFPais, FPais);
  FPais.Show
end;

procedure TFPrincipal.dxRibbonGalleryItem1Group2Item3Click(Sender: TObject);
begin
  //Estado
  if not Assigned(FEstado) then
    Application.CreateForm(TFEstado, FEstado);
  FEstado.Show
end;

procedure TFPrincipal.dxRibbonGalleryItem1Group2Item4Click(Sender: TObject);
begin
  //Municipio
  if not Assigned(FMunicipio) then
    Application.CreateForm(TFMunicipio, FMunicipio);
  FMunicipio.Show
end;

procedure TFPrincipal.dxRibbonGalleryItem1Group2Item5Click(Sender: TObject);
begin
  //Colonia
  if not Assigned(FCalle) then
    Application.CreateForm(TFColonia, FColonia);
  FColonia.Show;
end;

procedure TFPrincipal.dxRibbonGalleryItem1Group2Item6Click(Sender: TObject);
begin
  //Calle
  if not Assigned(FCalle) then
    Application.CreateForm(TFCalle, FCalle);
  FCalle.Show
end;

procedure TFPrincipal.dxSkinChooserGalleryItem2SkinChanged(Sender: TObject;
  const ASkinName: string);
begin
  cxLookAndFeelController1.SkinName := ASkinName;
  dxBarManager1.LookAndFeel.SkinName := ASkinName;
  dxRibbon1.ColorSchemeName := ASkinName;
  dxTabbedMDIManager1.LookAndFeel.SkinName := ASkinName;
  GrabarEstado('General','Mascara',ASkinName,'Configuracion.ini');
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMRecargas.Desconectar;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
var
  sColor:string;
begin
  DisableAero := True;
  sColor := LeerEstado('General','Mascara','dxSkinBlueprint','Configuracion.ini');
  cxLookAndFeelController1.SkinName := sColor;
  dxBarManager1.LookAndFeel.SkinName := sColor;
  dxRibbon1.ColorSchemeName := sColor;
  dxTabbedMDIManager1.LookAndFeel.SkinName := sColor;
  DMRecargas.Conectar('Configuracion.ini');
end;

end.
