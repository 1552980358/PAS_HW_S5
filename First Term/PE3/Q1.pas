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

	 Procedure merge(alen : Integer; Var a : list_type; blen : Integer; Var b : list_type; clen : Integer; Var c : list_type);
	 Var
	    i , j , k : Integer;
			count : Integer;
	 Begin
	    While (count <= i + j) Do
			Begin
			If ()

			
			End;
	 End;