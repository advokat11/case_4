SQL:
"""
CREATE TABLE Orders (
    ID INT PRIMARY KEY IDENTITY,
    CustomerName NVARCHAR(100),
    OrderDate DATETIME,
    Amount DECIMAL(10, 2)
);
"""
DELPHI:
"""
uses
  System.SysUtils, System.Classes, Web.HTTPApp, Data.DB, FireDAC.Comp.Client;

type
  TWebModule1 = class(TWebModule)
    FDConnection1: TFDConnection;
    procedure WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModule1: TWebModule1;

implementation

{$R *.dfm}

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  OrdersData: TStringList;
begin
  FDConnection1.Open;
  OrdersData := TStringList.Create;
  try
    OrdersData.Add('Customer Name: John Doe');
    OrdersData.Add('Order Amount: 100.50');
    Response.Content := OrdersData.Text;
  finally
    OrdersData.Free;
  end;
end;

end.
"""
