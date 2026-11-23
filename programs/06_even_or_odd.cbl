       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVEN-OR-ODD.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMBER-IN PIC 9(5).
       01 REMAINDER-VALUE PIC 9.
       PROCEDURE DIVISION.
           DISPLAY "Enter a number: " WITH NO ADVANCING.
           ACCEPT NUMBER-IN.
           DIVIDE NUMBER-IN BY 2 GIVING NUMBER-IN REMAINDER REMAINDER-VALUE.
           IF REMAINDER-VALUE = 0
               DISPLAY "The number is EVEN."
           ELSE
               DISPLAY "The number is ODD."
           END-IF.
           STOP RUN.
