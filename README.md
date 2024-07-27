# Binary-To-Decimal
## Author: James Hill
 Converts a binary number to its decimal equivalent.

 ## Description
 * This program converts a binary number entered by the user into its decimal equivalent. The user is prompted to input a binary number, which is then processed by the program using a loop that iterates through each digit from right to left. Each binary digit is multiplied by its corresponding power of 2 and added to a cumulative decimal result. The program utilizes COBOL functions to handle string manipulation and numerical computations. Once the conversion is complete, the program displays the resulting decimal number to the user, demonstrating COBOL's capability to perform fundamental arithmetic operations and user interactions.

## Procedure Division
1. Display Prompt for Binary Number:
* DISPLAY "Enter a binary number: " WITH NO ADVANCING
2. Accept User Input:
* ACCEPT BINARY-NUMBER
3. Calculate Length of Binary Number:
* INSPECT BINARY-NUMBER TALLYING LEN FOR ALL CHARACTERS
4. Initialize and Perform Loop for Each Binary Digit:
* PERFORM VARYING I FROM 1 BY 1 UNTIL I > LEN
 a. Calculate Character Index:
   * COMPUTE CHAR-INDEX = LEN - I + 1
 b. Extract and Convert Binary Digit:
   * MOVE FUNCTION NUMVAL(FUNCTION REVERSE(BINARY-NUMBER(CHAR-INDEX:1))) TO BINARY-DIGIT
 c. Check if Binary Digit is 1:
  * IF BINARY-DIGIT = 1
   i. Update Decimal Result:
    * COMPUTE DECIMAL-RESULT = DECIMAL-RESULT + EXPONENT
  * END-IF
 d. Update Exponent:
   * COMPUTE EXPONENT = EXPONENT * 2
 * END-PERFORM
5. Display Decimal Equivalent:
 * DISPLAY "The decimal equivalent is: " DECIMAL-RESULT
6. Stop Program:
 * STOP RUN

## Screen Shot
![binToDec](https://github.com/user-attachments/assets/65a579a2-cc92-4897-b179-4949a62eaa43)


