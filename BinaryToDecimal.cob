       IDENTIFICATION DIVISION.
       PROGRAM-ID. BinaryToDecimal.
       AUTHOR. James Hill.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BINARY-NUMBER   PIC X(8).
       01 DECIMAL-RESULT  PIC 9(18) VALUE 0.
       01 I               PIC 9(2) VALUE 0.
       01 BINARY-DIGIT    PIC 9 VALUE 0.
       01 EXPONENT        PIC 9(18) VALUE 1.
       01 LEN             PIC 9(2) VALUE 0.
       01 CHAR-INDEX      PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           DISPLAY "Enter a binary number: " WITH NO ADVANCING
           ACCEPT BINARY-NUMBER

           INSPECT BINARY-NUMBER TALLYING LEN FOR ALL CHARACTERS

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > LEN
              COMPUTE CHAR-INDEX = LEN - I + 1
              MOVE FUNCTION NUMVAL(FUNCTION REVERSE(BINARY-NUMBER
              (CHAR-INDEX:1))) TO BINARY-DIGIT
              IF BINARY-DIGIT = 1
                 COMPUTE DECIMAL-RESULT = DECIMAL-RESULT + EXPONENT
              END-IF
              COMPUTE EXPONENT = EXPONENT * 2
           END-PERFORM

           DISPLAY "The decimal equivalent is: " DECIMAL-RESULT

           STOP RUN.
