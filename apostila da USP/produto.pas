program questao;

const 
	max = 100;
type 
	tvetor = array [1 .. max ] of integer;
	tmatriz = array [1 .. max , 1 .. max ] of integer;

procedure lermatriz (var matriz:tmatriz; var m,n:integer);
var
	c,l:integer;
begin
	for l:=1 to m do 
		for c:=1 to n do
			read(matriz[l,c]);
end;

procedure lervetor (var vetor:tvetor; var n:integer);
var
	i:integer;
begin
	for i:=1 to n do 
	read(vetor[i]);
end;

procedure imprimir (vetor:tvetor; m:integer);
var
	i:integer;
begin
	for i:=1 to m do
		write(vetor[i],' ');
	writeln();
end;

procedure mul(v1:tvetor; var v2:tvetor; matriz:tmatriz; m,n:integer );
var
	l,c,s:integer;
begin
	for l:=1 to m do
		begin
			s:=0;
				for c:=1 to n do
					s:=matriz[l,c]*v1[c] + s;
			v2[l]:=s;
		end;
end;

var
	m1:tmatriz;
	v1,v2:tvetor;
	m,n:integer;
begin
	writeln('linha e coluna');
	read(m,n);
	lermatriz(m1,m,n);
	lervetor(v1,n);
	mul(v1,v2,m1,m,n);	
	imprimir(v2,m);	
end.
