program Recargas;

uses
  Vcl.Forms,
  Func_Globales in '..\..\Comunes\Func_Globales.pas',
  Hashes in '..\..\Comunes\Hashes.pas',
  UConstantes in '..\..\Comunes\UConstantes.pas',
  UGlobal in '..\..\Comunes\UGlobal.pas',
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UPlantillaVentana in '..\..\Comunes\UPlantillaVentana.pas' {FPlantillaVentana},
  UDM_Plantilla in '..\..\Comunes\UDM_Plantilla.pas' {FUDM_Plantilla: TDataModule},
  UPais in 'UPais.pas' {FPais},
  UDMRecargas in 'UDMRecargas.pas' {DMRecargas: TDataModule},
  UEstado in 'UEstado.pas' {FEstado},
  UMunicipio in 'UMunicipio.pas' {FMunicipio},
  UMensajeXE5 in '..\..\Comunes\UMensajeXE5.pas' {FMensajeXE5},
  UBitacora in '..\..\Comunes\UBitacora.pas' {FBitacora},
  UCargarIni in '..\..\Comunes\UCargarIni.pas' {FCargarIni},
  UCargarLog in '..\..\Comunes\UCargarLog.pas' {FCargarLog},
  UCalle in 'UCalle.pas' {FCalle},
  UColonia in 'UColonia.pas' {FColonia},
  UProveedor in 'UProveedor.pas' {FProveedor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMRecargas, DMRecargas);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFProveedor, FProveedor);
  Application.Run;
end.
