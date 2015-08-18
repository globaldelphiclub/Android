unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Effects, FMX.Filter.Effects,
  FMX.MultiView, FMX.Layouts, FMX.ListBox, FMX.ExtCtrls,
  FMX.ListView.Types, FMX.ListView, Data.Bind.Components, Data.Bind.ObjectScope,
  Data.Bind.GenData, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.GenData, FMX.TabControl,
  System.Actions, FMX.ActnList, FMX.Edit;

type
  TForm1 = class(TForm)
    Circle1: TCircle;
    ShadowEffect1: TShadowEffect;
    FillRGBEffect1: TFillRGBEffect;
    ToolBar1: TToolBar;
    sbNav: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    MultiView1: TMultiView;
    ListBox1: TListBox;
    liImage: TListBoxItem;
    Image1: TImage;
    liOrganize: TListBoxItem;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    liSep1: TListBoxItem;
    Line1: TLine;
    liItem2: TListBoxItem;
    Image2: TImage;
    Label3: TLabel;
    ListView1: TListView;
    PrototypeBindSource1: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    ToolBar2: TToolBar;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    SpeedButton4: TSpeedButton;
    PreviousTabAction1: TPreviousTabAction;
    procedure Circle1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Circle1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Circle1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  FillRGBEffect1.Enabled := True;
end;

procedure TForm1.Circle1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  FillRGBEffect1.Enabled := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MultiView1.Mode := TMultiViewMode.Drawer;
  MultiView1.Width := Width - 54;
  //
  TabControl1.TabIndex := TabItem1.Index;
  Circle1.Position.X := Width - (Circle1.Width + 20);
  Circle1.Position.Y := Height - (Circle1.Height + 20);
end;

end.
