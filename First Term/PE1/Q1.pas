Program WorkSheet4_PE1_1;
Uses WinCrt;

Type
	no_type = Array [1 .. 10] Of Integer;
	
Var
	list : no_type;
	length : Integer;
	
	Function search2(s2_number : Integer; s2_length : Integer; Var s2_no : no_type) : Integer;
	Var
		i , found : Integer;
	Begin
		i := 1;
		found := 0;
		While ((found = 0) And (i <= s2_length)) Do
		Begin
			If (s2_no[i] = s2_number)
			Then
				found := 1
			Else
				i := i + 1
		End;

		If (found = 0)
		Then
			search2 := 0
		Else
			search2 := i
	End;

	Procedure init(Var i_length : Integer; Var s2_no : no_type);
	Begin
		s2_no[1] := 3;
		s2_no[2] := 18;
		s2_no[3] := 21;
		s2_no[4] := 36;
		s2_no[5] := 48;
		s2_no[6] := 55;
		s2_no[7] := 60;
		s2_no[8] := 88;
		i_length := 8;
	End;
	
Begin
	init(length,list);
	WriteLn('3   : ',search2(3,length,list));
	WriteLn('48  : ',search2(48,length,list));
	WriteLn('88  : ',search2(88,length,list));
	WriteLn('-1  : ',search2(-1,length,list));
	WriteLn('100 : ',search2(100,length,list));

End.