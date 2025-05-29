const std = @import("std");
const elf = @import("../elf.zig");
const Parisc = @This();

pub const Arch = struct {
    pub const Flags = enum(u64) {
        PARISC_ARCH = elf.EF_PARISC_ARCH,
        PARISC_EXT = elf.EF_PARISC_EXT,
        PARISC_LAZYSWAP = elf.EF_PARISC_LAZYSWAP,
        PARISC_LSB = elf.EF_PARISC_LSB,
        PARISC_NO_KABP = elf.EF_PARISC_NO_KABP,
        PARISC_TRAPNIL = elf.EF_PARISC_TRAPNIL,
        PARISC_WIDE = elf.EF_PARISC_WIDE,
        _,
    };
};

pub const Section = struct {
    pub const Flags = enum(u32) {
        huge = elf.SHF_PARISC_HUGE,
        sbp = elf.SHF_PARISC_SBP,
        short = elf.SHF_PARISC_SHORT,
    };

    pub const Index = enum(u16) {
        ansi_common = elf.SHN_PARISC_ANSI_COMMON,
        huge_common = elf.SHN_PARISC_HUGE_COMMON,
    };

    pub const Type = enum(u32) {
        doc = elf.SHT_PARISC_DOC,
        ext = elf.SHT_PARISC_EXT,
        unwind = elf.SHT_PARISC_UNWIND,
    };
};

pub const Flags = enum(u32) {
    parisc_1_0 = elf.EFA_PARISC_1_0,
    parisc_1_1 = elf.EFA_PARISC_1_1,
    parisc_2_0 = elf.EFA_PARISC_2_0,
    _,
};

pub const Symbol = struct {
    pub const Type = enum(u32) {
        parisc_millicode = elf.STT_PARISC_MILLICODE,
    };
};

pub const Program = struct {
    pub const Type = enum(u32) {
        parisc_archext = elf.PT_PARISC_ARCHEXT,
        parisc_unwind = elf.PT_PARISC_UNWIND,
    };
    pub const Flags = enum(u32) {
        sbp = elf.PF_PARISC_SBP,
        _,
    };
};

