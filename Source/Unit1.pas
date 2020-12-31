unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, DBCtrls;

type
  TForm1 = class(TForm)
    casa5: TPanel;
    cor5: TComboBox;
    nacional5: TComboBox;
    bebida5: TComboBox;
    cigarro5: TComboBox;
    animal5: TComboBox;
    casa4: TPanel;
    cor4: TComboBox;
    nacional4: TComboBox;
    bebida4: TComboBox;
    cigarro4: TComboBox;
    animal4: TComboBox;
    casa3: TPanel;
    cor3: TComboBox;
    nacional3: TComboBox;
    bebida3: TComboBox;
    cigarro3: TComboBox;
    animal3: TComboBox;
    casa2: TPanel;
    cor2: TComboBox;
    nacional2: TComboBox;
    bebida2: TComboBox;
    cigarro2: TComboBox;
    animal2: TComboBox;
    casa1: TPanel;
    cor1: TComboBox;
    nacional1: TComboBox;
    bebida1: TComboBox;
    cigarro1: TComboBox;
    animal1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    d1: TDBCheckBox;
    d2: TDBCheckBox;
    d3: TDBCheckBox;
    d4: TDBCheckBox;
    d5: TDBCheckBox;
    d6: TDBCheckBox;
    d7: TDBCheckBox;
    d8: TDBCheckBox;
    d9: TDBCheckBox;
    d10: TDBCheckBox;
    d11: TDBCheckBox;
    d12: TDBCheckBox;
    d13: TDBCheckBox;
    d14: TDBCheckBox;
    d15: TDBCheckBox;
    procedure cor1Change(Sender: TObject);
    procedure cor2Change(Sender: TObject);
    procedure cor3Change(Sender: TObject);
    procedure cor4Change(Sender: TObject);
    procedure cor5Change(Sender: TObject);
    procedure nacional1Change(Sender: TObject);
    procedure nacional2Change(Sender: TObject);
    procedure nacional3Change(Sender: TObject);
    procedure nacional4Change(Sender: TObject);
    procedure nacional5Change(Sender: TObject);
    procedure bebida1Change(Sender: TObject);
    procedure bebida2Change(Sender: TObject);
    procedure bebida3Change(Sender: TObject);
    procedure bebida4Change(Sender: TObject);
    procedure bebida5Change(Sender: TObject);
    procedure cigarro1Change(Sender: TObject);
    procedure cigarro2Change(Sender: TObject);
    procedure cigarro3Change(Sender: TObject);
    procedure cigarro4Change(Sender: TObject);
    procedure cigarro5Change(Sender: TObject);
    procedure animal1Change(Sender: TObject);
    procedure animal2Change(Sender: TObject);
    procedure animal3Change(Sender: TObject);
    procedure animal4Change(Sender: TObject);
    procedure animal5Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  cE,cD,c10,c11,c15,c14: TPanel;
  procedure cores(cor: string; casa: TPanel);
  procedure verCor(casa: TPanel);
  procedure nacional(combo: TComboBox);
  procedure bebida (combo: TComboBox);
  procedure cigarro (combo: TComboBox);
  procedure animal (combo: TComboBox);
  procedure CheckCorNacional (cnacional: TComboBox; ccasa: TPanel);
  procedure CheckCorBebida (cbebida: TComboBox; ccasa: TPanel);
  procedure CheckCorCigarro (ccigarro: TComboBox; ccasa: TPanel);
  procedure CheckNacionalCigarro (cnacional, ccigarro: TComboBox);
  procedure CheckCigarroBebida (ccigarro, cbebida: TComboBox);
  procedure CheckCigarroAnimal (ccigarro, canimal: TComboBox);
  procedure CheckNacionalBebida (cnacional, cbebida: TComboBox);
  procedure CheckNacionalAnimal (cnacional, canimal: TComboBox);
  procedure CasaCentro (cbebida: TComboBox; ccasa: TPanel);
  procedure PrimeiraCasa (cnacional: TComboBox; ccasa: TPanel);
  procedure Dica4 (ccasa: TPanel);
  procedure Dica1011 (ccigarro, canimal, cbebida: TComboBox; ccasa: TPanel);
  procedure Dica14 (ccasa: TPanel; cnacional: TComboBox);
  procedure Ganhou;
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.cores(cor: string; casa: TPanel);
begin
  if cor='Amarela' then
    casa.Color:= clYellow
  else
  if cor='Azul' then
    casa.Color:= clBlue
  else
  if cor='Branca' then
    casa.Color:= clWhite
  else
  if cor='Verde' then
    casa.Color:= clGreen
  else
  if cor='Vermelha' then
    casa.Color:= clRed
  else
    casa.Color:= clSilver;
