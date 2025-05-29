const std = @import("std");
const elf = @import("../elf.zig");
const Hp = @This();

pub const ProgramFlags = enum(u32) {
    code = elf.PF_HP_CODE,
    far_shared = elf.PF_HP_FAR_SHARED,
    lazyswap = elf.PF_HP_LAZYSWAP,
    modify = elf.PF_HP_MODIFY,
    near_shared = elf.PF_HP_NEAR_SHARED,
    page_size = elf.PF_HP_PAGE_SIZE,
    sbp = elf.PF_HP_SBP,
    _,
};
