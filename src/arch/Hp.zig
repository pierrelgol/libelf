const std = @import("std");
const elf = @import("../elf.zig");
const Hp = @This();

pub const Program = struct {
    pub const Flags = enum(u32) {
        code = elf.PF_HP_CODE,
        far_shared = elf.PF_HP_FAR_SHARED,
        lazyswap = elf.PF_HP_LAZYSWAP,
        modify = elf.PF_HP_MODIFY,
        near_shared = elf.PF_HP_NEAR_SHARED,
        page_size = elf.PF_HP_PAGE_SIZE,
        sbp = elf.PF_HP_SBP,
        _,
    };

    pub const Type = enum(u32) {
        hp_core_comm = elf.PT_HP_CORE_COMM,
        hp_core_kernel = elf.PT_HP_CORE_KERNEL,
        hp_core_loadable = elf.PT_HP_CORE_LOADABLE,
        hp_core_mmf = elf.PT_HP_CORE_MMF,
        hp_core_none = elf.PT_HP_CORE_NONE,
        hp_core_proc = elf.PT_HP_CORE_PROC,
        hp_core_shm = elf.PT_HP_CORE_SHM,
        hp_core_stack = elf.PT_HP_CORE_STACK,
        hp_core_version = elf.PT_HP_CORE_VERSION,
        hp_fastbind = elf.PT_HP_FASTBIND,
        hp_hsl_annot = elf.PT_HP_HSL_ANNOT,
        hp_opt_annot = elf.PT_HP_OPT_ANNOT,
        hp_parallel = elf.PT_HP_PARALLEL,
        hp_stack = elf.PT_HP_STACK,
        hp_tls = elf.PT_HP_TLS,
    };
};

pub const Symbol = struct {
    pub const Type = enum(u32) {
        hp_opaque = elf.STT_HP_OPAQUE,
        hp_stub = elf.STT_HP_STUB,
    };
};
