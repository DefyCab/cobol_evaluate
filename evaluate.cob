       >>SOURCE FORMAT FREE
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHOICE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CHOICE-ONE PIC 9 VALUE ZERO.
       01 CHOICE-TYPE PIC X(20).
       PROCEDURE DIVISION.
       DISPLAY "Du står i början av en lång korridor. Vad gör du?"
       DISPLAY "1. Går till vänster."
       DISPLAY "2. Går till höger."
       DISPLAY "3. Går framåt."
       DISPLAY "4. Går bakåt."
       DISPLAY "Ditt val: " WITH NO ADVANCING
       ACCEPT CHOICE-ONE
       EVALUATE CHOICE-ONE
           WHEN 1 MOVE "Vänster" TO CHOICE-TYPE
           WHEN 2 MOVE "Höger" TO CHOICE-TYPE
           WHEN 3 MOVE "Framåt" TO CHOICE-TYPE
           WHEN 4 MOVE "Bakåt" TO CHOICE-TYPE
           WHEN OTHER MOVE 0 TO CHOICE-TYPE
       END-EVALUATE
       
       IF CHOICE-ONE = 1 THEN 
       DISPLAY "Du kommer in i köket."
       END-IF

       IF CHOICE-ONE = 2 THEN 
       DISPLAY "Du kommer in i tvättstugan."
       END-IF

       IF CHOICE-ONE = 3 THEN 
       DISPLAY "Du kommer till slutet av korridoren."
       END-IF

       IF CHOICE-ONE = 4 THEN 
       DISPLAY "Du kommer ut i det fria."
       END-IF

       IF CHOICE-TYPE = 0 THEN 
       DISPLAY "Ogiltigt val. Hejdå!"
       END-IF

       STOP RUN.
       