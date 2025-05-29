const std = @import("std");
pub const Elf = @import("Elf.zig");
const testing = std.testing;

comptime {
    testing.refAllDecls(Elf);
}
