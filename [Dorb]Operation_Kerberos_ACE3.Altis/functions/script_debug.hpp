/* -------------------------------------------
Description:
	!! Modifies the CBA-Log function if enabled
	Adds some aditional Makros

Author:
	Dorbedo
------------------------------------------- */

#ifdef DORB_ERROR
	#define ERROR(VAR) [__FILE__,__LINE__,VAR] call TRIPLES(dorb,marko,errorlog)
#endif

#ifdef DORB_LOG
	#define LOG(VAR) [__FILE__,__LINE__,VAR] call TRIPLES(dorb,makro,putinlog)
	
	#define FORMAT_10(STR,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8,ARG9,ARG10) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7, ARG8, ARG9, ARG10]
	#define FORMAT_12(STR,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8,ARG9,ARG10,ARG11,ARG12) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7, ARG8, ARG9, ARG10, ARG11, ARG12]
	#define FORMAT_14(STR,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8,ARG9,ARG10,ARG11,ARG12,ARG13,ARG14) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7, ARG8, ARG9, ARG10, ARG11, ARG12, ARG13, ARG14]
	#define FORMAT_16(STR,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8,ARG9,ARG10,ARG11,ARG12,ARG13,ARG14,ARG15,ARG16) format[STR, ARG1, ARG2, ARG3, ARG4, ARG5, ARG6, ARG7, ARG8, ARG9, ARG10, ARG11, ARG12, ARG13, ARG14, ARG15, ARG16]
	
	#define LOG_1(VAR1) LOG(FORMAT_2("%1 = %2",QUOTE(VAR1),VAR1))
	#define LOG_2(VAR1,VAR2) LOG(FORMAT_4("%1 = %2\n%3 = %4",QUOTE(VAR1),VAR1,QUOTE(VAR2),VAR2))
	#define LOG_3(VAR1,VAR2,VAR3) LOG(FORMAT_6("%1 = %2\n%3 = %4\n%5 = %6",QUOTE(VAR1),VAR1,QUOTE(VAR2),VAR2,QUOTE(VAR3),VAR3))
	#define LOG_4(VAR1,VAR2,VAR3,VAR4) LOG(FORMAT_8("%1 = %2\n%3 = %4\n%5 = %6\n%7 = %8",QUOTE(VAR1),VAR1,QUOTE(VAR2),VAR2,QUOTE(VAR3),VAR3,QUOTE(VAR4),VAR4))
	#define LOG_5(VAR1,VAR2,VAR3,VAR4,VAR5) LOG(FORMAT_10("%1 = %2\n%3 = %4\n%5 = %6\n%7 = %8\n%9 = %10",QUOTE(VAR1),VAR1,QUOTE(VAR2),VAR2,QUOTE(VAR3),VAR3,QUOTE(VAR4),VAR4,QUOTE(VAR5),VAR5))
	#define LOG_6(VAR1,VAR2,VAR3,VAR4,VAR5,VAR6) LOG(FORMAT_12("%1 = %2\n%3 = %4\n%5 = %6\n%7 = %8\n%9 = %10\n%11 = %12",QUOTE(VAR1),VAR1,QUOTE(VAR2),VAR2,QUOTE(VAR3),VAR3,QUOTE(VAR4),VAR4,QUOTE(VAR5),VAR5,QUOTE(VAR6),VAR6))
	#define LOG_7(VAR1,VAR2,VAR3,VAR4,VAR5,VAR6,VAR7) LOG(FORMAT_14("%1 = %2\n%3 = %4\n%5 = %6\n%7 = %8\n%9 = %10\n%11 = %12\n%13 = %14",QUOTE(VAR1),VAR1,QUOTE(VAR2),VAR2,QUOTE(VAR3),VAR3,QUOTE(VAR4),VAR4,QUOTE(VAR5),VAR5,QUOTE(VAR6),VAR6,QUOTE(VAR7),VAR7))
	#define LOG_8(VAR1,VAR2,VAR3,VAR4,VAR5,VAR6,VAR7,VAR8) LOG(FORMAT_16("%1 = %2\n%3 = %4\n%5 = %6\n%7 = %8\n%9 = %10\n%11 = %12\n%13 = %14\n%15 = %16",QUOTE(VAR1),VAR1,QUOTE(VAR2),VAR2,QUOTE(VAR3),VAR3,QUOTE(VAR4),VAR4,QUOTE(VAR5),VAR5,QUOTE(VAR6),VAR6,QUOTE(VAR7),VAR7,QUOTE(VAR8),VAR8))
#else
	#define LOG_1(VAR1) /*disabled*/
	#define LOG_2(VAR1,VAR2) /*disabled*/
	#define LOG_3(VAR1,VAR2,VAR3) /*disabled*/
	#define LOG_4(VAR1,VAR2,VAR3,VAR4) /*disabled*/
	#define LOG_5(VAR1,VAR2,VAR3,VAR4,VAR5) /*disabled*/
	#define LOG_6(VAR1,VAR2,VAR3,VAR4,VAR5,VAR6) /*disabled*/
	#define LOG_7(VAR1,VAR2,VAR3,VAR4,VAR5,VAR6,VAR7) /*disabled*/
	#define LOG_8(VAR1,VAR2,VAR3,VAR4,VAR5,VAR6,VAR7,VAR8) /*disabled*/
#endif
