;
; lab04task03.asm
;
; Created: 9/21/2022 10:48:01 AM
; Author : userESD
;


; Replace with your application code
start:
    ldi r16, 0xFF
	out VPORTD_DIR, r16
	ldi r16, 0x00
	out VPORTC_DIR, r16
main_loop:
	in r16, VPORTC_IN
	ldi r17, 8
	ldi r18, $00
next_bit:
	lsl r16
	brcc dec_bitcounter
	rol r18
dec_bitcounter:
	dec r17
	brne next_bit
	com r18
	out VPORTD_OUT, r18
	rjmp main_loop
