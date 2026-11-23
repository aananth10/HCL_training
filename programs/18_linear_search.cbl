       IDENTIFICATION DIVISION.
       PROGRAM-ID. LINEAR-SEARCH.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMBER-TABLE.
          05 NUMBER-ITEM PIC 9(3) OCCURS 5 TIMES.
       01 I PIC 9.
       01 SEARCH-VALUE PIC 9(3).
       01 FOUND-FLAG PIC X VALUE "N".
       PROCEDURE DIVISION.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY "Enter number " I ": " WITH NO ADVANCING
               ACCEPT NUMBER-ITEM(I)
           END-PERFORM.
           DISPLAY "Value to search: " WITH NO ADVANCING.
           ACCEPT SEARCH-VALUE.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               IF NUMBER-ITEM(I) = SEARCH-VALUE
                   MOVE "Y" TO FOUND-FLAG
               END-IF
           END-PERFORM.
           IF FOUND-FLAG = "Y" DISPLAY "Value found." ELSE DISPLAY "Value not found." END-IF.
           STOP RUN.
