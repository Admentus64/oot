.rdata
glabel D_8013E770
    .asciz "../z_player_lib.c"
    .balign 4

glabel D_8013E784
    .asciz "../z_player_lib.c"
    .balign 4

.text
glabel func_8008F470
/* B06610 8008F470 27BDFF78 */  addiu $sp, $sp, -0x88
/* B06614 8008F474 AFBF0024 */  sw    $ra, 0x24($sp)
/* B06618 8008F478 AFA40088 */  sw    $a0, 0x88($sp)
/* B0661C 8008F47C AFA5008C */  sw    $a1, 0x8c($sp)
/* B06620 8008F480 AFA60090 */  sw    $a2, 0x90($sp)
/* B06624 8008F484 AFA70094 */  sw    $a3, 0x94($sp)
/* B06628 8008F488 84C20084 */  lh    $v0, 0x84($a2)
/* B0662C 8008F48C 8C850000 */  lw    $a1, ($a0)
/* B06630 8008F490 3C068014 */  lui   $a2, %hi(D_8013E770) # $a2, 0x8014
/* B06634 8008F494 3049000F */  andi  $t1, $v0, 0xf
/* B06638 8008F498 00025103 */  sra   $t2, $v0, 4
/* B0663C 8008F49C 2529FFFF */  addiu $t1, $t1, -1
/* B06640 8008F4A0 254AFFFF */  addiu $t2, $t2, -1
/* B06644 8008F4A4 AFAA007C */  sw    $t2, 0x7c($sp)
/* B06648 8008F4A8 AFA90080 */  sw    $t1, 0x80($sp)
/* B0664C 8008F4AC 24C6E770 */  addiu $a2, %lo(D_8013E770) # addiu $a2, $a2, -0x1890
/* B06650 8008F4B0 27A40068 */  addiu $a0, $sp, 0x68
/* B06654 8008F4B4 240706B9 */  li    $a3, 1721
/* B06658 8008F4B8 0C031AB1 */  jal   Graph_OpenDisps
/* B0665C 8008F4BC AFA50078 */   sw    $a1, 0x78($sp)
/* B06660 8008F4C0 8FA90080 */  lw    $t1, 0x80($sp)
/* B06664 8008F4C4 8FA80078 */  lw    $t0, 0x78($sp)
/* B06668 8008F4C8 8FAA007C */  lw    $t2, 0x7c($sp)
/* B0666C 8008F4CC 05210006 */  bgez  $t1, .L8008F4E8
/* B06670 8008F4D0 3C0500FF */   lui   $a1, (0x00FFFFFF >> 16) # lui $a1, 0xff
/* B06674 8008F4D4 8FB800A4 */  lw    $t8, 0xa4($sp)
/* B06678 8008F4D8 3C098012 */  lui   $t1, %hi(D_80125FB8)
/* B0667C 8008F4DC 0018C840 */  sll   $t9, $t8, 1
/* B06680 8008F4E0 01394821 */  addu  $t1, $t1, $t9
/* B06684 8008F4E4 91295FB8 */  lbu   $t1, %lo(D_80125FB8)($t1)
.L8008F4E8:
/* B06688 8008F4E8 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B0668C 8008F4EC 3C0CDB06 */  lui   $t4, (0xDB060020 >> 16) # lui $t4, 0xdb06
/* B06690 8008F4F0 358C0020 */  ori   $t4, (0xDB060020 & 0xFFFF) # ori $t4, $t4, 0x20
/* B06694 8008F4F4 244B0008 */  addiu $t3, $v0, 8
/* B06698 8008F4F8 AD0B02C0 */  sw    $t3, 0x2c0($t0)
/* B0669C 8008F4FC 00096880 */  sll   $t5, $t1, 2
/* B066A0 8008F500 3C048012 */  lui   $a0, %hi(D_80125FD8)
/* B066A4 8008F504 008D2021 */  addu  $a0, $a0, $t5
/* B066A8 8008F508 AC4C0000 */  sw    $t4, ($v0)
/* B066AC 8008F50C 8C845FD8 */  lw    $a0, %lo(D_80125FD8)($a0)
/* B066B0 8008F510 3C068016 */  lui   $a2, %hi(gSegments) # $a2, 0x8016
/* B066B4 8008F514 24C66FA8 */  addiu $a2, %lo(gSegments) # addiu $a2, $a2, 0x6fa8
/* B066B8 8008F518 00047900 */  sll   $t7, $a0, 4
/* B066BC 8008F51C 000FC702 */  srl   $t8, $t7, 0x1c
/* B066C0 8008F520 0018C880 */  sll   $t9, $t8, 2
/* B066C4 8008F524 00D95821 */  addu  $t3, $a2, $t9
/* B066C8 8008F528 8D6C0000 */  lw    $t4, ($t3)
/* B066CC 8008F52C 34A5FFFF */  ori   $a1, (0x00FFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* B066D0 8008F530 00857024 */  and   $t6, $a0, $a1
/* B066D4 8008F534 3C078000 */  lui   $a3, 0x8000
/* B066D8 8008F538 01CC6821 */  addu  $t5, $t6, $t4
/* B066DC 8008F53C 01A77821 */  addu  $t7, $t5, $a3
/* B066E0 8008F540 05410006 */  bgez  $t2, .L8008F55C
/* B066E4 8008F544 AC4F0004 */   sw    $t7, 4($v0)
/* B066E8 8008F548 8FB800A4 */  lw    $t8, 0xa4($sp)
/* B066EC 8008F54C 3C0A8012 */  lui   $t2, %hi(D_80125FB9)
/* B066F0 8008F550 0018C840 */  sll   $t9, $t8, 1
/* B066F4 8008F554 01595021 */  addu  $t2, $t2, $t9
/* B066F8 8008F558 914A5FB9 */  lbu   $t2, %lo(D_80125FB9)($t2)
.L8008F55C:
/* B066FC 8008F55C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B06700 8008F560 3C0EDB06 */  lui   $t6, (0xDB060024 >> 16) # lui $t6, 0xdb06
/* B06704 8008F564 35CE0024 */  ori   $t6, (0xDB060024 & 0xFFFF) # ori $t6, $t6, 0x24
/* B06708 8008F568 244B0008 */  addiu $t3, $v0, 8
/* B0670C 8008F56C AD0B02C0 */  sw    $t3, 0x2c0($t0)
/* B06710 8008F570 000A6080 */  sll   $t4, $t2, 2
/* B06714 8008F574 3C048012 */  lui   $a0, %hi(D_80125FF8)
/* B06718 8008F578 008C2021 */  addu  $a0, $a0, $t4
/* B0671C 8008F57C AC4E0000 */  sw    $t6, ($v0)
/* B06720 8008F580 8C845FF8 */  lw    $a0, %lo(D_80125FF8)($a0)
/* B06724 8008F584 24090003 */  li    $t1, 3
/* B06728 8008F588 3C018016 */  lui   $at, %hi(D_80160004) # $at, 0x8016
/* B0672C 8008F58C 00047900 */  sll   $t7, $a0, 4
/* B06730 8008F590 000FC702 */  srl   $t8, $t7, 0x1c
/* B06734 8008F594 0018C880 */  sll   $t9, $t8, 2
/* B06738 8008F598 00D95821 */  addu  $t3, $a2, $t9
/* B0673C 8008F59C 8D6E0000 */  lw    $t6, ($t3)
/* B06740 8008F5A0 00856824 */  and   $t5, $a0, $a1
/* B06744 8008F5A4 3C19FB00 */  lui   $t9, 0xfb00
/* B06748 8008F5A8 01AE6021 */  addu  $t4, $t5, $t6
/* B0674C 8008F5AC 01877821 */  addu  $t7, $t4, $a3
/* B06750 8008F5B0 AC4F0004 */  sw    $t7, 4($v0)
/* B06754 8008F5B4 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B06758 8008F5B8 3C0E8012 */  lui   $t6, %hi(D_80126008) # $t6, 0x8012
/* B0675C 8008F5BC 25CE6008 */  addiu $t6, %lo(D_80126008) # addiu $t6, $t6, 0x6008
/* B06760 8008F5C0 24580008 */  addiu $t8, $v0, 8
/* B06764 8008F5C4 AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B06768 8008F5C8 AC590000 */  sw    $t9, ($v0)
/* B0676C 8008F5CC 8FAB009C */  lw    $t3, 0x9c($sp)
/* B06770 8008F5D0 01690019 */  multu $t3, $t1
/* B06774 8008F5D4 00006812 */  mflo  $t5
/* B06778 8008F5D8 01AE1821 */  addu  $v1, $t5, $t6
/* B0677C 8008F5DC 906F0000 */  lbu   $t7, ($v1)
/* B06780 8008F5E0 906B0001 */  lbu   $t3, 1($v1)
/* B06784 8008F5E4 000FC600 */  sll   $t8, $t7, 0x18
/* B06788 8008F5E8 906F0002 */  lbu   $t7, 2($v1)
/* B0678C 8008F5EC 000B6C00 */  sll   $t5, $t3, 0x10
/* B06790 8008F5F0 030D7025 */  or    $t6, $t8, $t5
/* B06794 8008F5F4 000FCA00 */  sll   $t9, $t7, 8
/* B06798 8008F5F8 01D95825 */  or    $t3, $t6, $t9
/* B0679C 8008F5FC AC4B0004 */  sw    $t3, 4($v0)
/* B067A0 8008F600 8FA20098 */  lw    $v0, 0x98($sp)
/* B067A4 8008F604 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* B067A8 8008F608 8FAC00AC */  lw    $t4, 0xac($sp)
/* B067AC 8008F60C 8FAD00A8 */  lw    $t5, 0xa8($sp)
/* B067B0 8008F610 0002C040 */  sll   $t8, $v0, 1
/* B067B4 8008F614 AC380004 */  sw    $t8, %lo(D_80160004)($at)
/* B067B8 8008F618 AFA80078 */  sw    $t0, 0x78($sp)
/* B067BC 8008F61C 8FA70094 */  lw    $a3, 0x94($sp)
/* B067C0 8008F620 8FA60090 */  lw    $a2, 0x90($sp)
/* B067C4 8008F624 8FA5008C */  lw    $a1, 0x8c($sp)
/* B067C8 8008F628 8FA40088 */  lw    $a0, 0x88($sp)
/* B067CC 8008F62C AFA2001C */  sw    $v0, 0x1c($sp)
/* B067D0 8008F630 AFAF0018 */  sw    $t7, 0x18($sp)
/* B067D4 8008F634 AFAC0014 */  sw    $t4, 0x14($sp)
/* B067D8 8008F638 0C02841B */  jal   SkelAnime_LodDrawSV
/* B067DC 8008F63C AFAD0010 */   sw    $t5, 0x10($sp)
/* B067E0 8008F640 8FA200A8 */  lw    $v0, 0xa8($sp)
/* B067E4 8008F644 3C0E8009 */  lui   $t6, %hi(func_800902F0) # $t6, 0x8009
/* B067E8 8008F648 25CE02F0 */  addiu $t6, %lo(func_800902F0) # addiu $t6, $t6, 0x2f0
/* B067EC 8008F64C 8FA80078 */  lw    $t0, 0x78($sp)
/* B067F0 8008F650 104E007F */  beq   $v0, $t6, .L8008F850
/* B067F4 8008F654 24090003 */   li    $t1, 3
/* B067F8 8008F658 3C198009 */  lui   $t9, %hi(func_80090440) # $t9, 0x8009
/* B067FC 8008F65C 27390440 */  addiu $t9, %lo(func_80090440) # addiu $t9, $t9, 0x440
/* B06800 8008F660 1059007B */  beq   $v0, $t9, .L8008F850
/* B06804 8008F664 3C028016 */   lui   $v0, %hi(gSaveContext) # $v0, 0x8016
/* B06808 8008F668 2442E660 */  addiu $v0, %lo(gSaveContext) # addiu $v0, $v0, -0x19a0
/* B0680C 8008F66C 8C4B135C */  lw    $t3, 0x135c($v0)
/* B06810 8008F670 512B0078 */  beql  $t1, $t3, .L8008F854
/* B06814 8008F674 8FB80088 */   lw    $t8, 0x88($sp)
/* B06818 8008F678 8C580004 */  lw    $t8, 4($v0)
/* B0681C 8008F67C 3C0C8012 */  lui   $t4, %hi(gUpgradeMasks+8) # $t4, 0x8012
/* B06820 8008F680 3C0E8012 */  lui   $t6, %hi(gUpgradeShifts+2) # $t6, 0x8012
/* B06824 8008F684 17000066 */  bnez  $t8, .L8008F820
/* B06828 8008F688 00000000 */   nop
/* B0682C 8008F68C 8C4D00A0 */  lw    $t5, 0xa0($v0)
/* B06830 8008F690 8D8C71B8 */  lw    $t4, %lo(gUpgradeMasks+8)($t4)
/* B06834 8008F694 91CE71F6 */  lbu   $t6, %lo(gUpgradeShifts+2)($t6)
/* B06838 8008F698 3C0BE700 */  lui   $t3, 0xe700
/* B0683C 8008F69C 01AC7824 */  and   $t7, $t5, $t4
/* B06840 8008F6A0 01CF2807 */  srav  $a1, $t7, $t6
/* B06844 8008F6A4 28A10002 */  slti  $at, $a1, 2
/* B06848 8008F6A8 54200049 */  bnezl $at, .L8008F7D0
/* B0684C 8008F6AC 8FA600A0 */   lw    $a2, 0xa0($sp)
/* B06850 8008F6B0 00A90019 */  multu $a1, $t1
/* B06854 8008F6B4 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B06858 8008F6B8 3C0E8012 */  lui   $t6, %hi(D_80126014) # $t6, 0x8012
/* B0685C 8008F6BC 25CE6014 */  addiu $t6, %lo(D_80126014) # addiu $t6, $t6, 0x6014
/* B06860 8008F6C0 24590008 */  addiu $t9, $v0, 8
/* B06864 8008F6C4 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B06868 8008F6C8 AC4B0000 */  sw    $t3, ($v0)
/* B0686C 8008F6CC AC400004 */  sw    $zero, 4($v0)
/* B06870 8008F6D0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B06874 8008F6D4 3C0DFB00 */  lui   $t5, 0xfb00
/* B06878 8008F6D8 00006012 */  mflo  $t4
/* B0687C 8008F6DC 24580008 */  addiu $t8, $v0, 8
/* B06880 8008F6E0 AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B06884 8008F6E4 258FFFFA */  addiu $t7, $t4, -6
/* B06888 8008F6E8 01EE1821 */  addu  $v1, $t7, $t6
/* B0688C 8008F6EC AC4D0000 */  sw    $t5, ($v0)
/* B06890 8008F6F0 906B0000 */  lbu   $t3, ($v1)
/* B06894 8008F6F4 906C0001 */  lbu   $t4, 1($v1)
/* B06898 8008F6F8 3C05DE00 */  lui   $a1, 0xde00
/* B0689C 8008F6FC 000BC600 */  sll   $t8, $t3, 0x18
/* B068A0 8008F700 906B0002 */  lbu   $t3, 2($v1)
/* B068A4 8008F704 000C7C00 */  sll   $t7, $t4, 0x10
/* B068A8 8008F708 030F7025 */  or    $t6, $t8, $t7
/* B068AC 8008F70C 000B6A00 */  sll   $t5, $t3, 8
/* B068B0 8008F710 01CD6025 */  or    $t4, $t6, $t5
/* B068B4 8008F714 AC4C0004 */  sw    $t4, 4($v0)
/* B068B8 8008F718 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B068BC 8008F71C 3C0F0602 */  lui   $t7, %hi(D_06025218) # $t7, 0x602
/* B068C0 8008F720 25EF5218 */  addiu $t7, %lo(D_06025218) # addiu $t7, $t7, 0x5218
/* B068C4 8008F724 24580008 */  addiu $t8, $v0, 8
/* B068C8 8008F728 AD1802C0 */  sw    $t8, 0x2c0($t0)
/* B068CC 8008F72C AC450000 */  sw    $a1, ($v0)
/* B068D0 8008F730 AC4F0004 */  sw    $t7, 4($v0)
/* B068D4 8008F734 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B068D8 8008F738 3C0B0602 */  lui   $t3, %hi(D_06025598) # $t3, 0x602
/* B068DC 8008F73C 256B5598 */  addiu $t3, %lo(D_06025598) # addiu $t3, $t3, 0x5598
/* B068E0 8008F740 24590008 */  addiu $t9, $v0, 8
/* B068E4 8008F744 AD1902C0 */  sw    $t9, 0x2c0($t0)
/* B068E8 8008F748 AC450000 */  sw    $a1, ($v0)
/* B068EC 8008F74C AC4B0004 */  sw    $t3, 4($v0)
/* B068F0 8008F750 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B068F4 8008F754 3C0D8016 */  lui   $t5, %hi(D_80160014) # $t5, 0x8016
/* B068F8 8008F758 3C180602 */  lui   $t8, %hi(D_06025438) # $t8, 0x602
/* B068FC 8008F75C 244E0008 */  addiu $t6, $v0, 8
/* B06900 8008F760 AD0E02C0 */  sw    $t6, 0x2c0($t0)
/* B06904 8008F764 AC450000 */  sw    $a1, ($v0)
/* B06908 8008F768 8DAD0014 */  lw    $t5, %lo(D_80160014)($t5)
/* B0690C 8008F76C 27185438 */  addiu $t8, %lo(D_06025438) # addiu $t8, $t8, 0x5438
/* B06910 8008F770 3C0C0602 */  lui   $t4, %hi(D_060252D8) # $t4, 0x602
/* B06914 8008F774 15A00004 */  bnez  $t5, .L8008F788
/* B06918 8008F778 00401825 */   move  $v1, $v0
/* B0691C 8008F77C 258C52D8 */  addiu $t4, %lo(D_060252D8) # addiu $t4, $t4, 0x52d8
/* B06920 8008F780 10000002 */  b     .L8008F78C
/* B06924 8008F784 AC4C0004 */   sw    $t4, 4($v0)
.L8008F788:
/* B06928 8008F788 AC780004 */  sw    $t8, 4($v1)
.L8008F78C:
/* B0692C 8008F78C 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B06930 8008F790 3C198016 */  lui   $t9, %hi(D_80160018) # $t9, 0x8016
/* B06934 8008F794 24010008 */  li    $at, 8
/* B06938 8008F798 244F0008 */  addiu $t7, $v0, 8
/* B0693C 8008F79C AD0F02C0 */  sw    $t7, 0x2c0($t0)
/* B06940 8008F7A0 AC450000 */  sw    $a1, ($v0)
/* B06944 8008F7A4 8F390018 */  lw    $t9, %lo(D_80160018)($t9)
/* B06948 8008F7A8 3C0E0602 */  lui   $t6, %hi(D_060257B8) # $t6, 0x602
/* B0694C 8008F7AC 25CE57B8 */  addiu $t6, %lo(D_060257B8) # addiu $t6, $t6, 0x57b8
/* B06950 8008F7B0 17210005 */  bne   $t9, $at, .L8008F7C8
/* B06954 8008F7B4 00401825 */   move  $v1, $v0
/* B06958 8008F7B8 3C0B0602 */  lui   $t3, %hi(D_06025658) # $t3, 0x602
/* B0695C 8008F7BC 256B5658 */  addiu $t3, %lo(D_06025658) # addiu $t3, $t3, 0x5658
/* B06960 8008F7C0 10000002 */  b     .L8008F7CC
/* B06964 8008F7C4 AC4B0004 */   sw    $t3, 4($v0)
.L8008F7C8:
/* B06968 8008F7C8 AC6E0004 */  sw    $t6, 4($v1)
.L8008F7CC:
/* B0696C 8008F7CC 8FA600A0 */  lw    $a2, 0xa0($sp)
.L8008F7D0:
/* B06970 8008F7D0 3C05DE00 */  lui   $a1, 0xde00
/* B06974 8008F7D4 3C0F8012 */  lui   $t7, %hi(D_8012601C) # $t7, 0x8012
/* B06978 8008F7D8 10C0001D */  beqz  $a2, .L8008F850
/* B0697C 8008F7DC 000660C0 */   sll   $t4, $a2, 3
/* B06980 8008F7E0 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B06984 8008F7E4 2598FFF8 */  addiu $t8, $t4, -8
/* B06988 8008F7E8 25EF601C */  addiu $t7, %lo(D_8012601C) # addiu $t7, $t7, 0x601c
/* B0698C 8008F7EC 244D0008 */  addiu $t5, $v0, 8
/* B06990 8008F7F0 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B06994 8008F7F4 030F2021 */  addu  $a0, $t8, $t7
/* B06998 8008F7F8 AC450000 */  sw    $a1, ($v0)
/* B0699C 8008F7FC 8C990000 */  lw    $t9, ($a0)
/* B069A0 8008F800 AC590004 */  sw    $t9, 4($v0)
/* B069A4 8008F804 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B069A8 8008F808 244B0008 */  addiu $t3, $v0, 8
/* B069AC 8008F80C AD0B02C0 */  sw    $t3, 0x2c0($t0)
/* B069B0 8008F810 AC450000 */  sw    $a1, ($v0)
/* B069B4 8008F814 8C8E0004 */  lw    $t6, 4($a0)
/* B069B8 8008F818 1000000D */  b     .L8008F850
/* B069BC 8008F81C AC4E0004 */   sw    $t6, 4($v0)
.L8008F820:
/* B069C0 8008F820 0C023C0D */  jal   func_8008F034
/* B069C4 8008F824 AFA80078 */   sw    $t0, 0x78($sp)
/* B069C8 8008F828 18400009 */  blez  $v0, .L8008F850
/* B069CC 8008F82C 8FA80078 */   lw    $t0, 0x78($sp)
/* B069D0 8008F830 8D0202C0 */  lw    $v0, 0x2c0($t0)
/* B069D4 8008F834 3C0C0601 */  lui   $t4, %hi(D_06016118) # $t4, 0x601
/* B069D8 8008F838 258C6118 */  addiu $t4, %lo(D_06016118) # addiu $t4, $t4, 0x6118
/* B069DC 8008F83C 244D0008 */  addiu $t5, $v0, 8
/* B069E0 8008F840 AD0D02C0 */  sw    $t5, 0x2c0($t0)
/* B069E4 8008F844 3C05DE00 */  lui   $a1, 0xde00
/* B069E8 8008F848 AC450000 */  sw    $a1, ($v0)
/* B069EC 8008F84C AC4C0004 */  sw    $t4, 4($v0)
.L8008F850:
/* B069F0 8008F850 8FB80088 */  lw    $t8, 0x88($sp)
.L8008F854:
/* B069F4 8008F854 3C068014 */  lui   $a2, %hi(D_8013E784) # $a2, 0x8014
/* B069F8 8008F858 24C6E784 */  addiu $a2, %lo(D_8013E784) # addiu $a2, $a2, -0x187c
/* B069FC 8008F85C 27A40068 */  addiu $a0, $sp, 0x68
/* B06A00 8008F860 2407070B */  li    $a3, 1803
/* B06A04 8008F864 0C031AD5 */  jal   Graph_CloseDisps
/* B06A08 8008F868 8F050000 */   lw    $a1, ($t8)
/* B06A0C 8008F86C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B06A10 8008F870 27BD0088 */  addiu $sp, $sp, 0x88
/* B06A14 8008F874 03E00008 */  jr    $ra
/* B06A18 8008F878 00000000 */   nop