end;

procedure TForm1.nacional(combo: TComboBox);
begin
  if (combo<>nacional1) and (nacional1.Text=combo.Text) then
    nacional1.Text:= ''
  else
  if (combo<>nacional2) and (nacional2.Text=combo.Text) then
    nacional2.Text:= ''
  else
  if (combo<>nacional3) and (nacional3.Text=combo.Text) then
    nacional3.Text:= ''
  else
  if (combo<>nacional4) and (nacional4.Text=combo.Text) then
    nacional4.Text:= ''
  else
  if (combo<>nacional5) and (nacional5.Text=combo.Text) then
    nacional5.Text:= '';
end;

procedure TForm1.verCor(casa: TPanel);
begin
  if (casa<>casa1) and (casa1.Color=casa.Color) then
  begin
    casa1.Color:= clSilver;
    cor1.Text:='';
  end
  else
  if (casa<>casa2) and (casa2.Color=casa.Color) then
  begin
    casa2.Color:= clSilver;
    cor2.Text:='';
  end
  else
  if (casa<>casa3) and (casa3.Color=casa.Color) then
  begin
    casa3.Color:= clSilver;
    cor3.Text:='';
  end
  else
  if (casa<>casa4) and (casa4.Color=casa.Color) then
  begin
    casa4.Color:= clSilver;
    cor4.Text:='';
  end
  else
  if (casa<>casa5) and (casa5.Color=casa.Color) then
  begin
    casa5.Color:= clSilver;
    cor5.Text:='';
  end;
end;

procedure TForm1.bebida(combo: TComboBox);
begin
  if (combo<>bebida1) and (bebida1.Text=combo.Text) then
    bebida1.Text:= ''
  else
  if (combo<>bebida2) and (bebida2.Text=combo.Text) then
    bebida2.Text:= ''
  else
  if (combo<>bebida3) and (bebida3.Text=combo.Text) then
    bebida3.Text:= ''
  else
  if (combo<>bebida4) and (bebida4.Text=combo.Text) then
    bebida4.Text:= ''
  else
  if (combo<>bebida5) and (bebida5.Text=combo.Text) then
    bebida5.Text:= '';
end;

procedure TForm1.cigarro(combo: TComboBox);
begin
  if (combo<>cigarro1) and (cigarro1.Text=combo.Text) then
    cigarro1.Text:= ''
  else
  if (combo<>cigarro2) and (cigarro2.Text=combo.Text) then
    cigarro2.Text:= ''
  else
  if (combo<>cigarro3) and (cigarro3.Text=combo.Text) then
    cigarro3.Text:= ''
  else
  if (combo<>cigarro4) and (cigarro4.Text=combo.Text) then
    cigarro4.Text:= ''
  else
  if (combo<>cigarro5) and (cigarro5.Text=combo.Text) then
    cigarro5.Text:= '';
end;

procedure TForm1.animal(combo: TComboBox);
begin
  if (combo<>animal1) and (animal1.Text=combo.Text) then
    animal1.Text:= ''
  else
  if (combo<>animal2) and (animal2.Text=combo.Text) then
    animal2.Text:= ''
  else
  if (combo<>animal3) and (animal3.Text=combo.Text) then
    animal3.Text:= ''
  else
  if (combo<>animal4) and (animal4.Text=combo.Text) then
    animal4.Text:= ''
  else
  if (combo<>animal5) and (animal5.Text=combo.Text) then
    animal5.Text:= '';
end;

procedure TForm1.cor1Change(Sender: TObject);
begin
  cores(cor1.Text, casa1);
  verCor(casa1);
  CheckCorNacional(nacional1,casa1);
  CheckCorBebida(bebida1, casa1);
  CheckCorCigarro(cigarro1, casa1);
  Dica4(casa1);
  Dica14(casa1,nacional1);
  Ganhou;
