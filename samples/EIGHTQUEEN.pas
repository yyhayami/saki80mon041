% EIGHT QUEEN %
ARRAY A[8],B[15],C[15],HYO[8];
VAR I,J;
PROC PRINT;
  VAR I,J;
  BEGIN
    FOR I:=0 TO 7 DO BEGIN
      FOR J:=0 TO 7 DO
        IF HYO[I]=J THEN WRITE(" Q") ELSE WRITE(" ."); 
      WRITE(/)
    END;
    WRITE(/)
  END;
PROC TRY(I);
VAR J;
  BEGIN
    FOR J:=0 TO 7 DO
      IF A[I] AND B[I+J] AND C[7+I-J] THEN
      BEGIN HYO[I]:=J;
        A[J]:=0;B[I+J]:=0;C[7+I-J]:=0;
        IF I<7 THEN TRY(I+1) ELSE PRINT;
        A[J]:=1;B[I+J]:=1;C[7+I-J]:=1;
      END;
  END;
% MAIN %
BEGIN
  FOR I:=0 TO 7 DO A[I]:=1;
  FOR I:=0 TO 14 DO B[I]:=1;
  FOR I:=0 TO 14 DO C[I]:=1;
  TRY(0);
END.
