const std = @import("std");
const elf = @import("../elf.zig");
const Cpu32 = @This();

pub const Arch = struct {
    pub const Flags = enum(u32) {
        cpu32 = elf.EF_CPU32,
        _,
    };
};
