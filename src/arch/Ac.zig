const std = @import("std");
const elf = @import("../elf.zig");
const Ac = @This();

pub const Relocation = enum(u8) {
    sectoff_s9 = elf.R_AC_SECTOFF_S9,
    sectoff_s9_1 = elf.R_AC_SECTOFF_S9_1,
    sectoff_s9_2 = elf.R_AC_SECTOFF_S9_2,
    sectoff_u8 = elf.R_AC_SECTOFF_U8,
    sectoff_u8_1 = elf.R_AC_SECTOFF_U8_1,
    sectoff_u8_2 = elf.R_AC_SECTOFF_U8_2,
};