end;

procedure TForm1.cor2Change(Sender: TObject);
begin
  cores(cor2.Text, casa2);
  verCor(casa2);
  CheckCorNacional(nacional2,casa2);
  CheckCorBebida(bebida2, casa2);
  CheckCorCigarro(cigarro2, casa2);
  Dica4(casa2);
  Dica14(casa2,nacional2);
  Ganhou;
end;

procedure TForm1.cor3Change(Sender: TObject);
begin
  cores(cor3.Text, casa3);
  verCor(casa3);
  CheckCorNacional(nacional3,casa3);
  CheckCorBebida(bebida3, casa3);
  CheckCorCigarro(cigarro3, casa3);
  Dica4(casa3);
  Dica14(casa3,nacional3);
  Ganhou;
end;

procedure TForm1.cor4Change(Sender: TObject);
begin
  cores(cor4.Text, casa4);
  verCor(casa4);
  CheckCorNacional(nacional4,casa4);
  CheckCorBebida(bebida4, casa4);
  CheckCorCigarro(cigarro4, casa4);
  Dica4(casa4);
  Dica14(casa4,nacional4);
  Ganhou;
end;

procedure TForm1.cor5Change(Sender: TObject);
begin
  cores(cor5.Text, casa5);
  verCor(casa5);
  CheckCorNacional(nacional5,casa5);
  CheckCorBebida(bebida5, casa5);
  CheckCorCigarro(cigarro5, casa5);
  Dica4(casa5);
  Dica14(casa5,nacional5);
  Ganhou;
end;

procedure TForm1.nacional1Change(Sender: TObject);
begin
  nacional(nacional1);
  CheckCorNacional(nacional1,casa1);
  CheckNacionalCigarro(nacional1, cigarro1);
  CheckNacionalBebida(nacional1, bebida1);
  CheckNacionalAnimal(nacional1,animal1);
  PrimeiraCasa(nacional1,casa1);
  Dica14(casa1,nacional1);
  Ganhou;
end;

procedure TForm1.nacional2Change(Sender: TObject);
begin
  nacional(nacional2);
  CheckCorNacional(nacional2,casa2);
  CheckNacionalCigarro(nacional2, cigarro2);
  CheckNacionalBebida(nacional2, bebida2);
  CheckNacionalAnimal(nacional2,animal2);
  PrimeiraCasa(nacional2,casa2);
  Dica14(casa2,nacional2);
  Ganhou;
end;

procedure TForm1.nacional3Change(Sender: TObject);
begin
  nacional(nacional3);
  CheckCorNacional(nacional3,casa3);
  CheckNacionalCigarro(nacional3, cigarro3);
  CheckNacionalBebida(nacional3, bebida3);
  CheckNacionalAnimal(nacional3,animal3);
  PrimeiraCasa(nacional3,casa3);
  Dica14(casa3,nacional3);
  Ganhou;
end;

procedure TForm1.nacional4Change(Sender: TObject);
begin
  nacional(nacional4);
  CheckCorNacional(nacional4,casa4);
  CheckNacionalCigarro(nacional4, cigarro4);
  CheckNacionalBebida(nacional4, bebida4);
  CheckNacionalAnimal(nacional4,animal4);
  PrimeiraCasa(nacional4,casa4);
  Dica14(casa4,nacional4);
  Ganhou;
end;

procedure TForm1.nacional5Change(Sender: TObject);
begin
  nacional(nacional5);
  CheckCorNacional(nacional5,casa5);
  CheckNacionalCigarro(nacional5, cigarro5);
  CheckNacionalBebida(nacional5, bebida5);
  CheckNacionalAnimal(nacional5,animal5);
  PrimeiraCasa(nacional5,casa5);
  Dica14(casa5,nacional5);
  Ganhou;
end;

procedure TForm1.bebida1Change(Sender: TObject);
begin
  bebida(bebida1);
  CheckCorBebida(bebida1, casa1);
  CheckCigarroBebida(cigarro1, bebida1);
  CheckNacionalBebida(nacional1, bebida1);
  CasaCentro(bebida1, casa1);
  Dica1011(cigarro1, animal1, bebida1, casa1);
  Ganhou;
end;

