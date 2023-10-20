// Copyright 2021 ETH Zurich and University of Bologna.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

#include "uart.h"
#define SPL_SRC 0x1001000UL
#define SPL_SIZE 0xC000
#define SPL_DEST 0x70000000UL

// Boot modes.
enum boot_mode_t { JTAG, SPL_ROM };

int main() {
    //  TODO:Fix uart deadlock

    int * pointer;
    __asm__ volatile(
        "csrr a0, mhartid;"
        "la a1, device_tree;");
      //"ebreak;");

    int mbox_id = 10;

    while (1) {
            pointer=(int *)0x0C203004;
            while(*pointer != mbox_id)
              __asm__ volatile("wfi;");
            *pointer = mbox_id;
            pointer=(int *)0x10404024;
            *pointer=0x0;
            __asm__ volatile("li a0, 0x10404000;");
            __asm__ volatile("lwu t0, 0(a0);");
            __asm__ volatile("jr t0;");
    }
}

void handle_trap(void) {
}
