const std = @import("std");
const elf = @import("../elf.zig");
const Sunw = @This();

pub const SectionType = enum(u32) {
    comdat = elf.SHT_SUNW_COMDAT,
    move = elf.SHT_SUNW_move,
    syminfo = elf.SHT_SUNW_syminfo,
};