procedure TForm1.bebida2Change(Sender: TObject);
begin
  bebida(bebida2);
  CheckCorBebida(bebida2, casa2);
  CheckCigarroBebida(cigarro2, bebida2);
  CheckNacionalBebida(nacional2,bebida2);
  CasaCentro(bebida2, casa2);
  Dica1011(cigarro2, animal2, bebida2, casa2);
  Ganhou;
end;

procedure TForm1.bebida3Change(Sender: TObject);
begin
  bebida(bebida3);
  CheckCorBebida(bebida3, casa3);
  CheckCigarroBebida(cigarro3, bebida3);
  CheckNacionalBebida(nacional3,bebida3);
  CasaCentro(bebida3, casa3);
  Dica1011(cigarro3, animal3, bebida3, casa3);
  Ganhou;
end;

procedure TForm1.bebida4Change(Sender: TObject);
begin
  bebida(bebida4);
  CheckCorBebida(bebida4, casa4);
  CheckCigarroBebida(cigarro4, bebida4);
  CheckNacionalBebida(nacional4,bebida4);
  CasaCentro(bebida4, casa4);
  Dica1011(cigarro4, animal4, bebida4, casa4);
  Ganhou;
end;

procedure TForm1.bebida5Change(Sender: TObject);
begin
  bebida(bebida5);
  CheckCorBebida(bebida5, casa5);
  CheckCigarroBebida(cigarro5, bebida5);
  CheckNacionalBebida(nacional5,bebida5);
  CasaCentro(bebida5, casa5);
  Dica1011(cigarro5, animal5, bebida5, casa5);
  Ganhou;
end;

procedure TForm1.cigarro1Change(Sender: TObject);
begin
  cigarro(cigarro1);
  CheckCorCigarro(cigarro1, casa1);
  CheckNacionalCigarro(nacional1, cigarro1);
  CheckCigarroBebida(cigarro1, bebida1);
  CheckCigarroAnimal(cigarro1, animal1);
  Dica1011(cigarro1, animal1, bebida1, casa1);
  Ganhou;
end;

procedure TForm1.cigarro2Change(Sender: TObject);
begin
  cigarro(cigarro2);
  CheckCorCigarro(cigarro2, casa2);
  CheckNacionalCigarro(nacional2, cigarro2);
  CheckCigarroBebida(cigarro2, bebida2);
  CheckCigarroAnimal(cigarro2, animal2);
  Dica1011(cigarro2, animal2, bebida2, casa2);
  Ganhou;
end;

procedure TForm1.cigarro3Change(Sender: TObject);
begin
  cigarro(cigarro3);
  CheckCorCigarro(cigarro3, casa3);
  CheckNacionalCigarro(nacional3, cigarro3);
  CheckCigarroBebida(cigarro3, bebida3);
  CheckCigarroAnimal(cigarro3, animal3);
  Dica1011(cigarro3, animal3, bebida3, casa3);
  Ganhou;
end;

procedure TForm1.cigarro4Change(Sender: TObject);
begin
  cigarro(cigarro4);
  CheckCorCigarro(cigarro4, casa4);
  CheckNacionalCigarro(nacional4, cigarro4);
  CheckCigarroBebida(cigarro4, bebida4);
  CheckCigarroAnimal(cigarro4, animal4);
  Dica1011(cigarro4, animal4, bebida4, casa4);
  Ganhou;
end;

procedure TForm1.cigarro5Change(Sender: TObject);
begin
  cigarro(cigarro5);
  CheckCorCigarro(cigarro5, casa5);
  CheckNacionalCigarro(nacional5, cigarro5);
  CheckCigarroBebida(cigarro5, bebida5);
  CheckCigarroAnimal(cigarro5, animal5);
  Dica1011(cigarro5, animal5, bebida5, casa5);
  Ganhou;
end;

procedure TForm1.animal1Change(Sender: TObject);
begin
  animal(animal1);
  CheckCigarroAnimal(cigarro1, animal1);
  CheckNacionalAnimal(nacional1,animal1);
  Dica1011(cigarro1, animal1, bebida1, casa1);
  Ganhou;
end;

