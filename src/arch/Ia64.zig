const std = @import("std");
const elf = @import("../elf.zig");
const Ia64 = @This();

pub const Arch = struct {
    pub const Flags = enum(u32) {
        abi64 = elf.EF_IA_64_ABI64,
        arch = elf.EF_IA_64_ARCH,
        maskos = elf.EF_IA_64_MASKOS,
        _,
    };
};

pub const Program = struct {
    pub const Flags = enum(u32) {
        norecov = elf.PF_IA_64_NORECOV,
        _,
    };

    pub const Type = enum(u32) {
        ia_64_archext = elf.PT_IA_64_ARCHEXT,
        ia_64_hp_hsl_anot = elf.PT_IA_64_HP_HSL_ANOT,
        ia_64_hp_opt_anot = elf.PT_IA_64_HP_OPT_ANOT,
        ia_64_hp_stack = elf.PT_IA_64_HP_STACK,
        ia_64_unwind = elf.PT_IA_64_UNWIND,
    };
};

pub const Section = struct {
    pub const Flags = enum(u32) {
        norecov = elf.SHF_IA_64_NORECOV,
        short = elf.SHF_IA_64_SHORT,
    };

    pub const Type = enum(u32) {
        ext = elf.SHT_IA_64_EXT,
        unwind = elf.SHT_IA_64_UNWIND,
    };
};

pub const Relocation = enum(u16) {
    copy = elf.R_IA64_COPY,
    dir32lsb = elf.R_IA64_DIR32LSB,
    dir32msb = elf.R_IA64_DIR32MSB,
    dir64lsb = elf.R_IA64_DIR64LSB,
    dir64msb = elf.R_IA64_DIR64MSB,
    dtpmod64lsb = elf.R_IA64_DTPMOD64LSB,
    dtpmod64msb = elf.R_IA64_DTPMOD64MSB,
    dtprel14 = elf.R_IA64_DTPREL14,
    dtprel22 = elf.R_IA64_DTPREL22,
    dtprel32lsb = elf.R_IA64_DTPREL32LSB,
    dtprel32msb = elf.R_IA64_DTPREL32MSB,
    dtprel64i = elf.R_IA64_DTPREL64I,
    dtprel64lsb = elf.R_IA64_DTPREL64LSB,
    dtprel64msb = elf.R_IA64_DTPREL64MSB,
    fptr32lsb = elf.R_IA64_FPTR32LSB,
    fptr32msb = elf.R_IA64_FPTR32MSB,
    fptr64i = elf.R_IA64_FPTR64I,
    fptr64lsb = elf.R_IA64_FPTR64LSB,
    fptr64msb = elf.R_IA64_FPTR64MSB,
    gprel22 = elf.R_IA64_GPREL22,
    gprel32lsb = elf.R_IA64_GPREL32LSB,
    gprel32msb = elf.R_IA64_GPREL32MSB,
    gprel64i = elf.R_IA64_GPREL64I,
    gprel64lsb = elf.R_IA64_GPREL64LSB,
    gprel64msb = elf.R_IA64_GPREL64MSB,
    imm14 = elf.R_IA64_IMM14,
    imm22 = elf.R_IA64_IMM22,
    imm64 = elf.R_IA64_IMM64,
    ipltlsb = elf.R_IA64_IPLTLSB,
    ipltmsb = elf.R_IA64_IPLTMSB,
    ldxmov = elf.R_IA64_LDXMOV,
    ltoff22 = elf.R_IA64_LTOFF22,
    ltoff22x = elf.R_IA64_LTOFF22X,
    ltoff64i = elf.R_IA64_LTOFF64I,
    ltoff_dtpmod22 = elf.R_IA64_LTOFF_DTPMOD22,
    ltoff_dtprel22 = elf.R_IA64_LTOFF_DTPREL22,
    ltoff_fptr22 = elf.R_IA64_LTOFF_FPTR22,
    ltoff_fptr32lsb = elf.R_IA64_LTOFF_FPTR32LSB,
    ltoff_fptr32msb = elf.R_IA64_LTOFF_FPTR32MSB,
    ltoff_fptr64i = elf.R_IA64_LTOFF_FPTR64I,
    ltoff_fptr64lsb = elf.R_IA64_LTOFF_FPTR64LSB,
    ltoff_fptr64msb = elf.R_IA64_LTOFF_FPTR64MSB,
    ltoff_tprel22 = elf.R_IA64_LTOFF_TPREL22,
    ltv32lsb = elf.R_IA64_LTV32LSB,
    ltv32msb = elf.R_IA64_LTV32MSB,
    ltv64lsb = elf.R_IA64_LTV64LSB,
    ltv64msb = elf.R_IA64_LTV64MSB,
    none = elf.R_IA64_NONE,
    pcrel21b = elf.R_IA64_PCREL21B,
    pcrel21bi = elf.R_IA64_PCREL21BI,
    pcrel21f = elf.R_IA64_PCREL21F,
    pcrel21m = elf.R_IA64_PCREL21M,
    pcrel22 = elf.R_IA64_PCREL22,
    pcrel32lsb = elf.R_IA64_PCREL32LSB,
    pcrel32msb = elf.R_IA64_PCREL32MSB,
    pcrel60b = elf.R_IA64_PCREL60B,
    pcrel64i = elf.R_IA64_PCREL64I,
    pcrel64lsb = elf.R_IA64_PCREL64LSB,
    pcrel64msb = elf.R_IA64_PCREL64MSB,
    pltoff22 = elf.R_IA64_PLTOFF22,
    pltoff64i = elf.R_IA64_PLTOFF64I,
    pltoff64lsb = elf.R_IA64_PLTOFF64LSB,
    pltoff64msb = elf.R_IA64_PLTOFF64MSB,
    rel32lsb = elf.R_IA64_REL32LSB,
    rel32msb = elf.R_IA64_REL32MSB,
    rel64lsb = elf.R_IA64_REL64LSB,
    rel64msb = elf.R_IA64_REL64MSB,
    secrel32lsb = elf.R_IA64_SECREL32LSB,
    secrel32msb = elf.R_IA64_SECREL32MSB,
    secrel64lsb = elf.R_IA64_SECREL64LSB,
    secrel64msb = elf.R_IA64_SECREL64MSB,
    segrel32lsb = elf.R_IA64_SEGREL32LSB,
    segrel32msb = elf.R_IA64_SEGREL32MSB,
    segrel64lsb = elf.R_IA64_SEGREL64LSB,
    segrel64msb = elf.R_IA64_SEGREL64MSB,
    sub = elf.R_IA64_SUB,
    tprel14 = elf.R_IA64_TPREL14,
    tprel22 = elf.R_IA64_TPREL22,
    tprel64i = elf.R_IA64_TPREL64I,
    tprel64lsb = elf.R_IA64_TPREL64LSB,
    tprel64msb = elf.R_IA64_TPREL64MSB,
};

pub const Dyn = struct {
    pub const Tags = enum(u32) {
        ia_64_num = elf.DT_IA_64_NUM,
        ia_64_plt_reserve = elf.DT_IA_64_PLT_RESERVE,
    };
};
