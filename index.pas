program calculo_imc;

uses crt;

type Pessoa = record
  Nome : string;
  Peso : integer;
  Altura : real;
end;

tabela = array [1..100] of Pessoa;

var pessoaAtual : tabela;
var resp : char;
var i : integer;

begin
  resp := 's';
  i := 0;

  clrscr;

while (resp = 's') or (resp = 'S') do
 begin
    i := i+1;
    writeln('Digite o nome: ');
    readln(pessoaAtual[i].Nome);
    writeln('Digite o peso: ');
    readln(pessoaAtual[i].Peso);
    writeln('Digite a altura: ');
    readln(pessoaAtual[i].Altura);
    writeln ('Quer cadastrar outra pessoa? [S]im ou [N]ao ');
    readln (resp);
 end;

  for i:= 1 to i do
  begin
    writeln('Nome: ', pessoaAtual[i].Nome, ', Peso: ', pessoaAtual[i].Peso, ', Altura: ', pessoaAtual[i].Altura:10:2);
  end;

  readln();
end.