procedure TForm1.animal2Change(Sender: TObject);
begin
  animal(animal2);
  CheckCigarroAnimal(cigarro2, animal2);
  CheckNacionalAnimal(nacional2,animal2);
  Dica1011(cigarro2, animal2, bebida2, casa2);
  Ganhou;
end;

procedure TForm1.animal3Change(Sender: TObject);
begin
  animal(animal3);
  CheckCigarroAnimal(cigarro3, animal3);
  CheckNacionalAnimal(nacional3,animal3);
  Dica1011(cigarro3, animal3, bebida3, casa3);
  Ganhou;
end;

procedure TForm1.animal4Change(Sender: TObject);
begin
  animal(animal4);
  CheckCigarroAnimal(cigarro4, animal4);
  CheckNacionalAnimal(nacional4,animal4);
  Dica1011(cigarro4, animal4, bebida4, casa4);
  Ganhou;
end;

procedure TForm1.animal5Change(Sender: TObject);
begin
  animal(animal5);
  CheckCigarroAnimal(cigarro5, animal5);
  CheckNacionalAnimal(nacional5,animal5);
  Dica1011(cigarro5, animal5, bebida5, casa5);
  Ganhou;
end;

procedure TForm1.CheckCorNacional(cnacional: TComboBox; ccasa: TPanel);
begin
  if (ccasa.Color=clRed) and (cnacional.Text='Inglês') then
    d1.Checked:= true
  else
  if ((ccasa.Color=clRed) and (cnacional.Text<>'Inglês')) or ((ccasa.Color<>clRed) and (cnacional.Text='Inglês')) then
    d1.Checked:= false;
end;

procedure TForm1.CheckCorBebida(cbebida: TComboBox; ccasa: TPanel);
begin
  if (ccasa.Color=clGreen) and (cbebida.Text='Café') then
    d5.Checked:= true
  else
  if ((ccasa.Color=clGreen) and (cbebida.Text<>'Café')) or ((ccasa.Color<>clGreen) and (cbebida.Text='Café')) then
    d5.Checked:= false;
end;

procedure TForm1.CheckCorCigarro(ccigarro: TComboBox; ccasa: TPanel);
begin
  if (ccasa.Color=clYellow) and (ccigarro.Text='Dunhill') then
    d7.Checked:= true
  else
  if ((ccasa.Color=clYellow) and (ccigarro.Text<>'Dunhill'))
  or ((ccasa.Color<>clYellow) and (ccigarro.Text='Dunhill')) then
    d7.Checked:= false;
end;

procedure TForm1.CheckNacionalCigarro(cnacional, ccigarro: TComboBox);
begin
  if (cnacional.Text='Alemão') and (ccigarro.Text='Prince') then
    d13.Checked:= true
  else
  if ((cnacional.Text<>'Alemão') and (ccigarro.Text='Prince')) or
     ((cnacional.Text='Alemão') and (ccigarro.Text<>'Prince')) then
     d13.Checked:= false;
end;

procedure TForm1.CheckCigarroBebida(ccigarro, cbebida: TComboBox);
begin
  if (ccigarro.Text='Bluemaster') and (cbebida.Text='Cerveja') then
    d12.Checked:= true
  else
  if ((ccigarro.Text<>'Bluemaster') and (cbebida.Text='Cerveja')) or
     ((ccigarro.Text='Bluemaster') and (cbebida.Text<>'Cerveja')) then
    d12.Checked:= false; 
end;

procedure TForm1.CheckCigarroAnimal(ccigarro, canimal: TComboBox);
begin
  if (ccigarro.Text='Pall Mall') and (canimal.Text='Pássaros') then
    d6.Checked:= true
  else
  if ((ccigarro.Text<>'Pall Mall') and (canimal.Text='Pássaros')) or
    ((ccigarro.Text='Pall Mall') and (canimal.Text<>'Pássáros')) then
    d6.Checked:= false;
end;

procedure TForm1.CheckNacionalBebida(cnacional, cbebida: TComboBox);
begin
  if (cnacional.Text='Dinamarquês') and (cbebida.Text='Chá') then
    d3.Checked:= true
  else
  if ((cnacional.Text<>'Dinamarquês') and (cbebida.Text='Chá')) or
    ((cnacional.Text='Dinamarquês') and (cbebida.Text<>'Chá')) then
    d3.Checked:= false;
end;

