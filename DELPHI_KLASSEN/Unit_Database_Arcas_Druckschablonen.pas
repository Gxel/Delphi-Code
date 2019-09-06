unit Unit_Database_Arcas_Druckschablonen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Printers, Grids, DBTables, ComCtrls, dxTL,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Unit_DataModule,
  StdCtrls, dxDBGrid, DB, ExtCtrls, Contnrs, UnitDebugWindow ;


type
  TARCAS_Druckschablonen_Dataset = class(TObject)
  private
  public
    PK_DRUCKSCHABLONE : integer;
    FK_SCHRIFTVERKEHR : integer;
    FK_RECHNUNG : integer;
    DRUCKSCHABLONENUMMER : integer;
    SORT_DRUCKSCHABLONE : integer;
    DEFAULT_DRUCKSCHABLONE : integer;
    DRUCKSCHABLONE_KATEGORIE : string;
    DRUCKSCHABLONE_NAME : string;
    DRUCKSCHABLONE_LINK : string;
    DRUCKSCHABLONE : string;
    DRUCKSCHABLONE_BESCHREIBUNG : string;
    BENUTZERFELD01 : string;
    BENUTZERFELD02 : string;
    BENUTZERFELD03 : string;
    BENUTZERFELD04 : string;
    BENUTZERFELD05 : string;
    BENUTZERFELD06 : string;
    BENUTZERFELD07 : string;
    BENUTZERFELD08 : string;
    BENUTZERFELD09 : string;
    BENUTZERFELD10 : string;
    INSERTTIME : TDateTime;
    UPDATETIME : TDateTime;
    DELETETIME : TDateTime;
    INSERTUSER : string;
    UPDATEUSER : string;
    DELETEUSER : string;
    DATASETSTATUS : integer;
  end;



type
  TTable_ARCAS_Druckschablonen = class(TObject)
  private
    F_BoolSaved : Boolean;
  public
    datas :  TObjectList;
    dataset : TARCAS_Druckschablonen_Dataset;
    FQuery : TZQuery;
    FDataSource : TDataSource;
    destructor Destroy; override;
    constructor Create;
    property Saved : Boolean read F_BoolSaved write F_BoolSaved;
    procedure ClearFields;
    function SaveObjectDatasetInObjectData: boolean;
  end;




implementation

{ TTable_ARCAS_Druckschablonen }

function TTable_ARCAS_Druckschablonen.SaveObjectDatasetInObjectData():boolean;
begin
  datas.Add( TARCAS_Druckschablonen_Dataset.Create );
  TARCAS_Druckschablonen_Dataset( datas.Last ).PK_DRUCKSCHABLONE := dataset.PK_DRUCKSCHABLONE;
  TARCAS_Druckschablonen_Dataset( datas.Last ).FK_SCHRIFTVERKEHR := dataset.FK_SCHRIFTVERKEHR;
  TARCAS_Druckschablonen_Dataset( datas.Last ).FK_RECHNUNG := dataset.FK_SCHRIFTVERKEHR;
  TARCAS_Druckschablonen_Dataset( datas.Last ).DRUCKSCHABLONENUMMER := dataset.DRUCKSCHABLONENUMMER;
  TARCAS_Druckschablonen_Dataset( datas.Last ).SORT_DRUCKSCHABLONE := dataset.SORT_DRUCKSCHABLONE;
  TARCAS_Druckschablonen_Dataset( datas.Last ).DEFAULT_DRUCKSCHABLONE := dataset.DEFAULT_DRUCKSCHABLONE;
  TARCAS_Druckschablonen_Dataset( datas.Last ).DRUCKSCHABLONE_KATEGORIE := dataset.DRUCKSCHABLONE_KATEGORIE;
  TARCAS_Druckschablonen_Dataset( datas.Last ).DRUCKSCHABLONE_NAME := dataset.DRUCKSCHABLONE_NAME;
  TARCAS_Druckschablonen_Dataset( datas.Last ).DRUCKSCHABLONE_LINK := dataset.DRUCKSCHABLONE_LINK;
  TARCAS_Druckschablonen_Dataset( datas.Last ).DRUCKSCHABLONE := dataset.DRUCKSCHABLONE;
  TARCAS_Druckschablonen_Dataset( datas.Last ).DRUCKSCHABLONE_BESCHREIBUNG := dataset.DRUCKSCHABLONE_BESCHREIBUNG;
  TARCAS_Druckschablonen_Dataset( datas.Last ).BENUTZERFELD01 := dataset.BENUTZERFELD01;
  TARCAS_Druckschablonen_Dataset( datas.Last ).BENUTZERFELD02 := dataset.BENUTZERFELD02;
  TARCAS_Druckschablonen_Dataset( datas.Last ).BENUTZERFELD03 := dataset.BENUTZERFELD03;
  TARCAS_Druckschablonen_Dataset( datas.Last ).BENUTZERFELD04 := dataset.BENUTZERFELD04;
  TARCAS_Druckschablonen_Dataset( datas.Last ).BENUTZERFELD05 := dataset.BENUTZERFELD05;
  TARCAS_Druckschablonen_Dataset( datas.Last ).BENUTZERFELD06 := dataset.BENUTZERFELD06;
  TARCAS_Druckschablonen_Dataset( datas.Last ).BENUTZERFELD07 := dataset.BENUTZERFELD07;
  TARCAS_Druckschablonen_Dataset( datas.Last ).BENUTZERFELD08 := dataset.BENUTZERFELD08;
  TARCAS_Druckschablonen_Dataset( datas.Last ).BENUTZERFELD09 := dataset.BENUTZERFELD09;
  TARCAS_Druckschablonen_Dataset( datas.Last ).BENUTZERFELD10 := dataset.BENUTZERFELD10;
  TARCAS_Druckschablonen_Dataset( datas.Last ).INSERTTIME := dataset.INSERTTIME;
  TARCAS_Druckschablonen_Dataset( datas.Last ).UPDATETIME := dataset.UPDATETIME;
  TARCAS_Druckschablonen_Dataset( datas.Last ).DELETETIME := dataset.DELETETIME;
  TARCAS_Druckschablonen_Dataset( datas.Last ).INSERTUSER := dataset.INSERTUSER;
  TARCAS_Druckschablonen_Dataset( datas.Last ).UPDATEUSER := dataset.UPDATEUSER;
  TARCAS_Druckschablonen_Dataset( datas.Last ).DELETEUSER := dataset.DELETEUSER;
  TARCAS_Druckschablonen_Dataset( datas.Last ).DATASETSTATUS := dataset.DATASETSTATUS;
