       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBTRACT-NUMBERS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC S9(5).
       01 NUM2 PIC S9(5).
       01 RESULT PIC S9(6).
       PROCEDURE DIVISION.
           DISPLAY "Enter first number: " WITH NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Enter second number: " WITH NO ADVANCING.
           ACCEPT NUM2.
           SUBTRACT NUM2 FROM NUM1 GIVING RESULT.
           DISPLAY "Result: " RESULT.
           STOP RUN.