procedure TForm1.CheckNacionalAnimal(cnacional, canimal: TComboBox);
begin
  if (cnacional.Text='Sueco') and (canimal.Text='Cachorros') then
    d2.Checked:= true
  else
  if ((cnacional.Text<>'Sueco') and (canimal.Text='Cachorros')) or
    ((cnacional.Text='Sueco') and (canimal.Text<>'Cachorros')) then
    d2.Checked:= false;
end;

procedure TForm1.CasaCentro(cbebida: TComboBox; ccasa: TPanel);
begin
  if (cbebida.Text='Leite') and (ccasa=casa3) then
    d8.Checked:= true
  else
  if ((ccasa<>casa3) and (cbebida.Text='Leite')) or
    ((ccasa=casa3) and (cbebida.Text<>'Leite')) then
    d8.Checked:= false;
end;

procedure TForm1.PrimeiraCasa(cnacional: TComboBox; ccasa: TPanel);
begin
  if (cnacional.Text='Norueguês') and (ccasa=casa1) then
    d9.Checked:= true
  else
  if ((ccasa<>casa1) and (cnacional.Text='Norueguês')) or
    ((ccasa=casa1) and (cnacional.Text<>'Norueguês')) then
    d9.Checked:= false;            
end;

procedure TForm1.Dica4(ccasa: TPanel);
begin
  cD:= casa2;
  cE:= casa2;
  if ccasa=casa1 then
  begin
    cD:= casa2;
  end
  else
  if ccasa=casa2 then
  begin
    cD:= casa3;
    cE:= casa1;
  end
  else
  if ccasa=casa3 then
  begin
    cD:= casa4;
    cE:= casa2;
  end
  else
  if ccasa=casa4 then
  begin
    cD:= casa5;
    cE:= casa3;
  end
  else
  if ccasa=casa5 then
  begin
    cE:= casa4;
  end;

  if ((ccasa.Color=clGreen) and (cD.Color=clWhite)) or
    ((ccasa.Color=clWhite) and (cE.Color=clGreen)) then
    d4.Checked:= true
  else
  if (((ccasa.Color<>clGreen) and (cD.Color=clWhite)) or ((ccasa.Color=clGreen) and (cD.Color<>clWhite)))
  or (((ccasa.Color<>clWhite) and (cE.Color=clGreen)) or ((ccasa.Color=clWhite) and (cE.Color<>clGreen)))
  then
    d4.Checked:= false;
end;

procedure TForm1.Dica1011(ccigarro, canimal, cbebida: TComboBox; ccasa: TPanel);
var cigD,cigE,aD,aE,bD,bE: TComboBox;
begin
  cD:= casa2;
  cE:= casa2;
  cigD:= cigarro2;
  cigE:= cigarro2;
  aD:= animal2;
  aE:= animal2;
  bD:= bebida2;
  bE:= bebida2;
  if ccasa=casa1 then
  begin
    cigD:= cigarro2;
    aD:= animal2;
    bD:= bebida2;
  end
  else
  if ccasa=casa2 then
  begin
    cigD:= cigarro3;
    cigE:= cigarro1;
    aD:= animal3;
    aE:= animal1;
    bD:= bebida3;
    bE:= bebida1;
  end
  else
  if ccasa=casa3 then
  begin
    cigD:= cigarro4;
    cigE:= cigarro2;
    aD:= animal4;
    aE:= animal2;
    bD:= bebida4;
    bE:= bebida2;
  end
  else
  if ccasa=casa4 then
  begin
    cigD:= cigarro5;
    cigE:= cigarro3;
    aD:= animal5;
    aE:= animal3;
    bD:= bebida5;
    bE:= bebida3;
  end
  else
  if ccasa=casa5 then
  begin
    cigE:= cigarro4;
    aE:= animal4;
    bD:= bebida4;
    bE:= bebida4;
  end;

  if ((ccigarro.Text='Blends') and ((aD.Text='Gatos') or (aE.Text='Gatos'))) or
  ((canimal.Text='Gatos') and ((cigD.Text='Blends') or (cigE.Text='Blends')))
  then
  begin
    d10.Checked:= true;
    c10:= ccasa;
  end
  else
  if ((c10<>ccasa) and (d10.Checked) and (ccigarro.Text='Blends')) or
  ((c10<>ccasa) and (d10.Checked) and (canimal.Text='Gatos'))
  then
  begin
    d10.Checked:= false;
    c10:= NIl;
  end;

  if ((ccigarro.Text='Dunhill') and ((aD.Text='Cavalos') or (aE.Text='Cavalos'))) or
  ((canimal.Text='Cavalos') and ((cigD.Text='Dunhill') or (cigE.Text='Dunhill')))
  then
  begin
    d11.Checked:= true;
    c11:= ccasa;
  end
  else
  if ((c11<>ccasa) and (d11.Checked) and (ccigarro.Text='Dunhill')) or
  ((c11<>ccasa) and (d11.Checked) and (canimal.Text='Cavalos'))
  then
  begin
    d11.Checked:= false;
    c11:= NIl;
  end;

  if ((ccigarro.Text='Blends') and ((bD.Text='Água') or (bE.Text='Água'))) or
  ((cbebida.Text='Água') and ((cigD.Text='Blends') or (cigE.Text='Blends')))
  then
  begin
    d15.Checked:= true;
    c15:= ccasa;
  end
  else
  if ((c15<>ccasa) and (d15.Checked) and (ccigarro.Text='Blends')) or
  ((c15<>ccasa) and (d15.Checked) and (cbebida.Text='Água'))
  then
  begin
    d15.Checked:= false;
    c15:= NIl;
  end;
