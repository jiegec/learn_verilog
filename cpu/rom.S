.org 0x0
.global _start
.set noat

_start:
    li $31, 0x12345678
    ori $2, $0, 0x11
    andi $2, 0x10
    ori $3, $0, 0x100
    pref 1, 10($1)
    or $4, $3, $2
    or $4, $3, $2
    and $4, $3, $2
    xor $4, $3, $2
    nor $4, $3, $2
    sync
    ori $10, 0x1
    ori $10, 0x2
    ori $10, 0x4
    ori $10, 0x8
    ori $10, 0x10
    ori $10, 0x20
    nop
    ssnop
    lui $2, 0x0404
    ori $2, $2, 0x0404
    sll $2, $2, 8
    ori $7, $0, 0x7
    sllv $2, $2, $7
    srl $2, $2, 8
    ori $5, $0, 0x5
    srlv $2, $2, $5
    sll $2, $2, 19
    sra $2, $2, 16
    ori $8, $0, 0x8
    srav $2, $2, $8

    lui $1, 0x1234
    lui $2, 0xffff
    mthi $0
    mfhi $4
    mthi $1
    mfhi $4
    mfhi $4
    mthi $2
    mfhi $4

    lui $1, 0x4321
    lui $2, 0x5678
    movz $4, $2, $1
    movz $5, $2, $0
    movn $4, $2, $1
