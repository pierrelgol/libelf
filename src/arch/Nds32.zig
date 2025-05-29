const std = @import("std");
const elf = @import("../elf.zig");
const Nds32 = @This();

pub const Relocation = enum(u8) {
    @"32_rela" = elf.R_NDS32_32_RELA,
    copy = elf.R_NDS32_COPY,
    glob_dat = elf.R_NDS32_GLOB_DAT,
    jmp_slot = elf.R_NDS32_JMP_SLOT,
    none = elf.R_NDS32_NONE,
    relative = elf.R_NDS32_RELATIVE,
    tls_desc = elf.R_NDS32_TLS_DESC,
    tls_tpoff = elf.R_NDS32_TLS_TPOFF,
};
