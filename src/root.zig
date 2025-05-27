const std = @import("std");
const Elf = @import("Elf.zig");
const testing = std.testing;

comptime {
    testing.refAllDecls(Elf);
}
