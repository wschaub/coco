#!/usr/bin/python
samstate=0xC044
TY = 0x8000
M1 = 0x4000
M0 = 0x2000
R1 = 0x1000
R0 = 0x0800
P1 = 0x0400
F6 = 0x0200
F5 = 0x0100
F4 = 0x0080
F3 = 0x0040
F2 = 0x0020
F1 = 0x0010
F0 = 0x0008
V2 = 0x0004
V1 = 0x0002
V0 = 0x0001

def printstate(state):
    if state & TY:
        print 'TY, '
    if state & M1:
        print 'M1, '
    if state & M0:
        print 'M0, '
    if state & R1:
        print 'R1, '
    if state & R0:
        print 'R0, '
    if state & P1:
        print 'P1, '
    if state & F6:
        print 'F6, '
    if state & F5:
        print 'F5, '
    if state & F4:
        print 'F4, '
    if state & F3:
        print 'F3, '
    if state & F2:
        print 'F2, '
    if state & F1:
        print 'F1, '
    if state & F0:
        print 'F0, '
    if state & V2:
        print 'V2, '
    if state & V1:
        print 'V1, '
    if state & V0:
        print 'V0, '

printstate(samstate)
