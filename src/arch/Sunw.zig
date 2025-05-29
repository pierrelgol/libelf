const std = @import("std");
const elf = @import("../elf.zig");
const Sunw = @This();

pub const Section = struct {
    pub const Type = enum(u32) {
        comdat = elf.SHT_SUNW_COMDAT,
        move = elf.SHT_SUNW_move,
        syminfo = elf.SHT_SUNW_syminfo,
    };
};

pub const Program = struct {
    pub const Type = enum(u32) {
        sunwbss = elf.PT_SUNWBSS,
        sunwstack = elf.PT_SUNWSTACK,

        pub const Cpu = enum(u32) {
            hisunw = elf.PT_HISUNW,
            losunw = elf.PT_LOSUNW,
        };
    };
};
