const std = @import("std");
const elf = @import("../elf.zig");
const X86_64 = @This();

pub const Note = struct {
    pub const Type = enum(u16) {
        shstk = elf.NT_X86_SHSTK,
        xsave_layout = elf.NT_X86_XSAVE_LAYOUT,
        xstate = elf.NT_X86_XSTATE,
        _,
    };
};

pub const Relocation = enum(u8) {
    @"16" = elf.R_X86_64_16,
    @"32" = elf.R_X86_64_32,
    @"32s" = elf.R_X86_64_32S,
    @"64" = elf.R_X86_64_64,
    @"8" = elf.R_X86_64_8,
    copy = elf.R_X86_64_COPY,
    dtpmod64 = elf.R_X86_64_DTPMOD64,
    dtpoff32 = elf.R_X86_64_DTPOFF32,
    dtpoff64 = elf.R_X86_64_DTPOFF64,
    glob_dat = elf.R_X86_64_GLOB_DAT,
    got32 = elf.R_X86_64_GOT32,
    got64 = elf.R_X86_64_GOT64,
    gotoff64 = elf.R_X86_64_GOTOFF64,
    gotpc32 = elf.R_X86_64_GOTPC32,
    gotpc32_tlsdesc = elf.R_X86_64_GOTPC32_TLSDESC,
    gotpc64 = elf.R_X86_64_GOTPC64,
    gotpcrel = elf.R_X86_64_GOTPCREL,
    gotpcrel64 = elf.R_X86_64_GOTPCREL64,
    gotpcrelx = elf.R_X86_64_GOTPCRELX,
    gotplt64 = elf.R_X86_64_GOTPLT64,
    gottpoff = elf.R_X86_64_GOTTPOFF,
    irelative = elf.R_X86_64_IRELATIVE,
    jump_slot = elf.R_X86_64_JUMP_SLOT,
    none = elf.R_X86_64_NONE,
    num = elf.R_X86_64_NUM,
    pc16 = elf.R_X86_64_PC16,
    pc32 = elf.R_X86_64_PC32,
    pc64 = elf.R_X86_64_PC64,
    pc8 = elf.R_X86_64_PC8,
    plt32 = elf.R_X86_64_PLT32,
    pltoff64 = elf.R_X86_64_PLTOFF64,
    relative = elf.R_X86_64_RELATIVE,
    relative64 = elf.R_X86_64_RELATIVE64,
    rex_gotpcrelx = elf.R_X86_64_REX_GOTPCRELX,
    size32 = elf.R_X86_64_SIZE32,
    size64 = elf.R_X86_64_SIZE64,
    tlsdesc = elf.R_X86_64_TLSDESC,
    tlsdesc_call = elf.R_X86_64_TLSDESC_CALL,
    tlsgd = elf.R_X86_64_TLSGD,
    tlsld = elf.R_X86_64_TLSLD,
    tpoff32 = elf.R_X86_64_TPOFF32,
    tpoff64 = elf.R_X86_64_TPOFF64,
};

pub const Dyn = struct {
    pub const Tags = enum(u32) {
        x86_64_num = elf.DT_X86_64_NUM,
        x86_64_plt = elf.DT_X86_64_PLT,
        x86_64_pltent = elf.DT_X86_64_PLTENT,
        x86_64_pltsz = elf.DT_X86_64_PLTSZ,
    };
};
