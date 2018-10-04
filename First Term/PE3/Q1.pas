Program Merging1;
Uses WinCrt;

Const
   max_size = 20;

Type
	 list_type = Array [1 .. max_size] Of Integer;

Var
   list1 , list2 , list3 : list_type;
	 length1 , length2 , length3 : Integer;
	 index : Integer;

	 Procedure initialize(Var alen : Integer; Var a : list_type; Var blen : Integer; Var b : list_type; Var clen : Integer);
	 Begin
	    alen := 6;
			a[1] := 12;a[2] := 24;a[3] := 36;a[4] := 48;a[5] := 60;a[6] := 72;

			blen := 8;
			b[1] := 15;b[2] := 30;b[3] := 32;b[4] := 36;b[5] := 40;b[6] := 68;
			b[7] := 84;b[8] := 96;

			clen := 0
	 End;

	 Procedure print_list(p_len : Integer; Var p_list : list_type);
	 Var
	    i : Integer;
	 Begin
	    For i := 1 To p_len Do
			   Write(p_list[i],'  ')
	 End;

	 Procedure merge(alen : Integer; Var a : list_type; blen : Integer; Var b : list_type; Var clen : Integer; Var c : list_type);
	 Var
	    i , j , k : Integer;
			count : Integer;
	 Begin
	    i := 1;
			j := 1;
			k := 1;
	    While ((i < alen) Or (j < blen)) Do
			Begin
			   If (a[i] <= b[j])    {a <= b}
				 Then
			   Begin
				    c[k] := a[i];     {copy item a to array c}
						i := i + 1
				 End
				 Else
				 Begin
				    c[k] := b[j];    {copy item b to array c}
						j := j + 1
				 End;

				 k := k + 1
			End;

			If (i < alen)                       {copy remain items to array c}
			Then
			   For count := j To blen Do
				    c[count + blen] := b[count]
			Else
			   For count := i To alen Do
				    c[count + alen] := a[count];
			clen := i + j                 {return the length of the array after merging}
	 End;

Begin
   ClrScr;
	 initialize(length1,list1,length2,list2,length3);

	 WriteLn;WriteLn('List 1 : ');
	 print_list(length1,list1);

	 WriteLn;WriteLn('List 2 : ');
	 print_list(length2,list2);

	 merge(length1,list1,length2,list2,length3,list3);

	 WriteLn;
	 WriteLn('List 3 : ');
	 print_list(length3,list3)
End.