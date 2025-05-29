const std = @import("std");
const elf = @import("../elf.zig");
const Sgi = @This();

pub const Ll = enum(u8) {
    delay_load = elf.LL_DELAY_LOAD,
    delta = elf.LL_DELTA,
    exact_match = elf.LL_EXACT_MATCH,
    exports = elf.LL_EXPORTS,
    ignore_int_ver = elf.LL_IGNORE_INT_VER,
    none = elf.LL_NONE,
    require_minor = elf.LL_REQUIRE_MINOR,
    _,
};
