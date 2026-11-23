       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVIDE-NUMBERS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9(5).
       01 NUM2 PIC 9(5).
       01 QUOTIENT PIC 9(5)V99.
       PROCEDURE DIVISION.
           DISPLAY "Enter dividend: " WITH NO ADVANCING.
           ACCEPT NUM1.
           DISPLAY "Enter divisor: " WITH NO ADVANCING.
           ACCEPT NUM2.
           IF NUM2 = ZERO
               DISPLAY "Division by zero is not allowed."
           ELSE
               DIVIDE NUM1 BY NUM2 GIVING QUOTIENT
               DISPLAY "Quotient: " QUOTIENT
           END-IF.
           STOP RUN.