end;

procedure TForm1.Dica14(ccasa: TPanel; cnacional: TComboBox);
var nD, nE: TComboBox;
begin
  cD:= casa2;
  cE:= casa2;
  nD:= nacional2;
  nE:= nacional2;
  if ccasa=casa1 then
  begin
    cD:= casa2;
    nD:= nacional2;
  end
  else
  if ccasa=casa2 then
  begin
    cD:= casa3;
    cE:= casa1;
    nD:= nacional3;
    nE:= nacional1;
  end
  else
  if ccasa=casa3 then
  begin
    cD:= casa4;
    cE:= casa2;
    nD:= nacional4;
    nE:= nacional2;
  end
  else
  if ccasa=casa4 then
  begin
    cD:= casa5;
    cE:= casa3;
    nD:= nacional5;
    nE:= nacional3;
  end
  else
  if ccasa=casa5 then
  begin
    cE:= casa4;
    nE:= nacional4;
  end;

  if ((cnacional.Text='Norueguês') and ((cD.Color=clBlue) or (cE.Color=clBlue))) or
    ((ccasa.Color=clBlue) and ((nD.Text='Norueguês') or (nE.Text='Norueguês')))
  then
  begin
    d14.Checked:= true;
    c14:= ccasa;
  end
  else
  if ((c14<>ccasa) and (d14.Checked) and (cnacional.Text='Norueguês')) or
  ((c14<>ccasa) and (d14.Checked) and (ccasa.Color=clBlue))
  then
  begin
    d14.Checked:= false;
    c14:= NIl;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  c10:= nil;
  c11:= nil;
  c15:= nil;
  c14:= nil;
end;

procedure TForm1.Ganhou;
begin
  if (cor1.Text='Amarela') and
  (cor2.Text='Azul') and
  (cor3.Text='Vermelha') and
  (cor4.Text='Verde') and
  (cor5.Text='Branca') and
  (nacional1.Text='Norueguês') and
  (nacional2.Text='Dinamarquês') and
  (nacional3.Text='Inglês') and
  (nacional4.Text='Alemão') and
  (nacional5.Text='Sueco') and
  (bebida1.Text='Água') and
  (bebida2.Text='Chá') and
  (bebida3.Text='Leite') and
  (bebida4.Text='Café') and
  (bebida5.Text='Cerveja') and
  (cigarro1.Text='Dunhill') and
  (cigarro2.Text='Blends') and
  (cigarro3.Text='Pall Mall') and
  (cigarro4.Text='Prince') and
  (cigarro5.Text='Bluemaster') and
  (animal1.Text='Gatos') and
  (animal2.Text='Cavalos') and
  (animal3.Text='Pássaros') and
  (animal4.Text='Peixe') and
  (animal5.Text='Cachorros') then
  ShowMessage('Você Ganhou!!!');
end;

end.
