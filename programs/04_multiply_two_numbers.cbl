       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLY-NUMBERS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9(5).
       01 NUM2 PIC 9(5).
       01 RESULT PIC 9(10).
       PROCEDURE DIVISION.
           DISPLAY "Enter first number: " WITH NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Enter second number: " WITH NO ADVANCING.
           ACCEPT NUM2.
           MULTIPLY NUM1 BY NUM2 GIVING RESULT.
           DISPLAY "Product: " RESULT.
           STOP RUN.
