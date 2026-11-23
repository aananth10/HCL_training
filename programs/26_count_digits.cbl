       IDENTIFICATION DIVISION.
       PROGRAM-ID. COUNT-DIGITS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMBER-IN PIC 9(10).
       01 DIGIT-COUNT PIC 99 VALUE ZERO.
       PROCEDURE DIVISION.
           DISPLAY "Enter a number: " WITH NO ADVANCING.
           ACCEPT NUMBER-IN.
           IF NUMBER-IN = ZERO
               MOVE 1 TO DIGIT-COUNT
           ELSE
               PERFORM UNTIL NUMBER-IN = ZERO
                   DIVIDE NUMBER-IN BY 10 GIVING NUMBER-IN
                   ADD 1 TO DIGIT-COUNT
               END-PERFORM
           END-IF.
           DISPLAY "Digit count: " DIGIT-COUNT.
           STOP RUN.
