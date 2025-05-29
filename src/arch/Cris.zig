const std = @import("std");
const elf = @import("../elf.zig");
const Cris = @This();

pub const Relocation = enum(u16) {
    @"16" = elf.R_CRIS_16,
    @"16_got" = elf.R_CRIS_16_GOT,
    @"16_gotplt" = elf.R_CRIS_16_GOTPLT,
    @"16_pcrel" = elf.R_CRIS_16_PCREL,
    @"32" = elf.R_CRIS_32,
    @"32_got" = elf.R_CRIS_32_GOT,
    @"32_gotplt" = elf.R_CRIS_32_GOTPLT,
    @"32_gotrel" = elf.R_CRIS_32_GOTREL,
    @"32_pcrel" = elf.R_CRIS_32_PCREL,
    @"32_plt_gotrel" = elf.R_CRIS_32_PLT_GOTREL,
    @"32_plt_pcrel" = elf.R_CRIS_32_PLT_PCREL,
    @"8" = elf.R_CRIS_8,
    @"8_pcrel" = elf.R_CRIS_8_PCREL,
    copy = elf.R_CRIS_COPY,
    glob_dat = elf.R_CRIS_GLOB_DAT,
    gnu_vtentry = elf.R_CRIS_GNU_VTENTRY,
    gnu_vtinherit = elf.R_CRIS_GNU_VTINHERIT,
    jump_slot = elf.R_CRIS_JUMP_SLOT,
    none = elf.R_CRIS_NONE,
    num = elf.R_CRIS_NUM,
    relative = elf.R_CRIS_RELATIVE,
};
