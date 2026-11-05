pymcuprog write -m fuses -o 5 -l 0xC1 -d avr128db48 -t uart --clk 57600 -u COM3

pymcuprog erase -d avr128db48 -t uart --clk 57600 -u COM9

pymcuprog write -d avr128db48 -t uart --clk 57600 -u COM9 -f "%~dp0NGI-5000-CIU-1.1.0.hex" 
pause