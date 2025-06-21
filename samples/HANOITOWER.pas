% HANOI %
VAR N;
PROC HANOI(N, S, T, A);
BEGIN
  IF N = 1 THEN
    BEGIN
      WRITE("MOVE: DISK",1," FROM",S," TO",T,/);
    END ELSE 
     BEGIN
      HANOI(N-1,S,A,T);
      WRITE("MOVE: DISK",N," FROM",S," TO",T,/);
      HANOI(N-1,A,T,S);
    END
END;
% MAIN %
BEGIN
  N := 4;
  WRITE("TOWER OF HANOI:",N," DISCS",/);
  HANOI(N,1,3,2);
END.
