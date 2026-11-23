       IDENTIFICATION DIVISION.
       PROGRAM-ID. VOWEL-COUNT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 INPUT-TEXT PIC X(50).
       01 I PIC 99.
       01 VOWEL-COUNT PIC 99 VALUE ZERO.
       01 CURRENT-CHAR PIC X.
       PROCEDURE DIVISION.
           DISPLAY "Enter text: " WITH NO ADVANCING.
           ACCEPT INPUT-TEXT.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 50
               MOVE INPUT-TEXT(I:1) TO CURRENT-CHAR
               IF CURRENT-CHAR = "A" OR "E" OR "I" OR "O" OR "U"
                   OR CURRENT-CHAR = "a" OR "e" OR "i" OR "o" OR "u"
                   ADD 1 TO VOWEL-COUNT
               END-IF
           END-PERFORM.
           DISPLAY "Vowel count: " VOWEL-COUNT.
           STOP RUN.
