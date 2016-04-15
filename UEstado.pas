unit UEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPlantillaVentana, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.XPMan,
  FormAutoScaler, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxDBLookupComboBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFEstado = class(TFPlantillaVentana)
    DSFDQEstado: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eNombre: TDBEdit;
    eClave: TDBEdit;
    eID: TDBEdit;
    Label4: TLabel;
    cbPais: TcxDBLookupComboBox;
    DSFDQPais: TDataSource;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1Clave: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1IDPais: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_Pais: TcxGridDBColumn;
    FDQPais: TFDQuery;
    FDQEstado: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  FEstado: TFEstado;

implementation

{$R *.dfm}

uses Func_Globales, UConstantes, UGlobal, UDMRecargas;

procedure TFEstado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FDQPais.Close;
  FDQEstado.Close;
  FEstado := nil;
end;

procedure TFEstado.FormCreate(Sender: TObject);
begin
  inherited;
  InsertarRegistros(FDQPais,'SELECCIONAR',Select_Pais);
  InsertarRegistros(FDQEstado,'SELECCIONAR',Select_Estado);
end;

procedure TFEstado.imgAgregarClick(Sender: TObject);
begin
  inherited;
  FDQEstado.Append;
end;

procedure TFEstado.imgCancelarClick(Sender: TObject);
begin
  inherited;
  FDQEstado.Cancel;
end;

procedure TFEstado.imgEditarClick(Sender: TObject);
begin
  inherited;
  FDQEstado.Edit;
end;

procedure TFEstado.imgGuardarClick(Sender: TObject);
begin
  inherited;
  eID.Text := '1';
  FDQEstado.Post;
  FDQEstado.Refresh;
end;

end.
