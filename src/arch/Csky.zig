const std = @import("std");
const elf = @import("../elf.zig");
const Csky = @This();

pub const Arch = struct {
    pub const Flags = enum(u32) {
        abimask = elf.EF_CSKY_ABIMASK,
        abiv1 = elf.EF_CSKY_ABIV1,
        abiv2 = elf.EF_CSKY_ABIV2,
        other = elf.EF_CSKY_OTHER,
        processor = elf.EF_CSKY_PROCESSOR,
        _,
    };
};
pub const SectionType = enum(u32) {
    attributes = elf.SHT_CSKY_ATTRIBUTES,
};
