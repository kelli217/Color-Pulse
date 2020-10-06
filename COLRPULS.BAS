start:
WIDTH 80, 50: REM Change this line to use different screen modes
FOR x = 1 TO 7
COLOR x, 0: GOSUB fadein
COLOR x + 8, x: GOSUB fadein
GOSUB fadeout
COLOR x, 0: GOSUB fadeout
NEXT x
GOTO start
END

fadein:
LOCATE screen.height / 2, screen.width / 2: PRINT CHR$(176);
FOR delay = 0 TO 50000: NEXT delay
LOCATE screen.height / 2, screen.width / 2: PRINT CHR$(177);
FOR delay = 0 TO 50000: NEXT delay
LOCATE screen.height / 2, screen.width / 2: PRINT CHR$(178);
FOR delay = 0 TO 50000: NEXT delay
LOCATE screen.height / 2, screen.width / 2: PRINT CHR$(219);
FOR delay = 0 TO 50000: NEXT delay
RETURN

fadeout:
LOCATE screen.height / 2, screen.width / 2: PRINT CHR$(178);
FOR delay = 0 TO 50000: NEXT delay
LOCATE screen.height / 2, screen.width / 2: PRINT CHR$(177);
FOR delay = 0 TO 50000: NEXT delay
LOCATE screen.height / 2, screen.width / 2: PRINT CHR$(176);
FOR delay = 0 TO 50000: NEXT delay
LOCATE screen.height / 2, screen.width / 2: PRINT " ";
FOR delay = 0 TO 50000: NEXT delay
RETURN

