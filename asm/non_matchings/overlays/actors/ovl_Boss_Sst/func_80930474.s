glabel func_80930474
/* 03EA4 80930474 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03EA8 80930478 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 03EAC 8093047C 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 03EB0 80930480 3C018093 */  lui     $at, %hi(D_8093746C)       ## $at = 80930000
/* 03EB4 80930484 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 03EB8 80930488 000FC080 */  sll     $t8, $t7,  2
/* 03EBC 8093048C 00380821 */  addu    $at, $at, $t8
/* 03EC0 80930490 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 03EC4 80930494 AC2E746C */  sw      $t6, %lo(D_8093746C)($at)
/* 03EC8 80930498 84F9001C */  lh      $t9, 0x001C($a3)           ## 0000001C
/* 03ECC 8093049C 3C058093 */  lui     $a1, %hi(D_80937884)       ## $a1 = 80930000
/* 03ED0 809304A0 AFA70018 */  sw      $a3, 0x0018($sp)
/* 03ED4 809304A4 00194080 */  sll     $t0, $t9,  2
/* 03ED8 809304A8 00A82821 */  addu    $a1, $a1, $t0
/* 03EDC 809304AC 8CA57884 */  lw      $a1, %lo(D_80937884)($a1)
/* 03EE0 809304B0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03EE4 809304B4 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 03EE8 809304B8 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 03EEC 809304BC 8FA40018 */  lw      $a0, 0x0018($sp)
/* 03EF0 809304C0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03EF4 809304C4 908903E4 */  lbu     $t1, 0x03E4($a0)           ## 000003E4
/* 03EF8 809304C8 908B03E5 */  lbu     $t3, 0x03E5($a0)           ## 000003E5
/* 03EFC 809304CC 8C8D0004 */  lw      $t5, 0x0004($a0)           ## 00000004
/* 03F00 809304D0 312AFFFC */  andi    $t2, $t1, 0xFFFC           ## $t2 = 00000000
/* 03F04 809304D4 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 03F08 809304D8 35AF0001 */  ori     $t7, $t5, 0x0001           ## $t7 = 00000001
/* 03F0C 809304DC A08A03E4 */  sb      $t2, 0x03E4($a0)           ## 000003E4
/* 03F10 809304E0 A08C03E5 */  sb      $t4, 0x03E5($a0)           ## 000003E5
/* 03F14 809304E4 0C24CF3B */  jal     func_80933CEC
/* 03F18 809304E8 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 03F1C 809304EC 8FA70018 */  lw      $a3, 0x0018($sp)
/* 03F20 809304F0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 03F24 809304F4 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 03F28 809304F8 3C0E8093 */  lui     $t6, %hi(func_8093051C)    ## $t6 = 80930000
/* 03F2C 809304FC 25CE051C */  addiu   $t6, $t6, %lo(func_8093051C) ## $t6 = 8093051C
/* 03F30 80930500 A4E00198 */  sh      $zero, 0x0198($a3)         ## 00000198
/* 03F34 80930504 ACEE0190 */  sw      $t6, 0x0190($a3)           ## 00000190
/* 03F38 80930508 E4E40068 */  swc1    $f4, 0x0068($a3)           ## 00000068
/* 03F3C 8093050C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 03F40 80930510 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03F44 80930514 03E00008 */  jr      $ra
/* 03F48 80930518 00000000 */  nop


