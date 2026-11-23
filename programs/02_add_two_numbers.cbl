       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD-TWO-NUMBERS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9(5).
       01 NUM2 PIC 9(5).
       01 TOTAL PIC 9(6).
       PROCEDURE DIVISION.
           DISPLAY "Enter first number: " WITH NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Enter second number: " WITH NO ADVANCING.
           ACCEPT NUM2.
           ADD NUM1 TO NUM2 GIVING TOTAL.
           DISPLAY "Total: " TOTAL.
           STOP RUN.
