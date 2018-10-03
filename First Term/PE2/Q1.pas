Program Bubble_Sort_String_List;
Uses WinCrt;
Const
	max_size = 10;
Type
	name_type = String[30];
	list_type = Array[1 .. max_size] Of name_type;
Var
	length : Integer;
	list   : list_type;
	index  : Integer;

	Procedure sort_str(s_length : Integer; Var s_list : list_type);
	Var
		tmp : name_type;
		i 	: Integer;
		Function check_asc_order(c_length : Integer; Var s_list : list_type) : Integer;
		Var
			i , order : Integer;
		Begin
			i := 1;
			order := 1;
			While ((order = 1) And (i <= c_length)) Do
			Begin
				If (s_list[i] > s_list[i + 1])
				Then
					order := 0
				Else
					i := i + 1
			End;
			
			If (order = 1)
			Then
				check_asc_order := i		{return positive i while in order}
			Else
				check_asc_order := -1*i		{return negative i while not in order}
			
		End;
	Begin
		If (s_length > 0)
		Then
		Begin
			While (check_asc_order(s_length,s_list) <> Abs(check_asc_order(s_length,s_list))) Do
			Begin
				tmp := s_list[Abs(check_asc_order(s_length,s_list))];
				s_list[Abs(check_asc_order(s_length,s_list))] := s_list[Abs(check_asc_order(s_length,s_list)) + 1];
				s_list[Abs(check_asc_order(s_length,s_list)) + 1] := tmp
			End
		End
	End;
Begin
	length := 5;
	list[1] := 'Sharon';
	list[2] := 'Redsonia';
	list[3] := 'June';
	list[4] := 'Zoe';
	list[5] := 'Celine';
	
	WriteLn;
	For index := 1 To length Do
		Write(list[index],'  ');		
	
	sort_str(length,list);
	
	WriteLn;
	For index := 1 To length Do
		Write(list[index],'  ');
		
End.