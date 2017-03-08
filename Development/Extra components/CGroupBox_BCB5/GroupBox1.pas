unit GroupBox1;

interface

uses
  SysUtils, Classes, Controls, StdCtrls;

type
  TGroupBox1 = class(TGroupBox)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TGroupBox1]);
end;

end.
