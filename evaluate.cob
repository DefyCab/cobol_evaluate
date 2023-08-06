       IDENTIFICATION DIVISION.
       PROGRAM-ID. Hitta.
       AUTHOR. Love Bellinder.
       DATE-WRITTEN.  01/08/2023.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CHOICE-ONE PIC 9 VALUE ZER0.
       01 CHOICE-TYPE PIC X(50).
       PROCEDURE DIVISION.
       DISPLAY "Vilket håll vil du gå åt?"
       DISPLAY "1. Vänster"
       DISPLAY "2. Höger"
       DISPLAY "3. Framåt"
       DISPLAY "4. Bakåt"
       DISPLAY "Ditt val: " with no advancing
       ACCEPT CHOICE-ONE
       EVALUATE CHOICE-ONE
           WHEN 1 MOVE "vänster" TO CHOICE-TYPE
           WHEN 2 MOVE "höger" TO CHOICE-TYPE
           WHEN 3 MOVE "framåt" TO CHOICE-TYPE
           WHEN 4 MOVE "bakåt" TO CHOICE-TYPE
           WHEN OTHER STOP RUN.
       END-EVALUATE
       DISPLAY "Du gick " CHOICE-TYPE
       IF CHOICE-ONE = 1 then
       DISPLAY "Du kommer in i en mörk korridor. Du ser ljuset!"
       END-IF
       IF CHOICE-ONE = 2 then
       DISPLAY "Du kommer in i badrummet. Vad gör du?"
       END-IF
       IF CHOICE-ONE = 3 then
       DISPLAY "Du kommer in i en skog. Det luktar koda och barr."
       DISPLAY "Du hör någon sjunga en bit bort. Vad gör du?"
       END-IF
       IF CHOICE-ONE = 4 then
       DISPLAY "Du kommer in på en second-hand. Du köpe en blå mugg!"
       END-IF
       GOBACK.