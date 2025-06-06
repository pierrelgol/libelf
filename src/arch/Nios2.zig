const std = @import("std");
const elf = @import("../elf.zig");
const Nios2 = @This();

pub const Relocation = enum(u16) {
    @"align" = 21,
    bfd_reloc_16 = 13,
    bfd_reloc_32 = 12,
    bfd_reloc_8 = 14,
    cache_opx = 6,
    call16 = 23,
    call26 = 4,
    call26_noat = 41,
    callr = 20,
    call_ha = 45,
    call_lo = 44,
    cjmp = 19,
    copy = 36,
    glob_dat = 37,
    gnu_vtentry = 17,
    gnu_vtinherit = 16,
    got16 = 22,
    gotoff = 40,
    gotoff_ha = 25,
    gotoff_lo = 24,
    got_ha = 43,
    got_lo = 42,
    gprel = 15,
    hi16 = 9,
    hiadj16 = 11,
    imm5 = 5,
    imm6 = 7,
    imm8 = 8,
    jump_slot = 38,
    lo16 = 10,
    none = 0,
    pcrel16 = 3,
    pcrel_ha = 27,
    pcrel_lo = 26,
    relative = 39,
    s16 = 1,
    tls_dtpmod = 33,
    tls_dtprel = 34,
    tls_gd16 = 28,
    tls_ie16 = 31,
    tls_ldm16 = 29,
    tls_ldo16 = 30,
    tls_le16 = 32,
    tls_tprel = 35,
    u16 = 2,
    ujmp = 18,
};

pub const Dyn = struct {
    pub const Tags = enum(u32) {
        nios2_gp = elf.DT_NIOS2_GP,
    };
};
