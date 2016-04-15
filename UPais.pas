unit UPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPlantillaVentana, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxControls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Vcl.XPMan, FormAutoScaler, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxContainer, dxGDIPlusClasses, cxImage,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFPais = class(TFPlantillaVentana)
    DSFDQPais: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    eClave: TDBEdit;
    eNombre: TDBEdit;
    eID: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FDQPais: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure imgAgregarClick(Sender: TObject);
    procedure imgCancelarClick(Sender: TObject);
    procedure imgGuardarClick(Sender: TObject);
    procedure imgEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPais: TFPais;

implementation

{$R *.dfm}

uses UDMRecargas, Func_Globales, UConstantes, UGlobal;

procedure TFPais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FPais := nil;
  FDQPais.Close;
end;

procedure TFPais.FormCreate(Sender: TObject);
begin
  inherited;
  InsertarRegistros(FDQPais,'SELECCIONAR',Select_Pais)
end;

procedure TFPais.imgAgregarClick(Sender: TObject);
begin
  inherited;
  FDQPais.Append;
end;

procedure TFPais.imgCancelarClick(Sender: TObject);
begin
  inherited;
  FDQPais.Cancel;
end;

procedure TFPais.imgEditarClick(Sender: TObject);
begin
  inherited;
  FDQPais.Edit;
end;

procedure TFPais.imgGuardarClick(Sender: TObject);
begin
  inherited;
  FDQPais.Post;
end;

end.
