const std = @import("std");
const elf = @import("../elf.zig");
const Bpf = @This();

pub const Relocation = enum(u8) {
    @"64_32" = elf.R_BPF_64_32,
    @"64_64" = elf.R_BPF_64_64,
    none = elf.R_BPF_NONE,
};
