const std = @import("std");
const elf = @import("../elf.zig");
const Alpha = @This();

pub const Arch = packed struct {
    pub const Flags = enum(u32) {
        alpha_32bit = elf.EF_ALPHA_32BIT,
        alpha_canrelax = elf.EF_ALPHA_CANRELAX,
        _,
    };
};

pub const SectionFlags = enum(u32) {
    gprel = elf.SHF_ALPHA_GPREL,
};

pub const SectionType = enum(u32) {
    debug = elf.SHT_ALPHA_DEBUG,
    reginfo = elf.SHT_ALPHA_REGINFO,
};

pub const Sto = enum(u8) {
    nopv = elf.STO_ALPHA_NOPV,
    std_gpload = elf.STO_ALPHA_STD_GPLOAD,
};

pub const Lituse = enum(u8) {
    alpha_addr = elf.LITUSE_ALPHA_ADDR,
    alpha_base = elf.LITUSE_ALPHA_BASE,
    alpha_bytoff = elf.LITUSE_ALPHA_BYTOFF,
    alpha_jsr = elf.LITUSE_ALPHA_JSR,
    alpha_tls_gd = elf.LITUSE_ALPHA_TLS_GD,
    alpha_tls_ldm = elf.LITUSE_ALPHA_TLS_LDM,
    _,
};

pub const Relocation = enum(u8) {
    braddr = elf.R_ALPHA_BRADDR,
    copy = elf.R_ALPHA_COPY,
    dtpmod64 = elf.R_ALPHA_DTPMOD64,
    dtprel16 = elf.R_ALPHA_DTPREL16,
    dtprel64 = elf.R_ALPHA_DTPREL64,
    dtprelhi = elf.R_ALPHA_DTPRELHI,
    dtprello = elf.R_ALPHA_DTPRELLO,
    glob_dat = elf.R_ALPHA_GLOB_DAT,
    gotdtprel = elf.R_ALPHA_GOTDTPREL,
    gottprel = elf.R_ALPHA_GOTTPREL,
    gpdisp = elf.R_ALPHA_GPDISP,
    gprel16 = elf.R_ALPHA_GPREL16,
    gprel32 = elf.R_ALPHA_GPREL32,
    gprelhigh = elf.R_ALPHA_GPRELHIGH,
    gprellow = elf.R_ALPHA_GPRELLOW,
    hint = elf.R_ALPHA_HINT,
    jmp_slot = elf.R_ALPHA_JMP_SLOT,
    literal = elf.R_ALPHA_LITERAL,
    lituse = elf.R_ALPHA_LITUSE,
    none = elf.R_ALPHA_NONE,
    num = elf.R_ALPHA_NUM,
    reflong = elf.R_ALPHA_REFLONG,
    refquad = elf.R_ALPHA_REFQUAD,
    relative = elf.R_ALPHA_RELATIVE,
    srel16 = elf.R_ALPHA_SREL16,
    srel32 = elf.R_ALPHA_SREL32,
    srel64 = elf.R_ALPHA_SREL64,
    tlsgd = elf.R_ALPHA_TLSGD,
    tls_gd_hi = elf.R_ALPHA_TLS_GD_HI,
    tls_ldm = elf.R_ALPHA_TLS_LDM,
    tprel16 = elf.R_ALPHA_TPREL16,
    tprel64 = elf.R_ALPHA_TPREL64,
    tprelhi = elf.R_ALPHA_TPRELHI,
    R_ALPHA_TPRELLO = elf.R_ALPHA_TPRELLO,
};
