unit UCalle;

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
  TFCalle = class(TFPlantillaVentana)
    DSFDQPais: TDataSource;
    DSFDQEstado: TDataSource;
    DSFDQMunicipio: TDataSource;
    DSFDQColonia: TDataSource;
    DSFDQCalle: TDataSource;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1clave: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1idpais: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_Pais: TcxGridDBColumn;
    cxGrid1DBTableView1idestado: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_Estado: TcxGridDBColumn;
    cxGrid1DBTableView1idmunicipio: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_Munucipio: TcxGridDBColumn;
    cxGrid1DBTableView1idcolonia: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_Colonia: TcxGridDBColumn;
    Label1: TLabel;
    eID: TDBEdit;
    cbPais: TcxDBLookupComboBox;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eNombre: TDBEdit;
    eClave: TDBEdit;
    cbMunicipio: TcxDBLookupComboBox;
    cbEstado: TcxDBLookupComboBox;
    cbColonia: TcxDBLookupComboBox;
    Label7: TLabel;
    FDQPais: TFDQuery;
    FDQEstado: TFDQuery;
    FDQMunicipio: TFDQuery;
    FDQColonia: TFDQuery;
    FDQCalle: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure imgAgregarClick(Sender: TObject);
    procedure imgEditarClick(Sender: TObject);
    procedure imgGuardarClick(Sender: TObject);
    procedure imgCancelarClick(Sender: TObject);
    procedure cbPaisPropertiesCloseUp(Sender: TObject);
    procedure cbEstadoPropertiesCloseUp(Sender: TObject);
    procedure cbMunicipioPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCalle: TFCalle;

implementation

{$R *.dfm}

uses Func_Globales, UConstantes, UDMRecargas, UGlobal;

procedure TFCalle.cbEstadoPropertiesCloseUp(Sender: TObject);
begin
  if cbEstado.EditValue <> null then
  begin
    if PCPestanas.ActivePageIndex = 1 then
    begin
      FDQMunicipio.Filtered := False;
      FDQMunicipio.Filter   := 'id_Estado='+inttostr(cbEstado.EditValue);
      FDQMunicipio.Filtered := True;
    end;
  end;
end;

procedure TFCalle.cbMunicipioPropertiesCloseUp(Sender: TObject);
begin
  if cbMunicipio.EditValue <> null then
  begin
    if PCPestanas.ActivePageIndex = 1 then
    begin
      FDQColonia.Filtered := False;
      FDQColonia.Filter   := 'id_Municipio='+inttostr(cbMunicipio.EditValue);
      FDQColonia.Filtered := True;
    end;
  end;
end;

procedure TFCalle.cbPaisPropertiesCloseUp(Sender: TObject);
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

procedure TFCalle.FormCreate(Sender: TObject);
begin
  inherited;
  InsertarRegistros(FDQPais,'SELECCIONAR',Select_Pais);
  InsertarRegistros(FDQEstado,'SELECCIONAR',Select_Estado);
  InsertarRegistros(FDQMunicipio,'SELECCIONAR',Select_Municipio);
  InsertarRegistros(FDQColonia,'SELECCIONAR',Select_Colonia);
  InsertarRegistros(FDQCalle,'SELECCIONAR',Select_Calle);
end;

procedure TFCalle.imgAgregarClick(Sender: TObject);
begin
  inherited;
  FDQCalle.Append;
end;

procedure TFCalle.imgCancelarClick(Sender: TObject);
begin
  inherited;
  FDQCalle.Cancel;
end;

procedure TFCalle.imgEditarClick(Sender: TObject);
begin
  inherited;
  FDQCalle.Edit;
end;

procedure TFCalle.imgGuardarClick(Sender: TObject);
begin
  inherited;
  eID.Text := '1';
  FDQCalle.Post;
  FDQCalle.Refresh;
end;

end.
