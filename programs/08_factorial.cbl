       IDENTIFICATION DIVISION.
       PROGRAM-ID. FACTORIAL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMBER-IN PIC 9(3).
       01 COUNTER PIC 9(3).
       01 FACT PIC 9(18) VALUE 1.
       PROCEDURE DIVISION.
           DISPLAY "Enter a number: " WITH NO ADVANCING.
           ACCEPT NUMBER-IN.
           IF NUMBER-IN > 20
               DISPLAY "Maximum supported number is 20."
           ELSE
               PERFORM VARYING COUNTER FROM 1 BY 1
                   UNTIL COUNTER > NUMBER-IN
                   MULTIPLY FACT BY COUNTER GIVING FACT
               END-PERFORM
               DISPLAY "Factorial: " FACT
           END-IF.
           STOP RUN.
