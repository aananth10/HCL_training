       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAP-YEAR.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 YEAR-IN PIC 9(4).
       01 REMAINDER-VALUE PIC 9(4).
       PROCEDURE DIVISION.
           DISPLAY "Enter year: " WITH NO ADVANCING.
           ACCEPT YEAR-IN.
           IF FUNCTION MOD(YEAR-IN, 400) = 0
               DISPLAY "It is a leap year."
           ELSE
               IF FUNCTION MOD(YEAR-IN, 100) = 0
                   DISPLAY "It is not a leap year."
               ELSE
                   IF FUNCTION MOD(YEAR-IN, 4) = 0
                       DISPLAY "It is a leap year."
                   ELSE
                       DISPLAY "It is not a leap year."
                   END-IF
               END-IF
           END-IF.
           STOP RUN.
