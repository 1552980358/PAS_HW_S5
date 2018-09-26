Program BinarySearch;
Uses WinCrt;
Type
	list_type = Array [1..10] Of Integer;
Var
	list : list_type;
	size : Integer;

	Procedure init(Var i_size : Integer; Var i_list : list_type);
	Begin
		{Size = 8}
		i_size := 8;
		{8, 18, 21, 36, 48, 55, 60, 88}
		i_list[1] := 3;
		i_list[2] := 18;
		i_list[3] := 21;
		i_list[4] := 36;
		i_list[5] := 48;
		i_list[6] := 55;
		i_list[7] := 60;
		i_list[8] := 88;
	End; {Procedure Init}

	Function bsearch(b_item : Integer; b_size : Integer; Var b_list : list_type) : integer;
	Var
		found : integer;
		left , right , middle : integer;
	Begin
		found := 0;
		left := 1;
		right := b_size;

		While ((found = 0) And (left <= right)) Do
		Begin
			middle := Trunc((left + right) / 2);	{Get Middle index}
			If (b_list[middle] = b_item)				{Flag "found" set to "1"}
			Then																{when item found}
				found := 1
			Else								{Continue searching procedure}
				Begin
					If (b_list[middle] < b_item)
					Then
						left := middle + 1		{Searh Right part}
					Else
						right := middle - 1		{Searh Left part}
				End
		End;

		If (found = 1)
		Then
			bsearch := middle			{Return positive no. when found}
		Else
			bsearch := ((-1)*(middle))	{Return negative no. when found}
	End; {Function bsearch}

	Procedure print(p_size : Integer; Var p_list : list_type);
	Var
		i : Integer;
	Begin
		WriteLn('Print items in the list :');
		For i := 1 To p_size Do
			WriteLn('No.',i,' : ',p_list[i],' .')
	End; {Procedure print}

Begin
	init(size,list);
	WriteLn;
        print(size,list);
        Writeln;
	WriteLn('Valid Value');
	WriteLn('Position of 3   : ',bsearch(3,size,list));		{Valid}
	WriteLn('Position of 88  : ',bsearch(88,size,list));
	WriteLn('Invalid Value');
	WriteLn('Position of 100 : ',bsearch(100,size,list));	{Invalid}
	WriteLn('Extreme Value');
	WriteLn('Position of -1  : ',bsearch(-1,size,list))		{Extreme}
End.