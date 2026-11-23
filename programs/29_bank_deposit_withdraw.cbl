       IDENTIFICATION DIVISION.
       PROGRAM-ID. BANK-DEPOSIT-WITHDRAW.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BALANCE PIC 9(7)V99 VALUE 1000.00.
       01 AMOUNT-VALUE PIC 9(7)V99.
       01 ACTION-VALUE PIC X.
       PROCEDURE DIVISION.
           DISPLAY "D=Deposit, W=Withdraw: " WITH NO ADVANCING.
           ACCEPT ACTION-VALUE.
           DISPLAY "Enter amount: " WITH NO ADVANCING.
           ACCEPT AMOUNT-VALUE.
           EVALUATE ACTION-VALUE
               WHEN "D"
                   ADD AMOUNT-VALUE TO BALANCE
               WHEN "W"
                   IF AMOUNT-VALUE > BALANCE
                       DISPLAY "Insufficient balance."
                   ELSE
                       SUBTRACT AMOUNT-VALUE FROM BALANCE
                   END-IF
               WHEN OTHER
                   DISPLAY "Invalid action."
           END-EVALUATE.
           DISPLAY "Final balance: " BALANCE.
           STOP RUN.