end;


procedure TTable_ARCAS_Druckschablonen.ClearFields;
begin
  datas.Clear;
  dataset.PK_DRUCKSCHABLONE := -1;
  dataset.FK_SCHRIFTVERKEHR := -1;
  dataset.FK_RECHNUNG := -1;
  dataset.DRUCKSCHABLONENUMMER := -1;
  dataset.SORT_DRUCKSCHABLONE := -1;
  dataset.DEFAULT_DRUCKSCHABLONE := -1;
  dataset.DRUCKSCHABLONE_KATEGORIE := '';
  dataset.DRUCKSCHABLONE_NAME := '';
  dataset.DRUCKSCHABLONE_LINK := '';
  dataset.DRUCKSCHABLONE := '';
  dataset.DRUCKSCHABLONE_BESCHREIBUNG := '';
  dataset.BENUTZERFELD01 := '';
  dataset.BENUTZERFELD02 := '';
  dataset.BENUTZERFELD03 := '';
  dataset.BENUTZERFELD04 := '';
  dataset.BENUTZERFELD05 := '';
  dataset.BENUTZERFELD06 := '';
  dataset.BENUTZERFELD07 := '';
  dataset.BENUTZERFELD08 := '';
  dataset.BENUTZERFELD09 := '';
  dataset.BENUTZERFELD10 := '';
  dataset.INSERTTIME := dGlobalEmptyDate;
  dataset.UPDATETIME := dGlobalEmptyDate;
  dataset.DELETETIME := dGlobalEmptyDate;
  dataset.INSERTUSER := '';
  dataset.UPDATEUSER := '';
  dataset.DELETEUSER := '';
  dataset.DATASETSTATUS := -1
end;



constructor TTable_ARCAS_Druckschablonen.Create;
begin
 FDataSource := TDataSource.Create(nil);
 FQuery := TZQuery.Create(Nil);
 dataset := TARCAS_Druckschablonen_Dataset.Create;
 //----
 FQuery.Connection := DM.ZConnection1;
 FQuery.SQL.Text := 'SELECT * FROM ARCAS_Druckschablonen LIMIT 1 ' ;
 FDataSource.DataSet := FQuery;
end;



destructor TTable_ARCAS_Druckschablonen.Destroy;
begin
  Fquery.Free;
  dataset.Free;
  FDataSource.Free;
  inherited;
end;



end.
 