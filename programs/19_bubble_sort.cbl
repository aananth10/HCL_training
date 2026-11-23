       IDENTIFICATION DIVISION.
       PROGRAM-ID. BUBBLE-SORT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMBER-TABLE.
          05 NUMBER-ITEM PIC 9(3) OCCURS 5 TIMES.
       01 I PIC 9.
       01 J PIC 9.
       01 TEMP-VALUE PIC 9(3).
       PROCEDURE DIVISION.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY "Enter number " I ": " WITH NO ADVANCING
               ACCEPT NUMBER-ITEM(I)
           END-PERFORM.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I >= 5
               COMPUTE J = I + 1
               PERFORM UNTIL J > 5
                   IF NUMBER-ITEM(I) > NUMBER-ITEM(J)
                       MOVE NUMBER-ITEM(I) TO TEMP-VALUE
                       MOVE NUMBER-ITEM(J) TO NUMBER-ITEM(I)
                       MOVE TEMP-VALUE TO NUMBER-ITEM(J)
                   END-IF
                   ADD 1 TO J
               END-PERFORM
           END-PERFORM.
           DISPLAY "Sorted numbers:".
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY NUMBER-ITEM(I)
           END-PERFORM.
           STOP RUN.
