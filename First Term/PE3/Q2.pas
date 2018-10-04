Program Merge_Sort;
Uses WinCrt;
Const
   max_size = 20;
Type
   list_type = Array [1 .. max_size] Of Integer;
Var
   left , middle , right : Integer;
	 list : list_type;

   Procedure initialize(Var i_list : list_type; Var i_left : Integer; Var i_right : Integer);
	 Begin
	    i_left := 1; i_right := 16;
			i_list[1] := 12;i_list[2] := 36;i_list[3] := 68;i_list[4] := 48;
			i_list[5] := 67;i_list[6] := 72;i_list[7] := 96;i_list[8] := 31;
			i_list[9] := 32;i_list[10] := 56;i_list[11] := 40;i_list[12] := 24;
			i_list[13] := 42;i_list[14] := 8;i_list[15] := 84;i_list[16] := 15;
	 End;

	 Procedure print_list(p_len : Integer; Var p_list : list_type);
	 Var
	    i : Integer;
	 Begin
	    For i := 1 To p_len Do
			   Write(p_list[i],'  ')
	 End;

	 Procedure merge(Var m_list : list_type; l , m , r : Integer);
	 Var
	    i , j , k : Integer;
			temp : list_type;
	 Begin
	    i := l;
			j := m + 1;
			k := l;
			
			While ((i <= m) Or (j <= r)) Do
			Begin
		     If (m_list[i] <= m_list[j])
				 Then
			   Begin
				    temp [k] := m_list[i];
						i := i + 1
				 End
				 Else
				 Begin
				    temp [k] := m_list[j];
						j := j + 1
				 End;
				 k := k + 1
			End;

			While (i <= m) Do
			Begin
			   temp[k] := m_list[i];
				 i := i + 1
			End;

			While (j <= r) Do
			Begin
			   temp[k] := m_list[j];
				 j := j + 1
			End;

			For k := l To r Do
			   m_list[k] := temp[k]
	 End;

	 Procedure mergesort(Var ms_list : list_type; l , r : Integer);
	 Var
	    m : Integer;
	  Begin
		   If (l < r)
			 Then
		   Begin
			    m := (l + r) Div 2;
					mergesort(ms_list,l,m);
					mergesort(ms_list,m + 1,r);
					merge(ms_list,l,m,r)
			 End
		End;
Begin
   ClrScr;
	 initialize(list,left,right);
	 print_list(right,list);

	 mergesort(list,left,right);

	 WriteLn;
	 print_list(right,list);
End.