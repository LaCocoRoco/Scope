CoDeSys+'                      @        @   2.3.9.59    @/    @                             к'ш` ,   \ @      ЭЭЭЭЭЭЭЭ             P
bC        h   @   q   C:\TWINCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         Фн66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             Фн66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             Фн66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             Фн66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         Фн66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Фн66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     Фн66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         Фн66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         Фн66     џџџџ           LEN               STR               §џ                 LEN                                     Фн66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         Фн66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             Фн66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         Фн66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         Фн66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       Фн66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       Фн66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       Фн66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             Фн66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             Фн66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             Фн66     џџџџ    R    @                                                                                          FB_JUNIT           internal_structure                junit_st    $               internal_primitive            $               internal_primitive_array   	                           $               internal_structure_array   	                     junit_st            $                  input            $                  output                        $                        ^0л`  @    џџџџ           MAIN        
   l_test_bit             &           
	l_fb_unit	:fb_junit;
	                    к'ш`  @    џџџџ            
      §џџџ$      #   &   ( `      K   n     K   |     K        K                    Ќ         +     КЛlocalhost A     3ЋТw8#Т A                hО         м А>Уw0 Сwџџџџ3ЋТw0#Т    ќ  A         0#ТxО            DдЯ                 Yљ b9Р   eЭж 8#Т  Ой єл ил №њwxѕwџџџџ:ѕwќ  A        ќ  A     Рн DдЯ Рн  м DдЯ а'џџџџЌм 1Я     ,   ,                                                        K        @   пщк`  /*BECKCONFI3*/
        !РЈJ @   @           3                  Standard            	ђф`                        VAR_GLOBAL
END_VAR
                                                                                  "   ,   И             Standard         MAINџџџџ               пщк`                 $ћџџџ                         Pч р<А           Standard iчj@	iчj@      @+р+ м0ѕ                         	№ф`                        VAR_CONFIG
END_VAR
                                                                                   '              , 4 4 Є           Global_Variables пщк`	юф`                       VAR_GLOBAL
	(* variable test  *)
	junit_bit					:BOOL;
	junit_int8					:SINT;
	junit_int16				:INT;
	junit_int32				:DINT;
	junit_uint8				:BYTE;
	junit_uint16				:WORD;
	junit_uint32				:DWORD;
	junit_real32				:REAL;
	junit_real64				:LREAL;
	junit_string				:STRING(100);

	(* loader test  *)
	junit_array_small			:ARRAY[0..2] OF INT;
	junit_array_simple			:ARRAY[0..2, 2..4, 4..6] OF INT;
	junit_array_complex		:ARRAY[0..2, 4..8] OF fb_junit;
	junit_function_block		:fb_junit;
	juint_struct				:junit_st;

	(* problem *)
	junit_time					:TIME;
	juinit_p_simple			:POINTER TO LREAL;
	juinit_p_complex			:POINTER TO junit_st;
	juinit_p_complex_array 	:POINTER TO ARRAY [0..2] OF junit_st;
END_VAR

VAR_GLOBAL CONSTANT
	junit_c			:INT := 10;
END_VAR
                                                                                               '           	   ,   mА           Variable_Configuration пщк`	пщк`	                        VAR_CONFIG
END_VAR
                                                                                                 Q   |0|0 @G    @%   MS Sans Serif @        @           ѓџџџ                               џ      џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System      Q   |0|0 @G    @%   MS Sans Serif @        @           ѓџџџ                      )   hh':'mm':'ss @                             dd'-'MM'-'yyyy @       '   #   , Ж Ж `Ъ           junit_st %0л`	%0л`       JJш        Q   TYPE junit_st :
STRUCT
	b_value		:BOOL;
	st_value		:TON;
END_STRUCT
END_TYPE              $   , h h э           fb_junit ^0л`	^0л`                        FUNCTION_BLOCK fb_junit
VAR_INPUT
	input	:BOOL;
END_VAR

VAR_OUTPUT
	output	:LREAL;
END_VAR

VAR
	internal_structure			:junit_st;
	internal_primitive			:INT;
	internal_primitive_array		:ARRAY [0..2] OF BOOL;
	internal_structure_array		:ARRAY [1..3] OF junit_st;
END_VAR   ;               &   ,   А           main к'ш`	к'ш`                      P   PROGRAM main
VAR
	l_test_bit		:BOOL;
	(*
	l_fb_unit	:fb_junit;
	*)
END_VAR   ;                 §џџџ, Ж Ж Ъ         "   STANDARD.LIB 5.6.98 11:03:02 @FДw5      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                                             2                џџџџџџџџџџџџџџџџ  
             њџџџ  Pч р<А        јџџџ                             	   Bausteine                 fb_junit  $                  main  &   џџџџ           
   Datentypen                junit_st  #   џџџџ             Visualisierungen  џџџџ              Globale Variablen                 Global_Variables                     Variable_Configuration  	   џџџџ                                                              iчj@                         	   localhost            P      	   localhost            P      	   localhost            P           [шъ