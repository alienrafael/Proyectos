unit UMunicipio;

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
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFMunicipio = class(TFPlantillaVentana)
    DSFDQPais: TDataSource;
    DSFDQEstado: TDataSource;
    DSFDQMunicipio: TDataSource;
    eNombre: TDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    eClave: TDBEdit;
    cbPais: TcxDBLookupComboBox;
    Label4: TLabel;
    Label1: TLabel;
    eID: TDBEdit;
    Label5: TLabel;
    cbEstado: TcxDBLookupComboBox;
    FDQPais: TFDQuery;
    FDQEstado: TFDQuery;
    FDQMunicipio: TFDQuery;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1cveMunicipio: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1id_Estado: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_Pais: TcxGridDBColumn;
    cxGrid1DBTableView1IDPais: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_Estado: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure imgAgregarClick(Sender: TObject);
    procedure imgEditarClick(Sender: TObject);
    procedure imgGuardarClick(Sender: TObject);
    procedure imgCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbPaisPropertiesCloseUp(Sender: TObject);
    procedure PCPestanasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMunicipio: TFMunicipio;

implementation

uses
  Func_Globales, Hashes, UConstantes, UGlobal, UDMRecargas;

{$R *.dfm}

procedure TFMunicipio.cbPaisPropertiesCloseUp(Sender: TObject);
begin
  if cbPais.EditValue <> null then
  begin
    if PCPestanas.ActivePageIndex = 1 then
    begin
      FDQEstado.Filtered := False;
      FDQEstado.Filter   := 'IDPais='+inttostr(cbPais.EditValue);
      FDQEstado.Filtered := True;
    end;
  end;
end;

procedure TFMunicipio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FDQPais.Close;
  FDQEstado.Close;
  FDQMunicipio.Close;
  FMunicipio := nil;
end;

procedure TFMunicipio.FormCreate(Sender: TObject);
begin
  inherited;
  //DMRecargas.Conectar('Configuracion.ini');
  InsertarRegistros(FDQPais,'SELECCIONAR',Select_Pais);
  InsertarRegistros(FDQEstado,'SELECCIONAR',Select_Estado);
  InsertarRegistros(FDQMunicipio,'SELECCIONAR',Select_Municipio);
end;

procedure TFMunicipio.imgAgregarClick(Sender: TObject);
begin
  inherited;
  FDQMunicipio.Append;
end;

procedure TFMunicipio.imgCancelarClick(Sender: TObject);
begin
  inherited;
  FDQMunicipio.Cancel;
end;

procedure TFMunicipio.imgEditarClick(Sender: TObject);
begin
  inherited;
  FDQMunicipio.Edit;
end;

procedure TFMunicipio.imgGuardarClick(Sender: TObject);
begin
  inherited;
  eID.Text := '1';
  FDQMunicipio.Post;
  FDQMunicipio.Refresh;
end;

procedure TFMunicipio.PCPestanasChange(Sender: TObject);
begin
  inherited;
  if PCPestanas.ActivePageIndex = 1 then
  begin
    cbPaisPropertiesCloseUp(cbPais); 
  end;
  
end;

end.
