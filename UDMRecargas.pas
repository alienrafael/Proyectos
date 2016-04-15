unit UDMRecargas;

interface

uses
  System.SysUtils, System.Classes, UDM_Plantilla, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, Vcl.ImgList, Vcl.Controls, FireDAC.Comp.Client,
  FireDAC.Comp.Script, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase;

type
  TDMRecargas = class(TFUDM_Plantilla)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRecargas: TDMRecargas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
