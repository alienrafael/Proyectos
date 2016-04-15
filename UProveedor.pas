unit UProveedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPlantillaVentana, dxSkinsCore,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.XPMan, FormAutoScaler,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, dxGDIPlusClasses,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFProveedor = class(TFPlantillaVentana)
    FDQProveedor: TFDQuery;
    DSFDQProveedor: TDataSource;
    cxGrid1DBTableView1IID: TcxGridDBColumn;
    cxGrid1DBTableView1SNOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1DPCOMISION_RECARGAS: TcxGridDBColumn;
    cxGrid1DBTableView1DPCOSTO_COBRO_SERVICIO: TcxGridDBColumn;
    ID: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eID: TDBEdit;
    eNombre: TDBEdit;
    eCRecargas: TDBEdit;
    eCostoServicio: TDBEdit;
    procedure imgAgregarClick(Sender: TObject);
    procedure imgEditarClick(Sender: TObject);
    procedure imgGuardarClick(Sender: TObject);
    procedure imgCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProveedor: TFProveedor;

implementation

{$R *.dfm}

uses Func_Globales, UConstantes, UDMRecargas, UGlobal;

procedure TFProveedor.imgAgregarClick(Sender: TObject);
begin
  inherited;
  FDQProveedor.Append;
end;

procedure TFProveedor.imgCancelarClick(Sender: TObject);
begin
  inherited;
  FDQProveedor.Cancel;
end;

procedure TFProveedor.imgEditarClick(Sender: TObject);
begin
  inherited;
  FDQProveedor.Edit;
end;

procedure TFProveedor.imgGuardarClick(Sender: TObject);
begin
  inherited;
  eID.Text := '1';
  FDQProveedor.Post;
end;

end.
