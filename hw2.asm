;;201403016 CHIU,Ming-Chang
;;ID: 100060007
;;CS410500  HW2

;;Status: the code works if the last char of the string is not 0


ORG 0H
SJMP  main
;; remember! the last char of the string could not be 0 for it is for null termination
string1:   DB "your test string" ;; string data
           DB 0  ;; null termination
string1Len: DB 16	 ;; string length follows the null

string2:   DB "123456789!" ;; string data
           DB 0  ;; null termination
string2Len: DB 10   ;; string length follows the null

string3:   DB "test" ;; string data
           DB 0  ;; null termination
string3Len: DB 4    ;; string length follows the null

string4:   DB " " ;; string data
           DB 0  ;; null termination
string4Len: DB 1    ;; string length follows the null
		   
string5:   DB "last case" ;; string data
           DB 0  ;; null termination
string5Len: DB 9   ;; string length follows the null
		   
strlen:
	;; the caller passes string pointer in DPTR
	;; expects the return value in accumulator A
	;; DPTR should not be modified.
	;; this function may safely use R0 without saving.

	MOV R0, #0	;; initialize the len variable
	MOV A, #0	;;start from the first character of the string 
	Count:
		MOVC A, @A+DPTR	;; load the character from string's memory location
		JZ Complete ;;check to make sure it is not the null character
		INC R0	;;len++
		MOV A, R0
		JMP Count	;;Loop again
	Complete:
		MOV A, R0	;;if is null character i.e. 0 , put len in A and return 
		RET
		
testString:
	CALL strlen	;; the purpose is to call strlen
	MOV R3, A	;;put the return val in R3
	INC A ;;index of str[]Length
	MOVC A, @A+DPTR	;;fetch the correct answer
	SUBB A, R3	;; check if len==str[]Length
	JNZ ERROR	;; if len-str[]Length!=0, Error Occurs.
	INC R2	;; if Correct, increase variable R2(t)
	RET
	  
main: 

	MOV R2, #0	;; use R2 as the variable t, initialize to 0
	MOV DPTR, #string1	;; load the address of string1 to DPTR
    CALL testString	;; call testString
	MOV DPTR, #string2	;; load the address of string2 to DPTR
    CALL testString	;; call testString
	MOV DPTR, #string3	;; load the address of string3 to DPTR
    CALL testString	;; call testString
	MOV DPTR, #string4	;; load the address of string4 to DPTR
    CALL testString	;; call testString
	MOV DPTR, #string5	;; load the address of string5 to DPTR
    CALL testString	;; call testString

Success:

        SJMP  Success

Error:

        SJMP  Error

        END
