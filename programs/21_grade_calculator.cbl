       IDENTIFICATION DIVISION.
       PROGRAM-ID. GRADE-CALCULATOR.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MARKS PIC 9(3).
       PROCEDURE DIVISION.
           DISPLAY "Enter marks: " WITH NO ADVANCING.
           ACCEPT MARKS.
           EVALUATE TRUE
               WHEN MARKS >= 90 DISPLAY "Grade: A"
               WHEN MARKS >= 80 DISPLAY "Grade: B"
               WHEN MARKS >= 70 DISPLAY "Grade: C"
               WHEN MARKS >= 60 DISPLAY "Grade: D"
               WHEN OTHER DISPLAY "Grade: F"
           END-EVALUATE.
           STOP RUN.
