MCU: CH32V003F4P6
IDE: MounRiver

**InspireRV Command**

Mode: Coding Mode, Music Mode(Developing), Painting Mode

Coding Mode: Function: 5bits  value: 3bits

Drawing 0b00
```
00 000 xxx | Fill Screen - xxx:RGB ~ Clear(000) 
00 001 00x | Hide/Show(x:0/x:1) Cursor
00 010 xxx | Draw(Pen down) with color - xxx:RGB, xxx:000(Pen Up)
00 011 xxx | Not yet
00 100 xxx | Sound Freq
00 101 xxx | Sound dur
00 110 xxx | Set Program simulation speed - xxx:(0~7) ~ default 4
00 111 xxx | Move Cursor to 0:home position, 1~4: four corners, 7: variable position
```

Moving 0b01
```
01 000 xxx | move north xxx:(0~7) steps
01 001 xxx | move ne    xxx:(0~7) steps
01 010 xxx | move east  xxx:(0~7) steps
01 011 xxx | move se    xxx:(0~7) steps
01 100 xxx | move south xxx:(0~7) steps
01 101 xxx | move sw    xxx:(0~7) steps
01 110 xxx | move west  xxx:(0~7) steps
01 111 xxx | move nw    xxx:(0~7) steps
```

Options 0b10
```
10 000 000 | End of Program, codes after will be run
10 001 xxx | Jump to line xxx:(0~7) at Page 1
10 010 xxx | Jump to line xxx:(0~7) at Page 2
10 011 xxx | Jump to line xxx:(0~7) at Page 3
10 100 xxx | Jump to line xxx:(0~7) at Page 4
10 101 xxx | Load saved Program (0~7) (Developing)
10 110 xxx | Load saved Music (0~7) (Not Implemented)
10 111 xxx | Load saved Drawing (0~7)
```

loop variables 0b11
```
11 000 xxx | skipifCarry(minus), decrease with xxx:(0~7) until < 0
11 001 xxx | set blue color variable level xxx:(0~7) - dark 0, bright 7
11 010 xxx | set greencolor variable level xxx:(0~7) - dark 0, bright 7
11 011 xxx | set y variable coord xxx:(0~7) - xy-coord for 8x8
11 100 xxx | set red color variable level xxx:(0~7) - dark 0, bright 7
11 101 xxx | set x variable coord xxx:(0~7) - xy-coord for 8x8
11 110 xxx | set looping variable xxx:(0~7), only for looping
11 111 xxx | skipifCarry(plus), increase with xxx:(0~7) until > 7
```

moving x-y mapping
```
7
:
0..7
```

Coding Mode
```
1: Load
2:
3: save
4: Programming space
5: Result
6: Run simulation
7: Coding Mode/Clear
8: Music Mode (Developing)
9: Drawing Mode/Clear
```
Painting Mode
```
1: Load
2:
3: save
4: Background color selection
5: 
6: Foreground color selection
7: Coding Mode/Clear
8: Music Mode (Developing)
9: Drawing Mode/Clear
```

Music Mode (Developing)
```
1: Load
2:
3: save
4: 
5: 
6: 
7: Coding Mode
8: Music Mode
9: Drawing Mode
```

Loading Page
9: Back

Saving Page
9: Back

---------------------------------------------------------------------
For all variables, if not jump, all canbe used with Drawing
E.g:
```
11 100 110  set red color with level 6 rating
11 010 010  set greencolor with level 2 rating
00 010 110  Pen down with R*6+G*2+B*0 which orange color
00 000 001  Fill with blue color
00 000 000  clear
           if no end will run all the way 
```
M
E.g.
```
11 101 000   set x 0
11 011 001   set y 1
00 111 111   move cursor to 0,1
00 010 101   Pen down with Purple
01 001 100   Draw a diagonal line with 4 steps
11 111 010   Add 2 to the variable everytime
10 001 010   Jump to page 1 line 2 and add 2 the variable(set y 1)
10 000 000   End of Program
00 010 111   will not be run
01 111 111   will not be run
```


