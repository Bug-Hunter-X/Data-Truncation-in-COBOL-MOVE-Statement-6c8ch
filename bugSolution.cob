01  WS-AREA-1 PIC X(200). 
01  WS-AREA-2 PIC X(200). 
01  WS-LENGTH PIC 9(4) COMP.

PROCEDURE DIVISION.
    MOVE "Hello, this is a longer string." TO WS-AREA-1.
    INSPECT WS-AREA-1 TALLYING WS-LENGTH FOR CHARACTERS.
    IF WS-LENGTH > 100 THEN
        DISPLAY "Input string is too long. Truncating to 100 characters." 
        MOVE WS-AREA-1(1:100) TO WS-AREA-2
    ELSE
        MOVE WS-AREA-1 TO WS-AREA-2
    END-IF.
    DISPLAY WS-AREA-2.
    STOP RUN.