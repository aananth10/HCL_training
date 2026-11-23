       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUSPICIOUS-TRANSACTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TRANSACTION-COUNT PIC 9(3).
       01 COUNTER PIC 9(3).
       01 TRANSACTION-ID PIC X(10).
       01 AMOUNT-VALUE PIC 9(7)V99.
       01 CASH-TRANSFER PIC X.
       01 FLAGGED-COUNT PIC 9(3) VALUE ZERO.
       PROCEDURE DIVISION.
           DISPLAY "Enter number of transactions: " WITH NO ADVANCING.
           ACCEPT TRANSACTION-COUNT.
           PERFORM VARYING COUNTER FROM 1 BY 1
               UNTIL COUNTER > TRANSACTION-COUNT
               DISPLAY "Transaction ID: " WITH NO ADVANCING
               ACCEPT TRANSACTION-ID
               DISPLAY "Amount: " WITH NO ADVANCING
               ACCEPT AMOUNT-VALUE
               DISPLAY "Cash transfer (Y/N): " WITH NO ADVANCING
               ACCEPT CASH-TRANSFER
               IF AMOUNT-VALUE >= 200000
                   DISPLAY "Flagged: " TRANSACTION-ID
                   ADD 1 TO FLAGGED-COUNT
               ELSE
                   IF CASH-TRANSFER = "Y" AND AMOUNT-VALUE >= 50000
                       DISPLAY "Flagged: " TRANSACTION-ID
                       ADD 1 TO FLAGGED-COUNT
                   END-IF
               END-IF
           END-PERFORM.
           DISPLAY "Total flagged: " FLAGGED-COUNT.
           STOP RUN.
