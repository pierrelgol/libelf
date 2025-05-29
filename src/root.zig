const std = @import("std");
pub const Elf = @import("Elf.zig");
const testing = std.testing;

comptime {
    @setEvalBranchQuota(200_00);
    testing.refAllDeclsRecursive(Elf);
}