pub const Relocation = enum(u16) {
    pub const hireserve = elf.R_PARISC_HIRESERVE;
    pub const loreserve = elf.R_PARISC_LORESERVE;

    copy = elf.R_PARISC_COPY,
    dir14dr = elf.R_PARISC_DIR14DR,
    dir14r = elf.R_PARISC_DIR14R,
    dir14wr = elf.R_PARISC_DIR14WR,
    dir16df = elf.R_PARISC_DIR16DF,
    dir16f = elf.R_PARISC_DIR16F,
    dir16wf = elf.R_PARISC_DIR16WF,
    dir17f = elf.R_PARISC_DIR17F,
    dir17r = elf.R_PARISC_DIR17R,
    dir21l = elf.R_PARISC_DIR21L,
    dir32 = elf.R_PARISC_DIR32,
    dir64 = elf.R_PARISC_DIR64,
    dprel14r = elf.R_PARISC_DPREL14R,
    dprel21l = elf.R_PARISC_DPREL21L,
    eplt = elf.R_PARISC_EPLT,
    fptr64 = elf.R_PARISC_FPTR64,
    gnu_vtentry = elf.R_PARISC_GNU_VTENTRY,
    gnu_vtinherit = elf.R_PARISC_GNU_VTINHERIT,
    gprel14dr = elf.R_PARISC_GPREL14DR,
    gprel14r = elf.R_PARISC_GPREL14R,
    gprel14wr = elf.R_PARISC_GPREL14WR,
    gprel16df = elf.R_PARISC_GPREL16DF,
    gprel16f = elf.R_PARISC_GPREL16F,
    gprel16wf = elf.R_PARISC_GPREL16WF,
    gprel21l = elf.R_PARISC_GPREL21L,
    gprel64 = elf.R_PARISC_GPREL64,
    iplt = elf.R_PARISC_IPLT,
    ltoff14dr = elf.R_PARISC_LTOFF14DR,
    ltoff14r = elf.R_PARISC_LTOFF14R,
    ltoff14wr = elf.R_PARISC_LTOFF14WR,
    ltoff16df = elf.R_PARISC_LTOFF16DF,
    ltoff16f = elf.R_PARISC_LTOFF16F,
    ltoff16wf = elf.R_PARISC_LTOFF16WF,
    ltoff21l = elf.R_PARISC_LTOFF21L,
    ltoff64 = elf.R_PARISC_LTOFF64,
    ltoff_fptr14dr = elf.R_PARISC_LTOFF_FPTR14DR,
    ltoff_fptr14r = elf.R_PARISC_LTOFF_FPTR14R,
    ltoff_fptr14wr = elf.R_PARISC_LTOFF_FPTR14WR,
    ltoff_fptr16df = elf.R_PARISC_LTOFF_FPTR16DF,
    ltoff_fptr16f = elf.R_PARISC_LTOFF_FPTR16F,
    ltoff_fptr16wf = elf.R_PARISC_LTOFF_FPTR16WF,
    ltoff_fptr21l = elf.R_PARISC_LTOFF_FPTR21L,
    ltoff_fptr32 = elf.R_PARISC_LTOFF_FPTR32,
    ltoff_fptr64 = elf.R_PARISC_LTOFF_FPTR64,
    ltoff_tp14dr = elf.R_PARISC_LTOFF_TP14DR,
    ltoff_tp14f = elf.R_PARISC_LTOFF_TP14F,
    ltoff_tp14r = elf.R_PARISC_LTOFF_TP14R,
    ltoff_tp14wr = elf.R_PARISC_LTOFF_TP14WR,
    ltoff_tp16df = elf.R_PARISC_LTOFF_TP16DF,
    ltoff_tp16f = elf.R_PARISC_LTOFF_TP16F,
    ltoff_tp16wf = elf.R_PARISC_LTOFF_TP16WF,
    ltoff_tp21l = elf.R_PARISC_LTOFF_TP21L,
    ltoff_tp64 = elf.R_PARISC_LTOFF_TP64,
    none = elf.R_PARISC_NONE,
    pcrel14dr = elf.R_PARISC_PCREL14DR,
    pcrel14r = elf.R_PARISC_PCREL14R,
    pcrel14wr = elf.R_PARISC_PCREL14WR,
    pcrel16df = elf.R_PARISC_PCREL16DF,
    pcrel16f = elf.R_PARISC_PCREL16F,
    pcrel16wf = elf.R_PARISC_PCREL16WF,
    pcrel17f = elf.R_PARISC_PCREL17F,
    pcrel17r = elf.R_PARISC_PCREL17R,
    pcrel21l = elf.R_PARISC_PCREL21L,
    pcrel22f = elf.R_PARISC_PCREL22F,
    pcrel32 = elf.R_PARISC_PCREL32,
    pcrel64 = elf.R_PARISC_PCREL64,
    plabel14r = elf.R_PARISC_PLABEL14R,
    plabel21l = elf.R_PARISC_PLABEL21L,
    plabel32 = elf.R_PARISC_PLABEL32,
    pltoff14dr = elf.R_PARISC_PLTOFF14DR,
    pltoff14r = elf.R_PARISC_PLTOFF14R,
    pltoff14wr = elf.R_PARISC_PLTOFF14WR,
    pltoff16df = elf.R_PARISC_PLTOFF16DF,
    pltoff16f = elf.R_PARISC_PLTOFF16F,
    pltoff16wf = elf.R_PARISC_PLTOFF16WF,
    pltoff21l = elf.R_PARISC_PLTOFF21L,
    secrel32 = elf.R_PARISC_SECREL32,
    secrel64 = elf.R_PARISC_SECREL64,
    segbase = elf.R_PARISC_SEGBASE,
    segrel32 = elf.R_PARISC_SEGREL32,
    segrel64 = elf.R_PARISC_SEGREL64,
    tprel14dr = elf.R_PARISC_TPREL14DR,
    tprel14r = elf.R_PARISC_TPREL14R,
    tprel14wr = elf.R_PARISC_TPREL14WR,
    tprel16df = elf.R_PARISC_TPREL16DF,
    tprel16f = elf.R_PARISC_TPREL16F,
    tprel16wf = elf.R_PARISC_TPREL16WF,
    tprel21l = elf.R_PARISC_TPREL21L,
    tprel32 = elf.R_PARISC_TPREL32,
    tprel64 = elf.R_PARISC_TPREL64,

    pub const Tls = enum(u32) {
        tls_dtpmod32 = elf.R_PARISC_TLS_DTPMOD32,
        tls_dtpmod64 = elf.R_PARISC_TLS_DTPMOD64,
        tls_dtpoff32 = elf.R_PARISC_TLS_DTPOFF32,
        tls_dtpoff64 = elf.R_PARISC_TLS_DTPOFF64,
        tls_gd14r = elf.R_PARISC_TLS_GD14R,
        tls_gd21l = elf.R_PARISC_TLS_GD21L,
        tls_gdcall = elf.R_PARISC_TLS_GDCALL,
        tls_ie14r = elf.R_PARISC_TLS_IE14R,
        tls_ie21l = elf.R_PARISC_TLS_IE21L,
        tls_ldm14r = elf.R_PARISC_TLS_LDM14R,
        tls_ldm21l = elf.R_PARISC_TLS_LDM21L,
        tls_ldmcall = elf.R_PARISC_TLS_LDMCALL,
        tls_ldo14r = elf.R_PARISC_TLS_LDO14R,
        tls_ldo21l = elf.R_PARISC_TLS_LDO21L,
        tls_le14r = elf.R_PARISC_TLS_LE14R,
        tls_le21l = elf.R_PARISC_TLS_LE21L,
        tls_tprel32 = elf.R_PARISC_TLS_TPREL32,
        tls_tprel64 = elf.R_PARISC_TLS_TPREL64,
    };
};
