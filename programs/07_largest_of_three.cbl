       IDENTIFICATION DIVISION.
       PROGRAM-ID. LARGEST-OF-THREE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A PIC 9(5).
       01 B PIC 9(5).
       01 C PIC 9(5).
       01 MAX-VALUE PIC 9(5).
       PROCEDURE DIVISION.
           DISPLAY "Enter three numbers: " WITH NO ADVANCING.
           ACCEPT A.
           ACCEPT B.
           ACCEPT C.
           MOVE A TO MAX-VALUE.
           IF B > MAX-VALUE MOVE B TO MAX-VALUE END-IF.
           IF C > MAX-VALUE MOVE C TO MAX-VALUE END-IF.
           DISPLAY "Largest number: " MAX-VALUE.
           STOP RUN.
