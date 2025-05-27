const std = @import("std");
const elf = @This();

pub const Elf32_Ehdr = struct {
    e_ident: [EI_NIDENT]u8,

    e_type: Elf32_Half,

    e_machine: Elf32_Half,

    e_version: Elf32_Word,

    e_entry: Elf32_Addr,

    e_phoff: Elf32_Off,

    e_shoff: Elf32_Off,

    e_flags: Elf32_Word,

    e_ehsize: Elf32_Half,

    e_phentsize: Elf32_Half,

    e_phnum: Elf32_Half,

    e_shentsize: Elf32_Half,

    e_shnum: Elf32_Half,

    e_shstrndx: Elf32_Half,
};

pub const Elf64_Ehdr = struct {
    e_ident: [EI_NIDENT]u8,

    e_type: Elf64_Half,

    e_machine: Elf64_Half,

    e_version: Elf64_Word,

    e_entry: Elf64_Addr,

    e_phoff: Elf64_Off,

    e_shoff: Elf64_Off,

    e_flags: Elf64_Word,

    e_ehsize: Elf64_Half,

    e_phentsize: Elf64_Half,

    e_phnum: Elf64_Half,

    e_shentsize: Elf64_Half,

    e_shnum: Elf64_Half,

    e_shstrndx: Elf64_Half,
};

pub const Elf32_Shdr = struct {
    sh_name: Elf32_Word,
    sh_type: Elf32_Word,
    sh_flags: Elf32_Word,
    sh_addr: Elf32_Addr,
    sh_offset: Elf32_Off,
    sh_size: Elf32_Word,
    sh_link: Elf32_Word,
    sh_info: Elf32_Word,
    sh_addralign: Elf32_Word,
    sh_entsize: Elf32_Word,
};

pub const Elf64_Shdr = struct {
    sh_name: Elf64_Word,
    sh_type: Elf64_Word,
    sh_flags: Elf64_Xword,
    sh_addr: Elf64_Addr,
    sh_offset: Elf64_Off,
    sh_size: Elf64_Xword,
    sh_link: Elf64_Word,
    sh_info: Elf64_Word,
    sh_addralign: Elf64_Xword,
    sh_entsize: Elf64_Xword,
};

pub const Elf32_Lib = struct {
    l_name: Elf32_Word,
    l_time_stamp: Elf32_Word,
    l_checksum: Elf32_Word,
    l_version: Elf32_Word,
    l_flags: Elf32_Word,
};

pub const Elf64_Lib = struct {
    l_name: Elf64_Word,
    l_time_stamp: Elf64_Word,
    l_checksum: Elf64_Word,
    l_version: Elf64_Word,
    l_flags: Elf64_Word,
};

pub const Elf_MIPS_ABIFlags_v0 = struct {
    version: Elf32_Half,
    isa_level: u8,
    isa_rev: u8,
    gpr_size: u8,
    cpr1_size: u8,
    cpr2_size: u8,
    fp_abi: u8,
    isa_ext: Elf32_Word,
    ases: Elf32_Word,
    flags1: Elf32_Word,
    flags2: Elf32_Word,
};

pub const Elf32_Verdef = struct {
    vd_version: Elf32_Half,
    vd_flags: Elf32_Half,
    vd_ndx: Elf32_Half,
    vd_cnt: Elf32_Half,
    vd_hash: Elf32_Word,
    vd_aux: Elf32_Word,
    vd_next: Elf32_Word,
};

pub const Elf64_Verdef = struct {
    vd_version: Elf64_Half,
    vd_flags: Elf64_Half,
    vd_ndx: Elf64_Half,
    vd_cnt: Elf64_Half,
    vd_hash: Elf64_Word,
    vd_aux: Elf64_Word,
    vd_next: Elf64_Word,
};

pub const Elf32_Verdaux = struct {
    vda_name: Elf32_Word,
    vda_next: Elf32_Word,
};

pub const Elf64_Verdaux = struct {
    vda_name: Elf64_Word,
    vda_next: Elf64_Word,
};

pub const Elf32_Verneed = struct {
    vn_version: Elf32_Half,
    vn_cnt: Elf32_Half,
    vn_file: Elf32_Word,
    vn_aux: Elf32_Word,
    vn_next: Elf32_Word,
};

pub const Elf64_Verneed = struct {
    vn_version: Elf64_Half,
    vn_cnt: Elf64_Half,
    vn_file: Elf64_Word,
    vn_aux: Elf64_Word,
    vn_next: Elf64_Word,
};

pub const Elf32_Vernaux = struct {
    vna_hash: Elf32_Word,
    vna_flags: Elf32_Half,
    vna_other: Elf32_Half,
    vna_name: Elf32_Word,
    vna_next: Elf32_Word,
};

pub const Elf64_Vernaux = struct {
    vna_hash: Elf64_Word,
    vna_flags: Elf64_Half,
    vna_other: Elf64_Half,
    vna_name: Elf64_Word,
    vna_next: Elf64_Word,
};

pub const Elf32_Nhdr = struct {
    n_namesz: Elf32_Word,
    n_descsz: Elf32_Word,
    n_type: Elf32_Word,
};

pub const Elf64_Nhdr = struct {
    n_namesz: Elf64_Word,
    n_descsz: Elf64_Word,
    n_type: Elf64_Word,
};

pub const Elf32_Move = struct {
    m_value: Elf32_Xword,
    m_info: Elf32_Word,
    m_poffset: Elf32_Word,
    m_repeat: Elf32_Half,
    m_stride: Elf32_Half,
};

pub const Elf64_Move = struct {
    m_value: Elf64_Xword,
    m_info: Elf64_Xword,
    m_poffset: Elf64_Xword,
    m_repeat: Elf64_Half,
    m_stride: Elf64_Half,
};

pub const Elf32_RegInfo = struct {
    ri_gprmask: Elf32_Word,
    ri_cprmask: Elf32_Word[4],
    ri_gp_value: Elf32_Sword,
};

pub const Elf_Options = struct {
    kind: u8,
    size: u8,
    section: Elf32_Section,
    info: Elf32_Word,
};

pub const Elf_Options_Hw = struct {
    hwp_flags1: Elf32_Word,
    hwp_flags2: Elf32_Word,
};

pub const Elf32_Chdr = struct {
    ch_type: Elf32_Word,
    ch_size: Elf32_Word,
    ch_addralign: Elf32_Word,
};

pub const Elf64_Chdr = struct {
    ch_type: Elf64_Word,
    ch_reserved: Elf64_Word,
    ch_size: Elf64_Xword,
    ch_addralign: Elf64_Xword,
};

pub const Elf32_Sym = struct {
    st_name: Elf32_Word,
    st_value: Elf32_Addr,
    st_size: Elf32_Word,
    st_info: u8,
    st_other: u8,
    st_shndx: Elf32_Section,
};

pub const Elf64_Sym = struct {
    st_name: Elf64_Word,
    st_info: u8,
    st_other: u8,
    st_shndx: Elf64_Section,
    st_value: Elf64_Addr,
    st_size: Elf64_Xword,
};

pub const Elf32_Syminfo = struct {
    si_boundto: Elf32_Half,
    si_flags: Elf32_Half,
};

pub const Elf64_Syminfo = struct {
    si_boundto: Elf64_Half,
    si_flags: Elf64_Half,
};

pub const Elf32_Rel = struct {
    r_offset: Elf32_Addr,
    r_info: Elf32_Word,
};

pub const Elf64_Rel = struct {
    r_offset: Elf64_Addr,
    r_info: Elf64_Xword,
};

pub const Elf32_Rela = struct {
    r_offset: Elf32_Addr,
    r_info: Elf32_Word,
    r_addend: Elf32_Sword,
};

pub const Elf64_Rela = struct {
    r_offset: Elf64_Addr,
    r_info: Elf64_Xword,
    r_addend: Elf64_Sxword,
};

pub const Elf32_Phdr = struct {
    p_type: Elf32_Word,
    p_offset: Elf32_Off,
    p_vaddr: Elf32_Addr,
    p_paddr: Elf32_Addr,
    p_filesz: Elf32_Word,
    p_memsz: Elf32_Word,
    p_flags: Elf32_Word,
    p_align: Elf32_Word,
};

pub const Elf64_Phdr = struct {
    p_type: Elf64_Word,
    p_flags: Elf64_Word,
    p_offset: Elf64_Off,
    p_vaddr: Elf64_Addr,
    p_paddr: Elf64_Addr,
    p_filesz: Elf64_Xword,
    p_memsz: Elf64_Xword,
    p_align: Elf64_Xword,
};

pub const Elf32_dyn = extern struct {
    d_tag: i32,
    d_un: extern union {
        d_val: u32,
        d_ptr: u32,
    },
};

pub const Elf64_dyn = extern struct {
    d_tag: i64,
    d_un: extern union {
        d_val: u64,
        d_ptr: u64,
    },
};

pub const Elf32_auxv_t = extern struct {
    a_type: u32,
    a_un: extern union {
        a_val: u32,
    },
};

pub const Elf64_auxv_t = extern struct {
    a_type: u64,
    a_un: extern union {
        a_val: u64,
    },
};

pub const Elf32_gptab = extern union {
    gt_header: extern struct {
        gt_current_g_value: u32,
        gt_unused: u32,
    },
    gt_entry: extern struct {
        gt_g_value: u32,
        gt_bytes: u32,
    },
};

pub const GnuMipsABI = enum(u8) {
    Val_GNU_MIPS_ABI_FP_ANY = 0,
    Val_GNU_MIPS_ABI_FP_DOUBLE = 1,
    Val_GNU_MIPS_ABI_FP_SINGLE = 2,
    Val_GNU_MIPS_ABI_FP_SOFT = 3,
    Val_GNU_MIPS_ABI_FP_OLD_64 = 4,
    Val_GNU_MIPS_ABI_FP_XX = 5,
    Val_GNU_MIPS_ABI_FP_64 = 6,
    Val_GNU_MIPS_ABI_FP_64A = 7,
    Val_GNU_MIPS_ABI_FP_MAX = 7,
};

pub inline fn ppc64_local_entry_offset(other: u8) u32 {
    return (((1 << ((other & Symbol.Other._PPC64_LOCAL_MASK) >> Symbol.Other._PPC64_LOCAL_BIT)) >> 2) << 2);
}

pub inline fn EF_ARM_EABI_VERSION(flags: u32) u32 {
    return flags & EF_ARM_EABIMASK;
}

pub inline fn ELF32_M_SYM(info: u32) u32 {
    return info >> 8;
}

pub inline fn ELF32_M_SIZE(info: u32) u8 {
    return @intCast(info & 0xff);
}

pub inline fn ELF32_M_INFO(sym: u32, size: u8) u32 {
    return (sym << 8) + size;
}

pub inline fn ELF32_ST_BIND(val: u8) u8 {
    return val >> 4;
}

pub inline fn ELF32_ST_TYPE(val: u8) u8 {
    return val & 0x0f;
}

pub inline fn ELF32_ST_INFO(bind: u8, ty: u8) u8 {
    return (bind << 4) + (ty & 0x0f);
}

pub inline fn ELF32_ST_VISIBILITY(o: u8) u8 {
    return o & 0x03;
}

pub inline fn ELF32_R_SYM(val: u32) u32 {
    return val >> 8;
}

pub inline fn ELF32_R_TYPE(val: u32) u8 {
    return @intCast(val & 0xff);
}

pub inline fn ELF32_R_INFO(sym: u32, ty: u8) u32 {
    return (sym << 8) + ty;
}

pub inline fn ELF64_R_SYM(i: u64) u32 {
    return @intCast(i >> 32);
}

pub inline fn ELF64_R_TYPE(i: u64) u32 {
    return @intCast(i & 0xffffffff);
}

pub inline fn ELF64_R_INFO(sym: u64, ty: u32) u64 {
    return (sym << 32) + ty;
}

pub inline fn DT_VALTAGIDX(tag: u32) u32 {
    return DT_VALRNGHI - tag;
}

pub inline fn DT_ADDRTAGIDX(tag: u32) u32 {
    return DT_ADDRRNGHI - tag;
}

pub inline fn DT_VERSIONTAGIDX(tag: u32) u32 {
    return DT_VERNEEDNUM - tag;
}

pub inline fn DT_EXTRATAGIDX(tag: i32) u32 {
    return @bitCast((-(@as(i32, @bitCast(tag)) << 1 >> 1)) - 1);
}

pub const Elf32_Half = u16;
pub const Elf64_Half = u16;
pub const Elf32_Word = u32;
pub const Elf32_Sword = i32;
pub const Elf64_Word = u32;
pub const Elf64_Sword = i32;
pub const Elf32_Xword = u64;
pub const Elf32_Sxword = i64;
pub const Elf64_Xword = u64;
pub const Elf64_Sxword = i64;
pub const Elf32_Addr = u32;
pub const Elf64_Addr = u64;
pub const Elf32_Off = u32;
pub const Elf64_Off = u64;
pub const Elf32_Section = u16;
pub const Elf64_Section = u16;
pub const Elf32_Versym = Elf32_Half;
pub const Elf64_Versym = Elf64_Half;
pub const EI_NIDENT = 16;
pub const Elf32_relr = Elf32_Word;
pub const Elf64_relr = Elf64_Xword;

pub const AuxiliaryVectorTable = enum(u8) {
    _BASE = 7,
    _BASE_PLATFORM = 24,
    _CLKTCK = 17,
    _DCACHEBSIZE = 19,
    _EGID = 14,
    _ENTRY = 9,
    _EUID = 12,
    _EXECFD = 2,
    _EXECFN = 31,
    _FLAGS = 8,
    _FPUCW = 18,
    _GID = 13,
    _HWCAP = 16,
    _HWCAP2 = 26,
    _HWCAP3 = 29,
    _HWCAP4 = 30,
    _ICACHEBSIZE = 20,
    _IGNORE = 1,
    _IGNOREPPC = 22,
    _L1D_CACHEGEOMETRY = 43,
    _L1D_CACHESHAPE = 35,
    _L1D_CACHESIZE = 42,
    _L1I_CACHEGEOMETRY = 41,
    _L1I_CACHESHAPE = 34,
    _L1I_CACHESIZE = 40,
    _L2_CACHEGEOMETRY = 45,
    _L2_CACHESHAPE = 36,
    _L2_CACHESIZE = 44,
    _L3_CACHEGEOMETRY = 47,
    _L3_CACHESHAPE = 37,
    _L3_CACHESIZE = 46,
    _MINSIGSTKSZ = 51,
    _NOTELF = 10,
    _NULL = 0,
    _PAGESZ = 6,
    _PHDR = 3,
    _PHENT = 4,
    _PHNUM = 5,
    _PLATFORM = 15,
    _RANDOM = 25,
    _RSEQ_ALIGN = 28,
    _RSEQ_FEATURE_SIZE = 27,
    _SECURE = 23,
    _SYSINFO = 32,
    _SYSINFO_EHDR = 33,
    _UCACHEBSIZE = 21,
    _UID = 11,
};

pub const Dynamic = struct {
    pub const Flags1 = enum(u64) {
        _CONFALT = 0x00002000,
        _DIRECT = 0x00000100,
        _DISPRELDNE = 0x00008000,
        _DISPRELPND = 0x00010000,
        _EDITED = 0x00200000,
        _ENDFILTEE = 0x00004000,
        _GLOBAL = 0x00000002,
        _GLOBAUDIT = 0x01000000,
        _GROUP = 0x00000004,
        _IGNMULDEF = 0x00040000,
        _INITFIRST = 0x00000020,
        _INTERPOSE = 0x00000400,
        _KMOD = 0x10000000,
        _LOADFLTR = 0x00000010,
        _NOCOMMON = 0x40000000,
        _NODEFLIB = 0x00000800,
        _NODELETE = 0x00000008,
        _NODIRECT = 0x00020000,
        _NODUMP = 0x00001000,
        _NOHDR = 0x00100000,
        _NOKSYMS = 0x00080000,
        _NOOPEN = 0x00000040,
        _NORELOC = 0x00400000,
        _NOW = 0x00000001,
        _ORIGIN = 0x00000080,
        _PIE = 0x08000000,
        _SINGLETON = 0x02000000,
        _STUB = 0x04000000,
        _SYMINTPOSE = 0x00800000,
        _TRANS = 0x00000200,
        _WEAKFILTER = 0x20000000,
    };
    pub const Flags = enum(u64) {
        _BIND_NOW = 0x00000008,
        _ORIGIN = 0x00000001,
        _P1_GROUPPERM = 0x00000002,
        _P1_LAZYLOAD = 0x00000001,
        _STATIC_TLS = 0x00000010,
        _SYMBOLIC = 0x00000002,
        _TEXTREL = 0x00000004,
    };

    pub const TableFlags = enum(u64) {
        pub const DTF_1_CONFEXP = 0x00000002;
        pub const DTF_1_PARINIT = 0x00000001;
    };

    pub const Tags = enum(u64) {
        _AARCH64_BTI_PLT = (Dynamic.Tags._LOPROC + 1),
        _AARCH64_NUM = 6,
        _AARCH64_PAC_PLT = (Dynamic.Tags._LOPROC + 3),
        _AARCH64_VARIANT_PCS = (Dynamic.Tags._LOPROC + 5),
        _ADDRNUM = 11,
        _ADDRRNGHI = 0x6ffffeff,
        _ADDRRNGLO = 0x6ffffe00,
        _ALPHA_NUM = 1,
        _ALPHA_PLTRO = (Dynamic.Tags._LOPROC + 0),
        _AUDIT = 0x6ffffefc,
        _AUXILIARY = 0x7ffffffd,
        _BIND_NOW = 24,
        _CHECKSUM = 0x6ffffdf8,
        _CONFIG = 0x6ffffefa,
        _DEBUG = 21,
        _DEPAUDIT = 0x6ffffefb,
        _ENCODING = 32,
        _EXTRANUM = 3,
        _FEATURE_1 = 0x6ffffdfc,
        _FILTER = 0x7fffffff,
        _FINI = 13,
        _FINI_ARRAY = 26,
        _FINI_ARRAYSZ = 28,
        _FLAGS = 30,
        _FLAGS_1 = 0x6ffffffb,
        _GNU_CONFLICT = 0x6ffffef8,
        _GNU_CONFLICTSZ = 0x6ffffdf6,
        _GNU_HASH = 0x6ffffef5,
        _GNU_LIBLIST = 0x6ffffef9,
        _GNU_LIBLISTSZ = 0x6ffffdf7,
        _GNU_PRELINKED = 0x6ffffdf5,
        _HASH = 4,
        _HIOS = 0x6ffff000,
        _HIPROC = 0x7fffffff,
        _IA_64_NUM = 1,
        _IA_64_PLT_RESERVE = (Dynamic.Tags._LOPROC + 0),
        _INIT = 12,
        _INIT_ARRAY = 25,
        _INIT_ARRAYSZ = 27,
        _JMPREL = 23,
        _LOOS = 0x6000000d,
        _LOPROC = 0x70000000,
        _MIPS_AUX_DYNAMIC = 0x70000031,
        _MIPS_BASE_ADDRESS = 0x70000006,
        _MIPS_COMPACT_SIZE = 0x7000002f,
        _MIPS_CONFLICT = 0x70000008,
        _MIPS_CONFLICTNO = 0x7000000b,
        _MIPS_CXX_FLAGS = 0x70000022,
        _MIPS_DELTA_CLASS = 0x70000017,
        _MIPS_DELTA_CLASSSYM = 0x70000020,
        _MIPS_DELTA_CLASSSYM_NO = 0x70000021,
        _MIPS_DELTA_CLASS_NO = 0x70000018,
        _MIPS_DELTA_INSTANCE = 0x70000019,
        _MIPS_DELTA_INSTANCE_NO = 0x7000001a,
        _MIPS_DELTA_RELOC = 0x7000001b,
        _MIPS_DELTA_RELOC_NO = 0x7000001c,
        _MIPS_DELTA_SYM = 0x7000001d,
        _MIPS_DELTA_SYM_NO = 0x7000001e,
        _MIPS_DYNSTR_ALIGN = 0x7000002b,
        _MIPS_FLAGS = 0x70000005,
        _MIPS_GOTSYM = 0x70000013,
        _MIPS_GP_VALUE = 0x70000030,
        _MIPS_HIDDEN_GOTIDX = 0x70000027,
        _MIPS_HIPAGENO = 0x70000014,
        _MIPS_ICHECKSUM = 0x70000003,
        _MIPS_INTERFACE = 0x7000002a,
        _MIPS_INTERFACE_SIZE = 0x7000002c,
        _MIPS_IVERSION = 0x70000004,
        _MIPS_LIBLIST = 0x70000009,
        _MIPS_LIBLISTNO = 0x70000010,
        _MIPS_LOCALPAGE_GOTIDX = 0x70000025,
        _MIPS_LOCAL_GOTIDX = 0x70000026,
        _MIPS_LOCAL_GOTNO = 0x7000000a,
        _MIPS_MSYM = 0x70000007,
        _MIPS_NUM = 0x37,
        _MIPS_OPTIONS = 0x70000029,
        _MIPS_PERF_SUFFIX = 0x7000002e,
        _MIPS_PIXIE_INIT = 0x70000023,
        _MIPS_PLTGOT = 0x70000032,
        _MIPS_PROTECTED_GOTIDX = 0x70000028,
        _MIPS_RLD_MAP = 0x70000016,
        _MIPS_RLD_MAP_REL = 0x70000035,
        _MIPS_RLD_TEXT_RESOLVE_ADDR = 0x7000002d,
        _MIPS_RLD_VERSION = 0x70000001,
        _MIPS_RWPLT = 0x70000034,
        _MIPS_SYMBOL_LIB = 0x70000024,
        _MIPS_SYMTABNO = 0x70000011,
        _MIPS_TIME_STAMP = 0x70000002,
        _MIPS_UNREFEXTNO = 0x70000012,
        _MIPS_XHASH = 0x70000036,
        _MOVEENT = 0x6ffffdfa,
        _MOVESZ = 0x6ffffdfb,
        _MOVETAB = 0x6ffffefe,
        _NEEDED = 1,
        _NIOS2_GP = 0x70000002,
        _NULL = 0,
        _NUM = 38,
        _PLTGOT = 3,
        _PLTPAD = 0x6ffffefd,
        _PLTPADSZ = 0x6ffffdf9,
        _PLTREL = 20,
        _PLTRELSZ = 2,
        _POSFLAG_1 = 0x6ffffdfd,
        _PPC64_GLINK = (Dynamic.Tags._LOPROC + 0),
        _PPC64_NUM = 4,
        _PPC64_OPD = (Dynamic.Tags._LOPROC + 1),
        _PPC64_OPDSZ = (Dynamic.Tags._LOPROC + 2),
        _PPC64_OPT = (Dynamic.Tags._LOPROC + 3),
        _PPC_GOT = (Dynamic.Tags._LOPROC + 0),
        _PPC_NUM = 2,
        _PPC_OPT = (Dynamic.Tags._LOPROC + 1),
        _PREINIT_ARRAY = 32,
        _PREINIT_ARRAYSZ = 33,
        _PROCNUM = Dynamic.Tags._MIPS_NUM,
        _REL = 17,
        _RELA = 7,
        _RELACOUNT = 0x6ffffff9,
        _RELAENT = 9,
        _RELASZ = 8,
        _RELCOUNT = 0x6ffffffa,
        _RELENT = 19,
        _RELR = 36,
        _RELRENT = 37,
        _RELRSZ = 35,
        _RELSZ = 18,
        _RISCV_VARIANT_CC = (Dynamic.Tags._LOPROC + 1),
        _RPATH = 15,
        _RUNPATH = 29,
        _SONAME = 14,
        _SPARC_NUM = 2,
        _SPARC_REGISTER = 0x70000001,
        _STRSZ = 10,
        _STRTAB = 5,
        _SYMBOLIC = 16,
        _SYMENT = 11,
        _SYMINENT = 0x6ffffdff,
        _SYMINFO = 0x6ffffeff,
        _SYMINSZ = 0x6ffffdfe,
        _SYMTAB = 6,
        _SYMTAB_SHNDX = 34,
        _TEXTREL = 22,
        _TLSDESC_GOT = 0x6ffffef7,
        _TLSDESC_PLT = 0x6ffffef6,
        _VALNUM = 12,
        _VALRNGHI = 0x6ffffdff,
        _VALRNGLO = 0x6ffffd00,
        _VERDEF = 0x6ffffffc,
        _VERDEFNUM = 0x6ffffffd,
        _VERNEED = 0x6ffffffe,
        _VERNEEDNUM = 0x6fffffff,
        _VERSIONTAGNUM = 16,
        _VERSYM = 0x6ffffff0,
        _X86_64_NUM = 4,
        _X86_64_PLT = (Dynamic.Tags._LOPROC + 0),
        _X86_64_PLTENT = (Dynamic.Tags._LOPROC + 3),
        _X86_64_PLTSZ = (Dynamic.Tags._LOPROC + 1),
    };
};

pub const EFA_PARISC_1_0 = 0x020b;
pub const EFA_PARISC_1_1 = 0x0210;
pub const EFA_PARISC_2_0 = 0x0214;

pub const EF_ALPHA_32BIT = 1;
pub const EF_ALPHA_CANRELAX = 2;
pub const EF_ARC_ALL_MSK = (EF_ARC_MACH_MSK | EF_ARC_OSABI_MSK);
pub const EF_ARC_MACH_MSK = 0x000000ff;
pub const EF_ARC_OSABI_MSK = 0x00000f00;
pub const EF_ARM_ABI_FLOAT_HARD = 0x400;
pub const EF_ARM_ABI_FLOAT_SOFT = 0x200;
pub const EF_ARM_ALIGN8 = 0x40;
pub const EF_ARM_APCS_26 = 0x08;
pub const EF_ARM_APCS_FLOAT = 0x10;
pub const EF_ARM_BE8 = 0x00800000;
pub const EF_ARM_DYNSYMSUSESEGIDX = 0x08;
pub const EF_ARM_EABIMASK: u32 = 0xff000000;
pub const EF_ARM_EABI_UNKNOWN = 0x00000000;
pub const EF_ARM_EABI_VER1 = 0x01000000;
pub const EF_ARM_EABI_VER2 = 0x02000000;
pub const EF_ARM_EABI_VER3 = 0x03000000;
pub const EF_ARM_EABI_VER4 = 0x04000000;
pub const EF_ARM_EABI_VER5 = 0x05000000;
pub const EF_ARM_HASENTRY = 0x02;
pub const EF_ARM_INTERWORK = 0x04;
pub const EF_ARM_LE8 = 0x00400000;
pub const EF_ARM_MAPSYMSFIRST = 0x10;
pub const EF_ARM_MAVERICK_FLOAT = 0x800;
pub const EF_ARM_NEW_ABI = 0x80;
pub const EF_ARM_OLD_ABI = 0x100;
pub const EF_ARM_PIC = 0x20;
pub const EF_ARM_RELEXEC = 0x01;
pub const EF_ARM_SOFT_FLOAT = 0x200;
pub const EF_ARM_SYMSARESORTED = 0x04;
pub const EF_ARM_VFP_FLOAT = 0x400;
pub const EF_CPU32 = 0x00810000;
pub const EF_CSKY_ABIMASK = 0xF0000000;
pub const EF_CSKY_ABIV1 = 0x10000000;
pub const EF_CSKY_ABIV2 = 0x20000000;
pub const EF_CSKY_OTHER = 0x0FFF0000;
pub const EF_CSKY_PROCESSOR = 0x0000FFFF;
pub const EF_IA_64_ABI64 = 0x00000010;
pub const EF_IA_64_ARCH = 0xff000000;
pub const EF_IA_64_MASKOS = 0x0000000f;
pub const EF_LARCH_ABI_DOUBLE_FLOAT = 0x03;
pub const EF_LARCH_ABI_MODIFIER_MASK = 0x07;
pub const EF_LARCH_ABI_SINGLE_FLOAT = 0x02;
pub const EF_LARCH_ABI_SOFT_FLOAT = 0x01;
pub const EF_LARCH_OBJABI_V1 = 0x40;
pub const EF_MIPS_32BITMODE = 0x00000100;
pub const EF_MIPS_ABI = 0x0000F000;
pub const EF_MIPS_ABI2 = 32;
pub const EF_MIPS_ABI_EABI32 = 0x00003000;
pub const EF_MIPS_ABI_EABI64 = 0x00004000;
pub const EF_MIPS_ABI_O32 = 0x00001000;
pub const EF_MIPS_ABI_O64 = 0x00002000;
pub const EF_MIPS_ABI_ON32 = 64;
pub const EF_MIPS_ARCH = 0xf0000000;
pub const EF_MIPS_ARCH_1 = 0x00000000;
pub const EF_MIPS_ARCH_2 = 0x10000000;
pub const EF_MIPS_ARCH_3 = 0x20000000;
pub const EF_MIPS_ARCH_32 = 0x50000000;
pub const EF_MIPS_ARCH_32R2 = 0x70000000;
pub const EF_MIPS_ARCH_32R6 = 0x90000000;
pub const EF_MIPS_ARCH_4 = 0x30000000;
pub const EF_MIPS_ARCH_5 = 0x40000000;
pub const EF_MIPS_ARCH_64 = 0x60000000;
pub const EF_MIPS_ARCH_64R2 = 0x80000000;
pub const EF_MIPS_ARCH_64R6 = 0xa0000000;
pub const EF_MIPS_ARCH_ASE = 0x0f000000;
pub const EF_MIPS_ARCH_ASE_M16 = 0x04000000;
pub const EF_MIPS_ARCH_ASE_MDMX = 0x08000000;
pub const EF_MIPS_ARCH_ASE_MICROMIPS = 0x02000000;
pub const EF_MIPS_CPIC = 4;
pub const EF_MIPS_FP64 = 512;
pub const EF_MIPS_MACH = 0x00FF0000;
pub const EF_MIPS_MACH_3900 = 0x00810000;
pub const EF_MIPS_MACH_4010 = 0x00820000;
pub const EF_MIPS_MACH_4100 = 0x00830000;
pub const EF_MIPS_MACH_4111 = 0x00880000;
pub const EF_MIPS_MACH_4120 = 0x00870000;
pub const EF_MIPS_MACH_4650 = 0x00850000;
pub const EF_MIPS_MACH_5400 = 0x00910000;
pub const EF_MIPS_MACH_5500 = 0x00980000;
pub const EF_MIPS_MACH_5900 = 0x00920000;
pub const EF_MIPS_MACH_9000 = 0x00990000;
pub const EF_MIPS_MACH_ALLEGREX = 0x00840000;
pub const EF_MIPS_MACH_GS264E = 0x00A40000;
pub const EF_MIPS_MACH_GS464 = 0x00A20000;
pub const EF_MIPS_MACH_GS464E = 0x00A30000;
pub const EF_MIPS_MACH_IAMR2 = 0x00930000;
pub const EF_MIPS_MACH_LS2E = 0x00A00000;
pub const EF_MIPS_MACH_LS2F = 0x00A10000;
pub const EF_MIPS_MACH_OCTEON = 0x008b0000;
pub const EF_MIPS_MACH_OCTEON2 = 0x008d0000;
pub const EF_MIPS_MACH_OCTEON3 = 0x008e0000;
pub const EF_MIPS_MACH_SB1 = 0x008a0000;
pub const EF_MIPS_MACH_XLR = 0x008c0000;
pub const EF_MIPS_NAN2008 = 1024;
pub const EF_MIPS_NOREORDER = 1;
pub const EF_MIPS_OPTIONS_FIRST = 0x00000080;
pub const EF_MIPS_PIC = 2;
pub const EF_MIPS_UCODE = 16;
pub const EF_MIPS_XGOT = 8;
pub const EF_PARISC_ARCH = 0x0000ffff;
pub const EF_PARISC_EXT = 0x00020000;
pub const EF_PARISC_LAZYSWAP = 0x00400000;
pub const EF_PARISC_LSB = 0x00040000;
pub const EF_PARISC_NO_KABP = 0x00100000;
pub const EF_PARISC_TRAPNIL = 0x00010000;
pub const EF_PARISC_WIDE = 0x00080000;
pub const EF_PPC64_ABI = 3;
pub const EF_PPC_EMB = 0x80000000;
pub const EF_PPC_RELOCATABLE = 0x00010000;
pub const EF_PPC_RELOCATABLE_LIB = 0x00008000;
pub const EF_RISCV_FLOAT_ABI = 0x0006;
pub const EF_RISCV_FLOAT_ABI_DOUBLE = 0x0004;
pub const EF_RISCV_FLOAT_ABI_QUAD = 0x0006;
pub const EF_RISCV_FLOAT_ABI_SINGLE = 0x0002;
pub const EF_RISCV_FLOAT_ABI_SOFT = 0x0000;
pub const EF_RISCV_RVC = 0x0001;
pub const EF_RISCV_RVE = 0x0008;
pub const EF_RISCV_TSO = 0x0010;
pub const EF_S390_HIGH_GPRS = 0x00000001;
pub const EF_SH1 = 0x1;
pub const EF_SH2 = 0x2;
pub const EF_SH2A = 0xd;
pub const EF_SH2A_NOFPU = 0x13;
pub const EF_SH2A_SH3E = 0x18;
pub const EF_SH2A_SH3_NOFPU = 0x16;
pub const EF_SH2A_SH4 = 0x17;
pub const EF_SH2A_SH4_NOFPU = 0x15;
pub const EF_SH2E = 0xb;
pub const EF_SH3 = 0x3;
pub const EF_SH3E = 0x8;
pub const EF_SH3_DSP = 0x5;
pub const EF_SH3_NOMMU = 0x14;
pub const EF_SH4 = 0x9;
pub const EF_SH4A = 0xc;
pub const EF_SH4AL_DSP = 0x6;
pub const EF_SH4A_NOFPU = 0x11;
pub const EF_SH4_NOFPU = 0x10;
pub const EF_SH4_NOMMU_NOFPU = 0x12;
pub const EF_SH_DSP = 0x4;
pub const EF_SH_MACH_MASK = 0x1f;
pub const EF_SH_UNKNOWN = 0x0;
pub const EF_SPARCV9_MM = 3;
pub const EF_SPARCV9_PSO = 1;
pub const EF_SPARCV9_RMO = 2;
pub const EF_SPARCV9_TSO = 0;
pub const EF_SPARC_32PLUS = 0x000100;
pub const EF_SPARC_EXT_MASK = 0xFFFF00;
pub const EF_SPARC_HAL_R1 = 0x000400;
pub const EF_SPARC_LEDATA = 0x800000;
pub const EF_SPARC_SUN_US1 = 0x000200;
pub const EF_SPARC_SUN_US3 = 0x000800;

pub const EI_ABIVERSION = 8;
pub const EI_CLASS = 4;
pub const EI_DATA = 5;
pub const EI_MAG0 = 0;
pub const EI_MAG1 = 1;
pub const EI_MAG2 = 2;
pub const EI_MAG3 = 3;
pub const EI_OSABI = 7;
pub const EI_PAD = 9;
pub const EI_VERSION = 6;

pub const ELF64_M_INFO = ELF32_M_INFO;
pub const ELF64_M_SIZE = ELF32_M_SIZE;
pub const ELF64_M_SYM = ELF32_M_SYM;
pub const ELF64_ST_BIND = ELF32_ST_BIND;
pub const ELF64_ST_INFO = ELF32_ST_INFO;
pub const ELF64_ST_TYPE = ELF32_ST_TYPE;
pub const ELF64_ST_VISIBILITY = ELF32_ST_VISIBILITY;

pub const ELFCLASS32 = 1;
pub const ELFCLASS64 = 2;
pub const ELFCLASSNONE = 0;
pub const ELFCLASSNUM = 3;

pub const ELFCOMPRESS_HIOS = 0x6fffffff;
pub const ELFCOMPRESS_HIPROC = 0x7fffffff;
pub const ELFCOMPRESS_LOOS = 0x60000000;
pub const ELFCOMPRESS_LOPROC = 0x70000000;
pub const ELFCOMPRESS_ZLIB = 1;
pub const ELFCOMPRESS_ZSTD = 2;

pub const ELFDATA2LSB = 1;
pub const ELFDATA2MSB = 2;
pub const ELFDATANONE = 0;
pub const ELFDATANUM = 3;

pub const ELFMAG = "177ELF";
pub const ELFMAG0 = 0x7f;
pub const ELFMAG1 = 'E';
pub const ELFMAG2 = 'L';
pub const ELFMAG3 = 'F';

pub const ELFOSABI_AIX = 7;
pub const ELFOSABI_ARM = 97;
pub const ELFOSABI_ARM_AEABI = 64;
pub const ELFOSABI_FREEBSD = 9;
pub const ELFOSABI_GNU = 3;
pub const ELFOSABI_HPUX = 1;
pub const ELFOSABI_IRIX = 8;
pub const ELFOSABI_LINUX = ELFOSABI_GNU;
pub const ELFOSABI_MODESTO = 11;
pub const ELFOSABI_NETBSD = 2;
pub const ELFOSABI_NONE = 0;
pub const ELFOSABI_OPENBSD = 12;
pub const ELFOSABI_SOLARIS = 6;
pub const ELFOSABI_STANDALONE = 255;
pub const ELFOSABI_SYSV = 0;
pub const ELFOSABI_TRU64 = 10;

pub const ELF_NOTE_ABI = NT_GNU_ABI_TAG;
pub const ELF_NOTE_FDO = "FDO";
pub const ELF_NOTE_GNU = "GNU";
pub const ELF_NOTE_OS_FREEBSD = 3;
pub const ELF_NOTE_OS_GNU = 1;
pub const ELF_NOTE_OS_LINUX = 0;
pub const ELF_NOTE_OS_SOLARIS2 = 2;
pub const ELF_NOTE_PAGESIZE_HINT = 1;
pub const ELF_NOTE_SOLARIS = "SUNW Solaris";

pub const EM_386 = 3;
pub const EM_56800EX = 200;
pub const EM_68HC05 = 72;
pub const EM_68HC08 = 71;
pub const EM_68HC11 = 70;
pub const EM_68HC12 = 53;
pub const EM_68HC16 = 69;
pub const EM_68K = 4;
pub const EM_78KOR = 199;
pub const EM_8051 = 165;
pub const EM_860 = 7;
pub const EM_88K = 5;
pub const EM_960 = 19;
pub const EM_AARCH64 = 183;
pub const EM_ALPHA = 0x9026;
pub const EM_ALTERA_NIOS2 = 113;
pub const EM_AMDGPU = 224;
pub const EM_ARC = 45;
pub const EM_ARCA = 109;
pub const EM_ARCV2 = 195;
pub const EM_ARC_A5 = EM_ARC_COMPACT;
pub const EM_ARC_COMPACT = 93;
pub const EM_ARM = 40;
pub const EM_AVR = 83;
pub const EM_AVR32 = 185;
pub const EM_BA1 = 201;
pub const EM_BA2 = 202;
pub const EM_BLACKFIN = 106;
pub const EM_BPF = 247;
pub const EM_C166 = 116;
pub const EM_CDP = 215;
pub const EM_CE = 119;
pub const EM_CLOUDSHIELD = 192;
pub const EM_COGE = 216;
pub const EM_COLDFIRE = 52;
pub const EM_COOL = 217;
pub const EM_COREA_1ST = 193;
pub const EM_COREA_2ND = 194;
pub const EM_CR = 103;
pub const EM_CR16 = 177;
pub const EM_CRAYNV2 = 172;
pub const EM_CRIS = 76;
pub const EM_CRX = 114;
pub const EM_CSKY = 252;
pub const EM_CSR_KALIMBA = 219;
pub const EM_CUDA = 190;
pub const EM_CYPRESS_M8C = 161;
pub const EM_D10V = 85;
pub const EM_D30V = 86;
pub const EM_DSP24 = 136;
pub const EM_DSPIC30F = 118;
pub const EM_DXP = 112;
pub const EM_ECOG16 = 176;
pub const EM_ECOG1X = 168;
pub const EM_ECOG2 = 134;
pub const EM_EMX16 = 212;
pub const EM_EMX8 = 213;
pub const EM_ETPU = 178;
pub const EM_EXCESS = 111;
pub const EM_F2MC16 = 104;
pub const EM_FAKE_ALPHA = 41;
pub const EM_FIREPATH = 78;
pub const EM_FR20 = 37;
pub const EM_FR30 = 84;
pub const EM_FT32 = 222;
pub const EM_FX66 = 66;
pub const EM_H8S = 48;
pub const EM_H8_300 = 46;
pub const EM_H8_300H = 47;
pub const EM_H8_500 = 49;
pub const EM_HUANY = 81;
pub const EM_IAMCU = 6;
pub const EM_IA_64 = 50;
pub const EM_INTELGT = 205;
pub const EM_IP2K = 101;
pub const EM_JAVELIN = 77;
pub const EM_K10M = 181;
pub const EM_KM32 = 210;
pub const EM_KMX32 = 211;
pub const EM_KVARC = 214;
pub const EM_L10M = 180;
pub const EM_LATTICEMICO32 = 138;
pub const EM_LOONGARCH = 258;
pub const EM_M16C = 117;
pub const EM_M32 = 1;
pub const EM_M32C = 120;
pub const EM_M32R = 88;
pub const EM_MANIK = 171;
pub const EM_MAX = 102;
pub const EM_MAXQ30 = 169;
pub const EM_MCHP_PIC = 204;
pub const EM_MCST_ELBRUS = 175;
pub const EM_ME16 = 59;
pub const EM_METAG = 174;
pub const EM_MICROBLAZE = 189;
pub const EM_MIPS = 8;
pub const EM_MIPS_RS3_LE = 10;
pub const EM_MIPS_X = 51;
pub const EM_MMA = 54;
pub const EM_MMDSP_PLUS = 160;
pub const EM_MMIX = 80;
pub const EM_MN10200 = 90;
pub const EM_MN10300 = 89;
pub const EM_MOXIE = 223;
pub const EM_MSP430 = 105;
pub const EM_NCPU = 56;
pub const EM_NDR1 = 57;
pub const EM_NDS32 = 167;
pub const EM_NONE = 0;
pub const EM_NORC = 218;
pub const EM_NS32K = 97;
pub const EM_NUM = 259;
pub const EM_OPEN8 = 196;
pub const EM_OPENRISC = 92;
pub const EM_PARISC = 15;
pub const EM_PCP = 55;
pub const EM_PDP10 = 64;
pub const EM_PDP11 = 65;
pub const EM_PDSP = 63;
pub const EM_PJ = 91;
pub const EM_PPC = 20;
pub const EM_PPC64 = 21;
pub const EM_PRISM = 82;
pub const EM_QDSP6 = 164;
pub const EM_R32C = 162;
pub const EM_RCE = 39;
pub const EM_RH32 = 38;
pub const EM_RISCV = 243;
pub const EM_RL78 = 197;
pub const EM_RS08 = 132;
pub const EM_RX = 173;
pub const EM_S370 = 9;
pub const EM_S390 = 22;
pub const EM_SCORE7 = 135;
pub const EM_SEP = 108;
pub const EM_SE_C17 = 139;
pub const EM_SE_C33 = 107;
pub const EM_SH = 42;
pub const EM_SHARC = 133;
pub const EM_SLE9X = 179;
pub const EM_SNP1K = 99;
pub const EM_SPARC = 2;
pub const EM_SPARC32PLUS = 18;
pub const EM_SPARCV9 = 43;
pub const EM_SPU = 23;
pub const EM_ST100 = 60;
pub const EM_ST19 = 74;
pub const EM_ST200 = 100;
pub const EM_ST7 = 68;
pub const EM_ST9PLUS = 67;
pub const EM_STARCORE = 58;
pub const EM_STM8 = 186;
pub const EM_STXP7X = 166;
pub const EM_SVX = 73;
pub const EM_TILE64 = 187;
pub const EM_TILEGX = 191;
pub const EM_TILEPRO = 188;
pub const EM_TINYJ = 61;
pub const EM_TI_ARP32 = 143;
pub const EM_TI_C2000 = 141;
pub const EM_TI_C5500 = 142;
pub const EM_TI_C6000 = 140;
pub const EM_TI_PRU = 144;
pub const EM_TMM_GPP = 96;
pub const EM_TPC = 98;
pub const EM_TRICORE = 44;
pub const EM_TRIMEDIA = 163;
pub const EM_TSK3000 = 131;
pub const EM_UNICORE = 110;
pub const EM_V800 = 36;
pub const EM_V850 = 87;
pub const EM_VAX = 75;
pub const EM_VIDEOCORE = 95;
pub const EM_VIDEOCORE3 = 137;
pub const EM_VIDEOCORE5 = 198;
pub const EM_VISIUM = 221;
pub const EM_VPP500 = 17;
pub const EM_X86_64 = 62;
pub const EM_XCORE = 203;
pub const EM_XGATE = 115;
pub const EM_XIMO16 = 170;
pub const EM_XTENSA = 94;
pub const EM_Z80 = 220;
pub const EM_ZSP = 79;

pub const ET_CORE = 4;
pub const ET_DYN = 3;
pub const ET_EXEC = 2;
pub const ET_HIOS = 0xfeff;
pub const ET_HIPROC = 0xffff;
pub const ET_LOOS = 0xfe00;
pub const ET_LOPROC = 0xff00;
pub const ET_NONE = 0;
pub const ET_NUM = 5;
pub const ET_REL = 1;

pub const EV_CURRENT = 1;
pub const EV_NONE = 0;
pub const EV_NUM = 2;

pub const E_MIPS_ARCH_1 = EF_MIPS_ARCH_1;
pub const E_MIPS_ARCH_2 = EF_MIPS_ARCH_2;
pub const E_MIPS_ARCH_3 = EF_MIPS_ARCH_3;
pub const E_MIPS_ARCH_32 = EF_MIPS_ARCH_32;
pub const E_MIPS_ARCH_4 = EF_MIPS_ARCH_4;
pub const E_MIPS_ARCH_5 = EF_MIPS_ARCH_5;
pub const E_MIPS_ARCH_64 = EF_MIPS_ARCH_64;

pub const GNU_PROPERTY_1_NEEDED = GNU_PROPERTY_UINT32_OR_LO;
pub const GNU_PROPERTY_1_NEEDED_INDIRECT_EXTERN_ACCESS = (1 << 0);
pub const GNU_PROPERTY_AARCH64_FEATURE_1_AND = 0xc0000000;
pub const GNU_PROPERTY_AARCH64_FEATURE_1_BTI = (1 << 0);
pub const GNU_PROPERTY_AARCH64_FEATURE_1_GCS = (1 << 2);
pub const GNU_PROPERTY_AARCH64_FEATURE_1_PAC = (1 << 1);
pub const GNU_PROPERTY_HIPROC = 0xdfffffff;
pub const GNU_PROPERTY_HIUSER = 0xffffffff;
pub const GNU_PROPERTY_LOPROC = 0xc0000000;
pub const GNU_PROPERTY_LOUSER = 0xe0000000;
pub const GNU_PROPERTY_NO_COPY_ON_PROTECTED = 2;
pub const GNU_PROPERTY_STACK_SIZE = 1;
pub const GNU_PROPERTY_UINT32_AND_HI = 0xb0007fff;
pub const GNU_PROPERTY_UINT32_AND_LO = 0xb0000000;
pub const GNU_PROPERTY_UINT32_OR_HI = 0xb000ffff;
pub const GNU_PROPERTY_UINT32_OR_LO = 0xb0008000;
pub const GNU_PROPERTY_X86_FEATURE_1_AND = 0xc0000002;
pub const GNU_PROPERTY_X86_FEATURE_1_IBT = (1 << 0);
pub const GNU_PROPERTY_X86_FEATURE_1_SHSTK = (1 << 1);
pub const GNU_PROPERTY_X86_ISA_1_BASELINE = (1 << 0);
pub const GNU_PROPERTY_X86_ISA_1_NEEDED = 0xc0008002;
pub const GNU_PROPERTY_X86_ISA_1_USED = 0xc0010002;
pub const GNU_PROPERTY_X86_ISA_1_V2 = (1 << 1);
pub const GNU_PROPERTY_X86_ISA_1_V3 = (1 << 2);
pub const GNU_PROPERTY_X86_ISA_1_V4 = (1 << 3);
pub const GRP_COMDAT = 0x1;

pub const LITUSE_ALPHA_ADDR = 0;
pub const LITUSE_ALPHA_BASE = 1;
pub const LITUSE_ALPHA_BYTOFF = 2;
pub const LITUSE_ALPHA_JSR = 3;
pub const LITUSE_ALPHA_TLS_GD = 4;
pub const LITUSE_ALPHA_TLS_LDM = 5;

pub const LL_DELAY_LOAD = (1 << 4);
pub const LL_DELTA = (1 << 5);
pub const LL_EXACT_MATCH = (1 << 0);
pub const LL_EXPORTS = (1 << 3);
pub const LL_IGNORE_INT_VER = (1 << 1);
pub const LL_NONE = 0;
pub const LL_REQUIRE_MINOR = (1 << 2);

pub const MIPS_AFL_ASE_DSP = 0x00000001;
pub const MIPS_AFL_ASE_DSPR2 = 0x00000002;
pub const MIPS_AFL_ASE_EVA = 0x00000004;
pub const MIPS_AFL_ASE_MASK = 0x00001fff;
pub const MIPS_AFL_ASE_MCU = 0x00000008;
pub const MIPS_AFL_ASE_MDMX = 0x00000010;
pub const MIPS_AFL_ASE_MICROMIPS = 0x00000800;
pub const MIPS_AFL_ASE_MIPS16 = 0x00000400;
pub const MIPS_AFL_ASE_MIPS3D = 0x00000020;
pub const MIPS_AFL_ASE_MSA = 0x00000200;
pub const MIPS_AFL_ASE_MT = 0x00000040;
pub const MIPS_AFL_ASE_SMARTMIPS = 0x00000080;
pub const MIPS_AFL_ASE_VIRT = 0x00000100;
pub const MIPS_AFL_ASE_XPA = 0x00001000;
pub const MIPS_AFL_EXT_10000 = 11;
pub const MIPS_AFL_EXT_3900 = 10;
pub const MIPS_AFL_EXT_4010 = 8;
pub const MIPS_AFL_EXT_4100 = 9;
pub const MIPS_AFL_EXT_4111 = 13;
pub const MIPS_AFL_EXT_4120 = 14;
pub const MIPS_AFL_EXT_4650 = 7;
pub const MIPS_AFL_EXT_5400 = 15;
pub const MIPS_AFL_EXT_5500 = 16;
pub const MIPS_AFL_EXT_5900 = 6;
pub const MIPS_AFL_EXT_LOONGSON_2E = 17;
pub const MIPS_AFL_EXT_LOONGSON_2F = 18;
pub const MIPS_AFL_EXT_LOONGSON_3A = 4;
pub const MIPS_AFL_EXT_OCTEON = 5;
pub const MIPS_AFL_EXT_OCTEON2 = 2;
pub const MIPS_AFL_EXT_OCTEONP = 3;
pub const MIPS_AFL_EXT_SB1 = 12;
pub const MIPS_AFL_EXT_XLR = 1;
pub const MIPS_AFL_FLAGS1_ODDSPREG = 1;
pub const MIPS_AFL_REG_128 = 0x03;
pub const MIPS_AFL_REG_32 = 0x01;
pub const MIPS_AFL_REG_64 = 0x02;
pub const MIPS_AFL_REG_NONE = 0x00;

pub const NOTE_GNU_PROPERTY_SECTION_NAME = ".note.gnu.property";

pub const NT_386_IOPERM = 0x201;
pub const NT_386_TLS = 0x200;
pub const NT_ARM_FPMR = 0x40e;
pub const NT_ARM_HW_BREAK = 0x402;
pub const NT_ARM_HW_WATCH = 0x403;
pub const NT_ARM_PACA_KEYS = 0x407;
pub const NT_ARM_PACG_KEYS = 0x408;
pub const NT_ARM_PAC_ENABLED_KEYS = 0x40a;
pub const NT_ARM_PAC_MASK = 0x406;
pub const NT_ARM_POE = 0x40f;
pub const NT_ARM_SSVE = 0x40b;
pub const NT_ARM_SVE = 0x405;
pub const NT_ARM_SYSTEM_CALL = 0x404;
pub const NT_ARM_TAGGED_ADDR_CTRL = 0x409;
pub const NT_ARM_TLS = 0x401;
pub const NT_ARM_VFP = 0x400;
pub const NT_ARM_ZA = 0x40c;
pub const NT_ARM_ZT = 0x40d;
pub const NT_ASRS = 8;
pub const NT_AUXV = 6;
pub const NT_FILE = 0x46494c45;
pub const NT_FPREGSET = 2;
pub const NT_GNU_ABI_TAG = 1;
pub const NT_GNU_BUILD_ID = 3;
pub const NT_GNU_GOLD_VERSION = 4;
pub const NT_GNU_HWCAP = 2;
pub const NT_GNU_PROPERTY_TYPE_0 = 5;
pub const NT_GWINDOWS = 7;
pub const NT_LOONGARCH_CPUCFG = 0xa00;
pub const NT_LOONGARCH_CSR = 0xa01;
pub const NT_LOONGARCH_HW_BREAK = 0xa05;
pub const NT_LOONGARCH_HW_WATCH = 0xa06;
pub const NT_LOONGARCH_LASX = 0xa03;
pub const NT_LOONGARCH_LBT = 0xa04;
pub const NT_LOONGARCH_LSX = 0xa02;
pub const NT_LWPSINFO = 17;
pub const NT_LWPSTATUS = 16;
pub const NT_MIPS_DSP = 0x800;
pub const NT_MIPS_FP_MODE = 0x801;
pub const NT_MIPS_MSA = 0x802;
pub const NT_PLATFORM = 5;
pub const NT_PPC_DEXCR = 0x111;
pub const NT_PPC_DSCR = 0x105;
pub const NT_PPC_EBB = 0x106;
pub const NT_PPC_HASHKEYR = 0x112;
pub const NT_PPC_PKEY = 0x110;
pub const NT_PPC_PMU = 0x107;
pub const NT_PPC_PPR = 0x104;
pub const NT_PPC_SPE = 0x101;
pub const NT_PPC_TAR = 0x103;
pub const NT_PPC_TM_CDSCR = 0x10f;
pub const NT_PPC_TM_CFPR = 0x109;
pub const NT_PPC_TM_CGPR = 0x108;
pub const NT_PPC_TM_CPPR = 0x10e;
pub const NT_PPC_TM_CTAR = 0x10d;
pub const NT_PPC_TM_CVMX = 0x10a;
pub const NT_PPC_TM_CVSX = 0x10b;
pub const NT_PPC_TM_SPR = 0x10c;
pub const NT_PPC_VMX = 0x100;
pub const NT_PPC_VSX = 0x102;
pub const NT_PRCRED = 14;
pub const NT_PRFPREG = 2;
pub const NT_PRFPXREG = 20;
pub const NT_PRPSINFO = 3;
pub const NT_PRSTATUS = 1;
pub const NT_PRXFPREG = 0x46e62b7f;
pub const NT_PRXREG = 4;
pub const NT_PSINFO = 13;
pub const NT_PSTATUS = 10;
pub const NT_RISCV_CSR = 0x900;
pub const NT_RISCV_VECTOR = 0x901;
pub const NT_S390_CTRS = 0x304;
pub const NT_S390_GS_BC = 0x30c;
pub const NT_S390_GS_CB = 0x30b;
pub const NT_S390_HIGH_GPRS = 0x300;
pub const NT_S390_LAST_BREAK = 0x306;
pub const NT_S390_PREFIX = 0x305;
pub const NT_S390_PV_CPU_DATA = 0x30e;
pub const NT_S390_RI_CB = 0x30d;
pub const NT_S390_SYSTEM_CALL = 0x307;
pub const NT_S390_TDB = 0x308;
pub const NT_S390_TIMER = 0x301;
pub const NT_S390_TODCMP = 0x302;
pub const NT_S390_TODPREG = 0x303;
pub const NT_S390_VXRS_HIGH = 0x30a;
pub const NT_S390_VXRS_LOW = 0x309;
pub const NT_SIGINFO = 0x53494749;
pub const NT_TASKSTRUCT = 4;
pub const NT_UTSNAME = 15;
pub const NT_VERSION = 1;
pub const NT_VMCOREDD = 0x700;
pub const NT_X86_SHSTK = 0x204;
pub const NT_X86_XSAVE_LAYOUT = 0x205;
pub const NT_X86_XSTATE = 0x202;

pub const ODK_EXCEPTIONS = 2;
pub const ODK_FILL = 5;
pub const ODK_HWAND = 7;
pub const ODK_HWOR = 8;
pub const ODK_HWPATCH = 4;
pub const ODK_NULL = 0;
pub const ODK_PAD = 3;
pub const ODK_REGINFO = 1;
pub const ODK_TAGS = 6;
pub const OEX_DISMISS = 0x80000;
pub const OEX_FPDBUG = 0x40000;
pub const OEX_FPU_DIV0 = 0x08;
pub const OEX_FPU_INEX = 0x01;
pub const OEX_FPU_INVAL = 0x10;
pub const OEX_FPU_MAX = 0x1f00;
pub const OEX_FPU_MIN = 0x1f;
pub const OEX_FPU_OFLO = 0x04;
pub const OEX_FPU_UFLO = 0x02;
pub const OEX_PAGE0 = 0x10000;
pub const OEX_PRECISEFP = OEX_FPDBUG;
pub const OEX_SMM = 0x20000;
pub const OHWA0_R4KEOP_CHECKED = 0x00000001;
pub const OHWA1_R4KEOP_CLEAN = 0x00000002;
pub const OHW_R4KEOP = 0x1;
pub const OHW_R5KCVTL = 0x8;
pub const OHW_R5KEOP = 0x4;
pub const OHW_R8KPFETCH = 0x2;
pub const OPAD_POSTFIX = 0x2;
pub const OPAD_PREFIX = 0x1;
pub const OPAD_SYMBOL = 0x4;

pub const PF_ARM_ABS = 0x40000000;
pub const PF_ARM_PI = 0x20000000;
pub const PF_ARM_SB = 0x10000000;
pub const PF_HP_CODE = 0x01000000;
pub const PF_HP_FAR_SHARED = 0x00200000;
pub const PF_HP_LAZYSWAP = 0x04000000;
pub const PF_HP_MODIFY = 0x02000000;
pub const PF_HP_NEAR_SHARED = 0x00400000;
pub const PF_HP_PAGE_SIZE = 0x00100000;
pub const PF_HP_SBP = 0x08000000;
pub const PF_IA_64_NORECOV = 0x80000000;
pub const PF_MASKOS = 0x0ff00000;
pub const PF_MASKPROC = 0xf0000000;
pub const PF_MIPS_LOCAL = 0x10000000;
pub const PF_PARISC_SBP = 0x08000000;
pub const PF_R = (1 << 2);
pub const PF_W = (1 << 1);
pub const PF_X = (1 << 0);

pub const PN_XNUM = 0xffff;

pub const PPC64_OPT_LOCALENTRY = 4;
pub const PPC64_OPT_MULTI_TOC = 2;
pub const PPC64_OPT_TLS = 1;
pub const PPC_OPT_TLS = 1;

pub const PT_AARCH64_MEMTAG_MTE = (PT_LOPROC + 2);
pub const PT_ARM_EXIDX = (PT_LOPROC + 1);
pub const PT_DYNAMIC = 2;
pub const PT_GNU_EH_FRAME = 0x6474e550;
pub const PT_GNU_PROPERTY = 0x6474e553;
pub const PT_GNU_RELRO = 0x6474e552;
pub const PT_GNU_SFRAME = 0x6474e554;
pub const PT_GNU_STACK = 0x6474e551;
pub const PT_HIOS = 0x6fffffff;
pub const PT_HIPROC = 0x7fffffff;
pub const PT_HISUNW = 0x6fffffff;
pub const PT_HP_CORE_COMM = (PT_LOOS + 0x4);
pub const PT_HP_CORE_KERNEL = (PT_LOOS + 0x3);
pub const PT_HP_CORE_LOADABLE = (PT_LOOS + 0x6);
pub const PT_HP_CORE_MMF = (PT_LOOS + 0x9);
pub const PT_HP_CORE_NONE = (PT_LOOS + 0x1);
pub const PT_HP_CORE_PROC = (PT_LOOS + 0x5);
pub const PT_HP_CORE_SHM = (PT_LOOS + 0x8);
pub const PT_HP_CORE_STACK = (PT_LOOS + 0x7);
pub const PT_HP_CORE_VERSION = (PT_LOOS + 0x2);
pub const PT_HP_FASTBIND = (PT_LOOS + 0x11);
pub const PT_HP_HSL_ANNOT = (PT_LOOS + 0x13);
pub const PT_HP_OPT_ANNOT = (PT_LOOS + 0x12);
pub const PT_HP_PARALLEL = (PT_LOOS + 0x10);
pub const PT_HP_STACK = (PT_LOOS + 0x14);
pub const PT_HP_TLS = (PT_LOOS + 0x0);
pub const PT_IA_64_ARCHEXT = (PT_LOPROC + 0);
pub const PT_IA_64_HP_HSL_ANOT = (PT_LOOS + 0x13);
pub const PT_IA_64_HP_OPT_ANOT = (PT_LOOS + 0x12);
pub const PT_IA_64_HP_STACK = (PT_LOOS + 0x14);
pub const PT_IA_64_UNWIND = (PT_LOPROC + 1);
pub const PT_INTERP = 3;
pub const PT_LOAD = 1;
pub const PT_LOOS = 0x60000000;
pub const PT_LOPROC = 0x70000000;
pub const PT_LOSUNW = 0x6ffffffa;
pub const PT_MIPS_ABIFLAGS = 0x70000003;
pub const PT_MIPS_OPTIONS = 0x70000002;
pub const PT_MIPS_REGINFO = 0x70000000;
pub const PT_MIPS_RTPROC = 0x70000001;
pub const PT_NOTE = 4;
pub const PT_NULL = 0;
pub const PT_NUM = 8;
pub const PT_PARISC_ARCHEXT = 0x70000000;
pub const PT_PARISC_UNWIND = 0x70000001;
pub const PT_PHDR = 6;
pub const PT_RISCV_ATTRIBUTES = (PT_LOPROC + 3);
pub const PT_SHLIB = 5;
pub const PT_SUNWBSS = 0x6ffffffa;
pub const PT_SUNWSTACK = 0x6ffffffb;
pub const PT_TLS = 7;

pub const RHF_CORD = (1 << 12);
pub const RHF_DEFAULT_DELAY_LOAD = (1 << 9);
pub const RHF_DELTA_C_PLUS_PLUS = (1 << 6);
pub const RHF_GUARANTEE_INIT = (1 << 5);
pub const RHF_GUARANTEE_START_INIT = (1 << 7);
pub const RHF_NONE = 0;
pub const RHF_NOTPOT = (1 << 1);
pub const RHF_NO_LIBRARY_REPLACEMENT = (1 << 2);
pub const RHF_NO_MOVE = (1 << 3);
pub const RHF_NO_UNRES_UNDEF = (1 << 13);
pub const RHF_PIXIE = (1 << 8);
pub const RHF_QUICKSTART = (1 << 0);
pub const RHF_REQUICKSTART = (1 << 10);
pub const RHF_REQUICKSTARTED = (1 << 11);
pub const RHF_RLD_ORDER_SAFE = (1 << 14);
pub const RHF_SGI_ONLY = (1 << 4);

pub const Relocation = struct {
    pub const _386 = enum(u8) {
        _16 = 20,
        _32 = 1,
        _32PLT = 11,
        _8 = 22,
        _COPY = 5,
        _GLOB_DAT = 6,
        _GOT32 = 3,
        _GOT32X = 43,
        _GOTOFF = 9,
        _GOTPC = 10,
        _IRELATIVE = 42,
        _JMP_SLOT = 7,
        _NONE = 0,
        _NUM = 44,
        _PC16 = 21,
        _PC32 = 2,
        _PC8 = 23,
        _PLT32 = 4,
        _RELATIVE = 8,
        _SIZE32 = 38,
        _TLS_DESC = 41,
        _TLS_DESC_CALL = 40,
        _TLS_DTPMOD32 = 35,
        _TLS_DTPOFF32 = 36,
        _TLS_GD = 18,
        _TLS_GD_32 = 24,
        _TLS_GD_CALL = 26,
        _TLS_GD_POP = 27,
        _TLS_GD_PUSH = 25,
        _TLS_GOTDESC = 39,
        _TLS_GOTIE = 16,
        _TLS_IE = 15,
        _TLS_IE_32 = 33,
        _TLS_LDM = 19,
        _TLS_LDM_32 = 28,
        _TLS_LDM_CALL = 30,
        _TLS_LDM_POP = 31,
        _TLS_LDM_PUSH = 29,
        _TLS_LDO_32 = 32,
        _TLS_LE = 17,
        _TLS_LE_32 = 34,
        _TLS_TPOFF = 14,
        _TLS_TPOFF32 = 37,
    };

    pub const _390 = enum(u8) {
        _12 = 2,
        _16 = 3,
        _20 = 57,
        _32 = 4,
        _64 = 22,
        _8 = 1,
        _COPY = 9,
        _GLOB_DAT = 10,
        _GOT12 = 6,
        _GOT16 = 15,
        _GOT20 = 58,
        _GOT32 = 7,
        _GOT64 = 24,
        _GOTENT = 26,
        _GOTOFF16 = 27,
        _GOTOFF32 = 13,
        _GOTOFF64 = 28,
        _GOTPC = 14,
        _GOTPCDBL = 21,
        _GOTPLT12 = 29,
        _GOTPLT16 = 30,
        _GOTPLT20 = 59,
        _GOTPLT32 = 31,
        _GOTPLT64 = 32,
        _GOTPLTENT = 33,
        _IRELATIVE = 61,
        _JMP_SLOT = 11,
        _NONE = 0,
        _NUM = 62,
        _PC16 = 16,
        _PC16DBL = 17,
        _PC32 = 5,
        _PC32DBL = 19,
        _PC64 = 23,
        _PLT16DBL = 18,
        _PLT32 = 8,
        _PLT32DBL = 20,
        _PLT64 = 25,
        _PLTOFF16 = 34,
        _PLTOFF32 = 35,
        _PLTOFF64 = 36,
        _RELATIVE = 12,
        _TLS_DTPMOD = 54,
        _TLS_DTPOFF = 55,
        _TLS_GD32 = 40,
        _TLS_GD64 = 41,
        _TLS_GDCALL = 38,
        _TLS_GOTIE12 = 42,
        _TLS_GOTIE20 = 60,
        _TLS_GOTIE32 = 43,
        _TLS_GOTIE64 = 44,
        _TLS_IE32 = 47,
        _TLS_IE64 = 48,
        _TLS_IEENT = 49,
        _TLS_LDCALL = 39,
        _TLS_LDM32 = 45,
        _TLS_LDM64 = 46,
        _TLS_LDO32 = 52,
        _TLS_LDO64 = 53,
        _TLS_LE32 = 50,
        _TLS_LE64 = 51,
        _TLS_LOAD = 37,
        _TLS_TPOFF = 56,
    };

    pub const _68K = enum(u8) {
        _16 = 2,
        _32 = 1,
        _8 = 3,
        _COPY = 19,
        _GLOB_DAT = 20,
        _GOT16 = 8,
        _GOT16O = 11,
        _GOT32 = 7,
        _GOT32O = 10,
        _GOT8 = 9,
        _GOT8O = 12,
        _JMP_SLOT = 21,
        _NONE = 0,
        _NUM = 43,
        _PC16 = 5,
        _PC32 = 4,
        _PC8 = 6,
        _PLT16 = 14,
        _PLT16O = 17,
        _PLT32 = 13,
        _PLT32O = 16,
        _PLT8 = 15,
        _PLT8O = 18,
        _RELATIVE = 22,
        _TLS_DTPMOD32 = 40,
        _TLS_DTPREL32 = 41,
        _TLS_GD16 = 26,
        _TLS_GD32 = 25,
        _TLS_GD8 = 27,
        _TLS_IE16 = 35,
        _TLS_IE32 = 34,
        _TLS_IE8 = 36,
        _TLS_LDM16 = 29,
        _TLS_LDM32 = 28,
        _TLS_LDM8 = 30,
        _TLS_LDO16 = 32,
        _TLS_LDO32 = 31,
        _TLS_LDO8 = 33,
        _TLS_LE16 = 38,
        _TLS_LE32 = 37,
        _TLS_LE8 = 39,
        _TLS_TPREL32 = 42,
    };

    pub const _AARCH64 = enum(u16) {
        _ABS16 = 259,
        _ABS32 = 258,
        _ABS64 = 257,
        _ADD_ABS_LO12_NC = 277,
        _ADR_GOT_PAGE = 311,
        _ADR_PREL_LO21 = 274,
        _ADR_PREL_PG_HI21 = 275,
        _ADR_PREL_PG_HI21_NC = 276,
        _CALL26 = 283,
        _CONDBR19 = 280,
        _COPY = 1024,
        _GLOB_DAT = 1025,
        _GOTREL32 = 308,
        _GOTREL64 = 307,
        _GOT_LD_PREL19 = 309,
        _IRELATIVE = 1032,
        _JUMP26 = 282,
        _JUMP_SLOT = 1026,
        _LD64_GOTOFF_LO15 = 310,
        _LD64_GOTPAGE_LO15 = 313,
        _LD64_GOT_LO12_NC = 312,
        _LDST128_ABS_LO12_NC = 299,
        _LDST16_ABS_LO12_NC = 284,
        _LDST32_ABS_LO12_NC = 285,
        _LDST64_ABS_LO12_NC = 286,
        _LDST8_ABS_LO12_NC = 278,
        _LD_PREL_LO19 = 273,
        _MOVW_GOTOFF_G0 = 300,
        _MOVW_GOTOFF_G0_NC = 301,
        _MOVW_GOTOFF_G1 = 302,
        _MOVW_GOTOFF_G1_NC = 303,
        _MOVW_GOTOFF_G2 = 304,
        _MOVW_GOTOFF_G2_NC = 305,
        _MOVW_GOTOFF_G3 = 306,
        _MOVW_PREL_G0 = 287,
        _MOVW_PREL_G0_NC = 288,
        _MOVW_PREL_G1 = 289,
        _MOVW_PREL_G1_NC = 290,
        _MOVW_PREL_G2 = 291,
        _MOVW_PREL_G2_NC = 292,
        _MOVW_PREL_G3 = 293,
        _MOVW_SABS_G0 = 270,
        _MOVW_SABS_G1 = 271,
        _MOVW_SABS_G2 = 272,
        _MOVW_UABS_G0 = 263,
        _MOVW_UABS_G0_NC = 264,
        _MOVW_UABS_G1 = 265,
        _MOVW_UABS_G1_NC = 266,
        _MOVW_UABS_G2 = 267,
        _MOVW_UABS_G2_NC = 268,
        _MOVW_UABS_G3 = 269,
        _NONE = 0,
        _P32_ABS32 = 1,
        _P32_COPY = 180,
        _P32_GLOB_DAT = 181,
        _P32_IRELATIVE = 188,
        _P32_JUMP_SLOT = 182,
        _P32_RELATIVE = 183,
        _P32_TLSDESC = 187,
        _P32_TLS_DTPMOD = 184,
        _P32_TLS_DTPREL = 185,
        _P32_TLS_TPREL = 186,
        _PREL16 = 262,
        _PREL32 = 261,
        _PREL64 = 260,
        _RELATIVE = 1027,
        _TLSDESC = 1031,
        _TLSDESC_ADD = 568,
        _TLSDESC_ADD_LO12 = 564,
        _TLSDESC_ADR_PAGE21 = 562,
        _TLSDESC_ADR_PREL21 = 561,
        _TLSDESC_CALL = 569,
        _TLSDESC_LD64_LO12 = 563,
        _TLSDESC_LDR = 567,
        _TLSDESC_LD_PREL19 = 560,
        _TLSDESC_OFF_G0_NC = 566,
        _TLSDESC_OFF_G1 = 565,
        _TLSGD_ADD_LO12_NC = 514,
        _TLSGD_ADR_PAGE21 = 513,
        _TLSGD_ADR_PREL21 = 512,
        _TLSGD_MOVW_G0_NC = 516,
        _TLSGD_MOVW_G1 = 515,
        _TLSIE_ADR_GOTTPREL_PAGE21 = 541,
        _TLSIE_LD64_GOTTPREL_LO12_NC = 542,
        _TLSIE_LD_GOTTPREL_PREL19 = 543,
        _TLSIE_MOVW_GOTTPREL_G0_NC = 540,
        _TLSIE_MOVW_GOTTPREL_G1 = 539,
        _TLSLD_ADD_DTPREL_HI12 = 528,
        _TLSLD_ADD_DTPREL_LO12 = 529,
        _TLSLD_ADD_DTPREL_LO12_NC = 530,
        _TLSLD_ADD_LO12_NC = 519,
        _TLSLD_ADR_PAGE21 = 518,
        _TLSLD_ADR_PREL21 = 517,
        _TLSLD_LDST128_DTPREL_LO12 = 572,
        _TLSLD_LDST128_DTPREL_LO12_NC = 573,
        _TLSLD_LDST16_DTPREL_LO12 = 533,
        _TLSLD_LDST16_DTPREL_LO12_NC = 534,
        _TLSLD_LDST32_DTPREL_LO12 = 535,
        _TLSLD_LDST32_DTPREL_LO12_NC = 536,
        _TLSLD_LDST64_DTPREL_LO12 = 537,
        _TLSLD_LDST64_DTPREL_LO12_NC = 538,
        _TLSLD_LDST8_DTPREL_LO12 = 531,
        _TLSLD_LDST8_DTPREL_LO12_NC = 532,
        _TLSLD_LD_PREL19 = 522,
        _TLSLD_MOVW_DTPREL_G0 = 526,
        _TLSLD_MOVW_DTPREL_G0_NC = 527,
        _TLSLD_MOVW_DTPREL_G1 = 524,
        _TLSLD_MOVW_DTPREL_G1_NC = 525,
        _TLSLD_MOVW_DTPREL_G2 = 523,
        _TLSLD_MOVW_G0_NC = 521,
        _TLSLD_MOVW_G1 = 520,
        _TLSLE_ADD_TPREL_HI12 = 549,
        _TLSLE_ADD_TPREL_LO12 = 550,
        _TLSLE_ADD_TPREL_LO12_NC = 551,
        _TLSLE_LDST128_TPREL_LO12 = 570,
        _TLSLE_LDST128_TPREL_LO12_NC = 571,
        _TLSLE_LDST16_TPREL_LO12 = 554,
        _TLSLE_LDST16_TPREL_LO12_NC = 555,
        _TLSLE_LDST32_TPREL_LO12 = 556,
        _TLSLE_LDST32_TPREL_LO12_NC = 557,
        _TLSLE_LDST64_TPREL_LO12 = 558,
        _TLSLE_LDST64_TPREL_LO12_NC = 559,
        _TLSLE_LDST8_TPREL_LO12 = 552,
        _TLSLE_LDST8_TPREL_LO12_NC = 553,
        _TLSLE_MOVW_TPREL_G0 = 547,
        _TLSLE_MOVW_TPREL_G0_NC = 548,
        _TLSLE_MOVW_TPREL_G1 = 545,
        _TLSLE_MOVW_TPREL_G1_NC = 546,
        _TLSLE_MOVW_TPREL_G2 = 544,
        _TLS_DTPMOD = 1028,
        _TLS_DTPREL = 1029,
        _TLS_TPREL = 1030,
        _TSTBR14 = 279,
    };

    pub const _AC = enum(u8) {
        _SECTOFF_S9 = 0x26,
        _SECTOFF_S9_1 = 0x27,
        _SECTOFF_S9_2 = 0x28,
        _SECTOFF_U8 = 0x23,
        _SECTOFF_U8_1 = 0x24,
        _SECTOFF_U8_2 = 0x25,
    };

    pub const _ALPHA_ = enum(u8) {
        _BRADDR = 7,
        _COPY = 24,
        _DTPMOD64 = 31,
        _DTPREL16 = 36,
        _DTPREL64 = 33,
        _DTPRELHI = 34,
        _DTPRELLO = 35,
        _GLOB_DAT = 25,
        _GOTDTPREL = 32,
        _GOTTPREL = 37,
        _GPDISP = 6,
        _GPREL16 = 19,
        _GPREL32 = 3,
        _GPRELHIGH = 17,
        _GPRELLOW = 18,
        _HINT = 8,
        _JMP_SLOT = 26,
        _LITERAL = 4,
        _LITUSE = 5,
        _NONE = 0,
        _NUM = 46,
        _REFLONG = 1,
        _REFQUAD = 2,
        _RELATIVE = 27,
        _SREL16 = 9,
        _SREL32 = 10,
        _SREL64 = 11,
        _TLSGD = 29,
        _TLS_GD_HI = 28,
        _TLS_LDM = 30,
        _TPREL16 = 41,
        _TPREL64 = 38,
        _TPRELHI = 39,
        _TPRELLO = 40,
    };

    pub const _ARC = enum(u8) {
        _16 = 0x2,
        _24 = 0x3,
        _32 = 0x4,
        _32_ME = 0x1B,
        _32_PCREL = 0x31,
        _8 = 0x1,
        _B22_PCREL = 0x6,
        _COPY = 0x35,
        _GLOB_DAT = 0x36,
        _GOT32 = 0x3B,
        _GOTOFF = 0x39,
        _GOTPC = 0x3A,
        _GOTPC32 = 0x33,
        _H30 = 0x7,
        _H30_ME = 0x20,
        _JLI_SECTOFF = 0x3F,
        _JMP_SLOT = 0x37,
        _N16 = 0x9,
        _N24 = 0xA,
        _N32 = 0xB,
        _N32_ME = 0x1C,
        _N8 = 0x8,
        _NONE = 0x0,
        _NPS_CMEM16 = 0x4E,
        _PC32 = 0x32,
        _PLT32 = 0x34,
        _RELATIVE = 0x38,
        _S13_PCREL = 0x19,
        _S21H_PCREL = 0xE,
        _S21H_PCREL_PLT = 0x4D,
        _S21W_PCREL = 0xF,
        _S21W_PCREL_PLT = 0x3C,
        _S25H_PCREL = 0x10,
        _S25H_PCREL_PLT = 0x3D,
        _S25W_PCREL = 0x11,
        _S25W_PCREL_PLT = 0x4C,
        _SDA = 0xC,
        _SDA16_LD = 0x16,
        _SDA16_LD1 = 0x17,
        _SDA16_LD2 = 0x18,
        _SDA16_ST2 = 0x30,
        _SDA32 = 0x12,
        _SDA32_ME = 0x1E,
        _SDA_12 = 0x2D,
        _SDA_LDST = 0x13,
        _SDA_LDST1 = 0x14,
        _SDA_LDST2 = 0x15,
        _SECTOFF = 0xD,
        _SECTOFF_1 = 0x2B,
        _SECTOFF_2 = 0x2C,
        _SECTOFF_ME = 0x1D,
        _SECTOFF_ME_1 = 0x29,
        _SECTOFF_ME_2 = 0x2A,
        _SECTOFF_S9 = 0x22,
        _SECTOFF_U8 = 0x21,
        _TLS_DTPMOD = 0x42,
        _TLS_DTPOFF = 0x43,
        _TLS_DTPOFF_S9 = 0x49,
        _TLS_GD_CALL = 0x47,
        _TLS_GD_GOT = 0x45,
        _TLS_GD_LD = 0x46,
        _TLS_IE_GOT = 0x48,
        _TLS_LE_32 = 0x4B,
        _TLS_LE_S9 = 0x4A,
        _TLS_TPOFF = 0x44,
        _W = 0x1A,
        _W_ME = 0x1F,
    };

    pub const _ARM = enum(u8) {
        _ABS12 = 6,
        _ABS16 = 5,
        _ABS32 = 2,
        _ABS32_NOI = 55,
        _ABS8 = 8,
        _ALU_PCREL_15_8 = 33,
        _ALU_PCREL_23_15 = 34,
        _ALU_PCREL_7_0 = 32,
        _ALU_PC_G0 = 58,
        _ALU_PC_G0_NC = 57,
        _ALU_PC_G1 = 60,
        _ALU_PC_G1_NC = 59,
        _ALU_PC_G2 = 61,
        _ALU_SBREL_19_12 = 36,
        _ALU_SBREL_27_20 = 37,
        _ALU_SB_G0 = 71,
        _ALU_SB_G0_NC = 70,
        _ALU_SB_G1 = 73,
        _ALU_SB_G1_NC = 72,
        _ALU_SB_G2 = 74,
        _AMP_VCALL9 = 12,
        _BASE_ABS = 31,
        _CALL = 28,
        _COPY = 20,
        _GLOB_DAT = 21,
        _GNU_VTENTRY = 100,
        _GNU_VTINHERIT = 101,
        _GOT32 = 26,
        _GOTOFF = 24,
        _GOTOFF12 = 98,
        _GOTPC = 25,
        _GOTRELAX = 99,
        _GOT_ABS = 95,
        _GOT_BREL12 = 97,
        _GOT_PREL = 96,
        _IRELATIVE = 160,
        _JUMP24 = 29,
        _JUMP_SLOT = 22,
        _LDC_PC_G0 = 67,
        _LDC_PC_G1 = 68,
        _LDC_PC_G2 = 69,
        _LDC_SB_G0 = 81,
        _LDC_SB_G1 = 82,
        _LDC_SB_G2 = 83,
        _LDRS_PC_G0 = 64,
        _LDRS_PC_G1 = 65,
        _LDRS_PC_G2 = 66,
        _LDRS_SB_G0 = 78,
        _LDRS_SB_G1 = 79,
        _LDRS_SB_G2 = 80,
        _LDR_PC_G1 = 62,
        _LDR_PC_G2 = 63,
        _LDR_SBREL_11_0 = 35,
        _LDR_SB_G0 = 75,
        _LDR_SB_G1 = 76,
        _LDR_SB_G2 = 77,
        _ME_TOO = 128,
        _MOVT_ABS = 44,
        _MOVT_BREL = 85,
        _MOVT_PREL = 46,
        _MOVW_ABS_NC = 43,
        _MOVW_BREL = 86,
        _MOVW_BREL_NC = 84,
        _MOVW_PREL_NC = 45,
        _NONE = 0,
        _NUM = 256,
        _PC13 = 4,
        _PC24 = 1,
        _PLT32 = 27,
        _PLT32_ABS = 94,
        _PREL31 = 42,
        _RABS22 = 253,
        _RBASE = 255,
        _REL32 = 3,
        _REL32_NOI = 56,
        _RELATIVE = 23,
        _RPC24 = 254,
        _RREL32 = 252,
        _RSBREL32 = 250,
        _RXPC25 = 249,
        _SBREL31 = 39,
        _SBREL32 = 9,
        _SWI24 = 13,
        _TARGET1 = 38,
        _TARGET2 = 41,
        _THM_ABS5 = 7,
        _THM_ALU_PREL_11_0 = 53,
        _THM_GOT_BREL12 = 131,
        _THM_JUMP19 = 51,
        _THM_JUMP24 = 30,
        _THM_JUMP6 = 52,
        _THM_MOVT_ABS = 48,
        _THM_MOVT_BREL = 88,
        _THM_MOVT_PREL = 50,
        _THM_MOVW_ABS_NC = 47,
        _THM_MOVW_BREL = 89,
        _THM_MOVW_BREL_NC = 87,
        _THM_MOVW_PREL_NC = 49,
        _THM_PC11 = 102,
        _THM_PC12 = 54,
        _THM_PC22 = 10,
        _THM_PC8 = 11,
        _THM_PC9 = 103,
        _THM_RPC22 = 251,
        _THM_SWI8 = 14,
        _THM_TLS_CALL = 93,
        _THM_TLS_DESCSEQ = 129,
        _THM_TLS_DESCSEQ16 = 129,
        _THM_TLS_DESCSEQ32 = 130,
        _THM_XPC22 = 16,
        _TLS_CALL = 91,
        _TLS_DESC = 13,
        _TLS_DESCSEQ = 92,
        _TLS_DTPMOD32 = 17,
        _TLS_DTPOFF32 = 18,
        _TLS_GD32 = 104,
        _TLS_GOTDESC = 90,
        _TLS_IE12GP = 111,
        _TLS_IE32 = 107,
        _TLS_LDM32 = 105,
        _TLS_LDO12 = 109,
        _TLS_LDO32 = 106,
        _TLS_LE12 = 110,
        _TLS_LE32 = 108,
        _TLS_TPOFF32 = 19,
        _V4BX = 40,
        _XPC25 = 15,
    };

    pub const _BPF = enum(u8) {
        _64_32 = 10,
        _64_64 = 1,
        _NONE = 0,
    };

    pub const _CKCORE = enum(u8) {
        _ADDR32 = 1,
        _ADDRGOT = 17,
        _ADDRGOT_HI16 = 36,
        _ADDRGOT_LO16 = 37,
        _ADDRPLT = 18,
        _ADDRPLT_HI16 = 38,
        _ADDRPLT_LO16 = 39,
        _ADDR_HI16 = 24,
        _ADDR_LO16 = 25,
        _COPY = 10,
        _DOFFSET_IMM18 = 44,
        _DOFFSET_IMM18BY2 = 45,
        _DOFFSET_IMM18BY4 = 46,
        _DOFFSET_LO16 = 42,
        _GLOB_DAT = 11,
        _GOT12 = 30,
        _GOT32 = 15,
        _GOTOFF = 13,
        _GOTOFF_HI16 = 28,
        _GOTOFF_LO16 = 29,
        _GOTPC = 14,
        _GOTPC_HI16 = 26,
        _GOTPC_LO16 = 27,
        _GOT_HI16 = 31,
        _GOT_IMM18BY4 = 48,
        _GOT_LO16 = 32,
        _JUMP_SLOT = 12,
        _NONE = 0,
        _PCREL32 = 5,
        _PCRELIMM11BY2 = 3,
        _PCRELIMM8BY4 = 2,
        _PCRELJSR_IMM11BY2 = 6,
        _PCREL_IMM10BY2 = 22,
        _PCREL_IMM10BY4 = 23,
        _PCREL_IMM16BY2 = 20,
        _PCREL_IMM16BY4 = 21,
        _PCREL_IMM18BY2 = 43,
        _PCREL_IMM26BY2 = 19,
        _PCREL_IMM7BY4 = 50,
        _PCREL_JSR_IMM26BY2 = 40,
        _PLT12 = 33,
        _PLT32 = 16,
        _PLT_HI16 = 34,
        _PLT_IMM18BY4 = 49,
        _PLT_LO16 = 35,
        _RELATIVE = 9,
        _TLS_DTPMOD32 = 56,
        _TLS_DTPOFF32 = 57,
        _TLS_GD32 = 53,
        _TLS_IE32 = 52,
        _TLS_LDM32 = 54,
        _TLS_LDO32 = 55,
        _TLS_LE32 = 51,
        _TLS_TPOFF32 = 58,
        _TOFFSET_LO16 = 41,
    };

    pub const _CRIS = enum(u8) {
        _16 = 2,
        _16_GOT = 13,
        _16_GOTPLT = 15,
        _16_PCREL = 5,
        _32 = 3,
        _32_GOT = 14,
        _32_GOTPLT = 16,
        _32_GOTREL = 17,
        _32_PCREL = 6,
        _32_PLT_GOTREL = 18,
        _32_PLT_PCREL = 19,
        _8 = 1,
        _8_PCREL = 4,
        _COPY = 9,
        _GLOB_DAT = 10,
        _GNU_VTENTRY = 8,
        _GNU_VTINHERIT = 7,
        _JUMP_SLOT = 11,
        _NONE = 0,
        _NUM = 20,
        _RELATIVE = 12,
    };

    pub const IA64 = enum(u8) {
        _COPY = 0x84,
        _DIR32LSB = 0x25,
        _DIR32MSB = 0x24,
        _DIR64LSB = 0x27,
        _DIR64MSB = 0x26,
        _DTPMOD64LSB = 0xa7,
        _DTPMOD64MSB = 0xa6,
        _DTPREL14 = 0xb1,
        _DTPREL22 = 0xb2,
        _DTPREL32LSB = 0xb5,
        _DTPREL32MSB = 0xb4,
        _DTPREL64I = 0xb3,
        _DTPREL64LSB = 0xb7,
        _DTPREL64MSB = 0xb6,
        _FPTR32LSB = 0x45,
        _FPTR32MSB = 0x44,
        _FPTR64I = 0x43,
        _FPTR64LSB = 0x47,
        _FPTR64MSB = 0x46,
        _GPREL22 = 0x2a,
        _GPREL32LSB = 0x2d,
        _GPREL32MSB = 0x2c,
        _GPREL64I = 0x2b,
        _GPREL64LSB = 0x2f,
        _GPREL64MSB = 0x2e,
        _IMM14 = 0x21,
        _IMM22 = 0x22,
        _IMM64 = 0x23,
        _IPLTLSB = 0x81,
        _IPLTMSB = 0x80,
        _LDXMOV = 0x87,
        _LTOFF22 = 0x32,
        _LTOFF22X = 0x86,
        _LTOFF64I = 0x33,
        _LTOFF_DTPMOD22 = 0xaa,
        _LTOFF_DTPREL22 = 0xba,
        _LTOFF_FPTR22 = 0x52,
        _LTOFF_FPTR32LSB = 0x55,
        _LTOFF_FPTR32MSB = 0x54,
        _LTOFF_FPTR64I = 0x53,
        _LTOFF_FPTR64LSB = 0x57,
        _LTOFF_FPTR64MSB = 0x56,
        _LTOFF_TPREL22 = 0x9a,
        _LTV32LSB = 0x75,
        _LTV32MSB = 0x74,
        _LTV64LSB = 0x77,
        _LTV64MSB = 0x76,
        _NONE = 0x00,
        _PCREL21B = 0x49,
        _PCREL21BI = 0x79,
        _PCREL21F = 0x4b,
        _PCREL21M = 0x4a,
        _PCREL22 = 0x7a,
        _PCREL32LSB = 0x4d,
        _PCREL32MSB = 0x4c,
        _PCREL60B = 0x48,
        _PCREL64I = 0x7b,
        _PCREL64LSB = 0x4f,
        _PCREL64MSB = 0x4e,
        _PLTOFF22 = 0x3a,
        _PLTOFF64I = 0x3b,
        _PLTOFF64LSB = 0x3f,
        _PLTOFF64MSB = 0x3e,
        _REL32LSB = 0x6d,
        _REL32MSB = 0x6c,
        _REL64LSB = 0x6f,
        _REL64MSB = 0x6e,
        _SECREL32LSB = 0x65,
        _SECREL32MSB = 0x64,
        _SECREL64LSB = 0x67,
        _SECREL64MSB = 0x66,
        _SEGREL32LSB = 0x5d,
        _SEGREL32MSB = 0x5c,
        _SEGREL64LSB = 0x5f,
        _SEGREL64MSB = 0x5e,
        _SUB = 0x85,
        _TPREL14 = 0x91,
        _TPREL22 = 0x92,
        _TPREL64I = 0x93,
        _TPREL64LSB = 0x97,
        _TPREL64MSB = 0x96,
    };

    pub const _LARCH = enum(u8) {
        _32 = 1,
        _32_PCREL = 99,
        _64 = 2,
        _64_PCREL = 109,
        _ABS64_HI12 = 70,
        _ABS64_LO20 = 69,
        _ABS_HI20 = 67,
        _ABS_LO12 = 68,
        _ADD16 = 48,
        _ADD24 = 49,
        _ADD32 = 50,
        _ADD6 = 105,
        _ADD64 = 51,
        _ADD8 = 47,
        _ADD_ULEB128 = 107,
        _ALIGN = 102,
        _B16 = 64,
        _B21 = 65,
        _B26 = 66,
        _CALL36 = 110,
        _CFA = 104,
        _COPY = 4,
        _DELETE = 101,
        _GNU_VTENTRY = 58,
        _GNU_VTINHERIT = 57,
        _GOT64_HI12 = 82,
        _GOT64_LO20 = 81,
        _GOT64_PC_HI12 = 78,
        _GOT64_PC_LO20 = 77,
        _GOT_HI20 = 79,
        _GOT_LO12 = 80,
        _GOT_PC_HI20 = 75,
        _GOT_PC_LO12 = 76,
        _IRELATIVE = 12,
        _JUMP_SLOT = 5,
        _MARK_LA = 20,
        _MARK_PCREL = 21,
        _NONE = 0,
        _PCALA64_HI12 = 74,
        _PCALA64_LO20 = 73,
        _PCALA_HI20 = 71,
        _PCALA_LO12 = 72,
        _PCREL20_S2 = 103,
        _RELATIVE = 3,
        _RELAX = 100,
        _SOP_ADD = 35,
        _SOP_AND = 36,
        _SOP_ASSERT = 30,
        _SOP_IF_ELSE = 37,
        _SOP_NOT = 31,
        _SOP_POP_32_S_0_10_10_16_S2 = 45,
        _SOP_POP_32_S_0_5_10_16_S2 = 44,
        _SOP_POP_32_S_10_12 = 40,
        _SOP_POP_32_S_10_16 = 41,
        _SOP_POP_32_S_10_16_S2 = 42,
        _SOP_POP_32_S_10_5 = 38,
        _SOP_POP_32_S_5_20 = 43,
        _SOP_POP_32_U = 46,
        _SOP_POP_32_U_10_12 = 39,
        _SOP_PUSH_ABSOLUTE = 23,
        _SOP_PUSH_DUP = 24,
        _SOP_PUSH_GPREL = 25,
        _SOP_PUSH_PCREL = 22,
        _SOP_PUSH_PLT_PCREL = 29,
        _SOP_PUSH_TLS_GD = 28,
        _SOP_PUSH_TLS_GOT = 27,
        _SOP_PUSH_TLS_TPREL = 26,
        _SOP_SL = 33,
        _SOP_SR = 34,
        _SOP_SUB = 32,
        _SUB16 = 53,
        _SUB24 = 54,
        _SUB32 = 55,
        _SUB6 = 106,
        _SUB64 = 56,
        _SUB8 = 52,
        _SUB_ULEB128 = 108,
        _TLS_DESC32 = 13,
        _TLS_DESC64 = 14,
        _TLS_DESC64_HI12 = 118,
        _TLS_DESC64_LO20 = 117,
        _TLS_DESC64_PC_HI12 = 114,
        _TLS_DESC64_PC_LO20 = 113,
        _TLS_DESC_CALL = 120,
        _TLS_DESC_HI20 = 115,
        _TLS_DESC_LD = 119,
        _TLS_DESC_LO12 = 116,
        _TLS_DESC_PCREL20_S2 = 126,
        _TLS_DESC_PC_HI20 = 111,
        _TLS_DESC_PC_LO12 = 112,
        _TLS_DTPMOD32 = 6,
        _TLS_DTPMOD64 = 7,
        _TLS_DTPREL32 = 8,
        _TLS_DTPREL64 = 9,
        _TLS_GD_HI20 = 98,
        _TLS_GD_PCREL20_S2 = 125,
        _TLS_GD_PC_HI20 = 97,
        _TLS_IE64_HI12 = 94,
        _TLS_IE64_LO20 = 93,
        _TLS_IE64_PC_HI12 = 90,
        _TLS_IE64_PC_LO20 = 89,
        _TLS_IE_HI20 = 91,
        _TLS_IE_LO12 = 92,
        _TLS_IE_PC_HI20 = 87,
        _TLS_IE_PC_LO12 = 88,
        _TLS_LD_HI20 = 96,
        _TLS_LD_PCREL20_S2 = 124,
        _TLS_LD_PC_HI20 = 95,
        _TLS_LE64_HI12 = 86,
        _TLS_LE64_LO20 = 85,
        _TLS_LE_ADD_R = 122,
        _TLS_LE_HI20 = 83,
        _TLS_LE_HI20_R = 121,
        _TLS_LE_LO12 = 84,
        _TLS_LE_LO12_R = 123,
        _TLS_TPREL32 = 10,
        _TLS_TPREL64 = 11,
    };

    pub const _M32R = enum(u8) {
        _10_PCREL = 4,
        _10_PCREL_RELA = 36,
        _16 = 1,
        _16_RELA = 33,
        _18_PCREL = 5,
        _18_PCREL_RELA = 37,
        _24 = 3,
        _24_RELA = 35,
        _26_PCREL = 6,
        _26_PCREL_RELA = 38,
        _26_PLTREL = 49,
        _32 = 2,
        _32_RELA = 34,
        _COPY = 50,
        _GLOB_DAT = 51,
        _GNU_VTENTRY = 12,
        _GNU_VTINHERIT = 11,
        _GOT16_HI_SLO = 57,
        _GOT16_HI_ULO = 56,
        _GOT16_LO = 58,
        _GOT24 = 48,
        _GOTOFF = 54,
        _GOTOFF_HI_SLO = 63,
        _GOTOFF_HI_ULO = 62,
        _GOTOFF_LO = 64,
        _GOTPC24 = 55,
        _GOTPC_HI_SLO = 60,
        _GOTPC_HI_ULO = 59,
        _GOTPC_LO = 61,
        _HI16_SLO = 8,
        _HI16_SLO_RELA = 40,
        _HI16_ULO = 7,
        _HI16_ULO_RELA = 39,
        _JMP_SLOT = 52,
        _LO16 = 9,
        _LO16_RELA = 41,
        _NONE = 0,
        _NUM = 256,
        _REL32 = 45,
        _RELATIVE = 53,
        _RELA_GNU_VTENTRY = 44,
        _RELA_GNU_VTINHERIT = 43,
        _SDA16 = 10,
        _SDA16_RELA = 42,
    };

    pub const _METAG = enum(u8) {
        _ADDR32 = 2,
        _COPY = 43,
        _GETSETOFF = 5,
        _GETSET_GOT = 35,
        _GETSET_GOTOFF = 34,
        _GLOB_DAT = 46,
        _GNU_VTENTRY = 31,
        _GNU_VTINHERIT = 30,
        _GOTOFF = 41,
        _HI16_GOTOFF = 32,
        _HI16_GOTPC = 36,
        _HI16_PLT = 38,
        _HIADDR16 = 0,
        _HIOG = 13,
        _JMP_SLOT = 44,
        _LO16_GOTOFF = 33,
        _LO16_GOTPC = 37,
        _LO16_PLT = 39,
        _LOADDR16 = 1,
        _LOOG = 14,
        _NONE = 3,
        _PLT = 42,
        _REG16OP1 = 9,
        _REG16OP2 = 10,
        _REG16OP3 = 11,
        _REG32OP1 = 6,
        _REG32OP2 = 7,
        _REG32OP3 = 8,
        _REG32OP4 = 12,
        _REL16 = 16,
        _REL8 = 15,
        _RELATIVE = 45,
        _RELBRANCH = 4,
        _RELBRANCH_PLT = 40,
        _TLS_DTPMOD = 57,
        _TLS_DTPOFF = 58,
        _TLS_GD = 47,
        _TLS_IE = 52,
        _TLS_IENONPIC = 53,
        _TLS_IENONPIC_HI16 = 54,
        _TLS_IENONPIC_LO16 = 55,
        _TLS_LDM = 48,
        _TLS_LDO = 51,
        _TLS_LDO_HI16 = 49,
        _TLS_LDO_LO16 = 50,
        _TLS_LE = 59,
        _TLS_LE_HI16 = 60,
        _TLS_LE_LO16 = 61,
        _TLS_TPOFF = 56,
    };

    pub const _MICROBLAZE = enum(u8) {
        _32 = 1,
        _32_LO = 6,
        _32_PCREL = 2,
        _32_PCREL_LO = 4,
        _32_SYM_OP_SYM = 10,
        _64 = 5,
        _64_NONE = 9,
        _64_PCREL = 3,
        _COPY = 21,
        _GLOB_DAT = 18,
        _GNU_VTENTRY = 12,
        _GNU_VTINHERIT = 11,
        _GOTOFF_32 = 20,
        _GOTOFF_64 = 19,
        _GOTPC_64 = 13,
        _GOT_64 = 14,
        _JUMP_SLOT = 17,
        _NONE = 0,
        _PLT_64 = 15,
        _REL = 16,
        _SRO32 = 7,
        _SRW32 = 8,
        _TLS = 22,
        _TLSDTPMOD32 = 25,
        _TLSDTPREL32 = 26,
        _TLSDTPREL64 = 27,
        _TLSGD = 23,
        _TLSGOTTPREL32 = 28,
        _TLSLD = 24,
        _TLSTPREL32 = 29,
    };

    pub const _MICROMIPS = enum(u8) {
        _26_S1 = 133,
        _CALL16 = 142,
        _CALL_HI16 = 153,
        _CALL_LO16 = 154,
        _GOT16 = 138,
        _GOT_DISP = 145,
        _GOT_HI16 = 148,
        _GOT_LO16 = 149,
        _GOT_OFST = 147,
        _GOT_PAGE = 146,
        _GPREL16 = 136,
        _GPREL7_S2 = 172,
        _HI0_LO16 = 157,
        _HI16 = 134,
        _HIGHER = 151,
        _HIGHEST = 152,
        _JALR = 156,
        _LITERAL = 137,
        _LO16 = 135,
        _PC10_S1 = 140,
        _PC16_S1 = 141,
        _PC23_S2 = 173,
        _PC7_S1 = 139,
        _SCN_DISP = 155,
        _SUB = 150,
        _TLS_DTPREL_HI16 = 164,
        _TLS_DTPREL_LO16 = 165,
        _TLS_GD = 162,
        _TLS_GOTTPREL = 166,
        _TLS_LDM = 163,
        _TLS_TPREL_HI16 = 169,
        _TLS_TPREL_LO16 = 170,
    };

    pub const _MIPS = enum(u8) {
        _16_26 = 100,
        _16_CALL16 = 103,
        _16_GOT16 = 102,
        _16_GPREL = 101,
        _16_HI16 = 104,
        _16_LO16 = 105,
        _16_PC16_S1 = 113,
        _16_TLS_DTPREL_HI16 = 108,
        _16_TLS_DTPREL_LO16 = 109,
        _16_TLS_GD = 106,
        _16_TLS_GOTTPREL = 110,
        _16_TLS_LDM = 107,
        _16_TLS_TPREL_HI16 = 111,
        _16_TLS_TPREL_LO16 = 112,
        _16 = 1,
        _26 = 4,
        _32 = 2,
        _64 = 18,
        _ADD_IMMEDIATE = 34,
        _CALL16 = 11,
        _CALL_HI16 = 30,
        _CALL_LO16 = 31,
        _COPY = 126,
        _DELETE = 27,
        _EH = 249,
        _GLOB_DAT = 51,
        _GNU_REL16_S2 = 250,
        _GNU_VTENTRY = 254,
        _GNU_VTINHERIT = 253,
        _GOT16 = 9,
        _GOT_DISP = 19,
        _GOT_HI16 = 22,
        _GOT_LO16 = 23,
        _GOT_OFST = 21,
        _GOT_PAGE = 20,
        _GPREL16 = 7,
        _GPREL32 = 12,
        _HI16 = 5,
        _HIGHER = 28,
        _HIGHEST = 29,
        _INSERT_A = 25,
        _INSERT_B = 26,
        _JALR = 37,
        _JUMP_SLOT = 127,
        _LITERAL = 8,
        _LO16 = 6,
        _NONE = 0,
        _NUM = 255,
        _PC16 = 10,
        _PC18_S3 = 62,
        _PC19_S2 = 63,
        _PC21_S2 = 60,
        _PC26_S2 = 61,
        _PC32 = 248,
        _PCHI16 = 64,
        _PCLO16 = 65,
        _PJUMP = 35,
        _REL16 = 33,
        _REL32 = 3,
        _RELATIVE = 128,
        _RELGOT = 36,
        _SCN_DISP = 32,
        _SHIFT5 = 16,
        _SHIFT6 = 17,
        _SUB = 24,
        _TLS_DTPMOD32 = 38,
        _TLS_DTPMOD64 = 40,
        _TLS_DTPREL32 = 39,
        _TLS_DTPREL64 = 41,
        _TLS_DTPREL_HI16 = 44,
        _TLS_DTPREL_LO16 = 45,
        _TLS_GD = 42,
        _TLS_GOTTPREL = 46,
        _TLS_LDM = 43,
        _TLS_TPREL32 = 47,
        _TLS_TPREL64 = 48,
        _TLS_TPREL_HI16 = 49,
        _TLS_TPREL_LO16 = 50,
    };

    pub const _MN10300 = enum(u8) {
        _16 = 2,
        _24 = 9,
        _32 = 1,
        _8 = 3,
        _ALIGN = 34,
        _COPY = 20,
        _GLOB_DAT = 21,
        _GNU_VTENTRY = 8,
        _GNU_VTINHERIT = 7,
        _GOT16 = 19,
        _GOT24 = 18,
        _GOT32 = 17,
        _GOTOFF16 = 14,
        _GOTOFF24 = 13,
        _GOTOFF32 = 12,
        _GOTPC16 = 11,
        _GOTPC32 = 10,
        _JMP_SLOT = 22,
        _NONE = 0,
        _NUM = 35,
        _PCREL16 = 5,
        _PCREL32 = 4,
        _PCREL8 = 6,
        _PLT16 = 16,
        _PLT32 = 15,
        _RELATIVE = 23,
        _SYM_DIFF = 33,
        _TLS_DTPMOD = 30,
        _TLS_DTPOFF = 31,
        _TLS_GD = 24,
        _TLS_GOTIE = 27,
        _TLS_IE = 28,
        _TLS_LD = 25,
        _TLS_LDO = 26,
        _TLS_LE = 29,
        _TLS_TPOFF = 32,
    };

    pub const _NDS32 = enum(u8) {
        _32_RELA = 20,
        _COPY = 39,
        _GLOB_DAT = 40,
        _JMP_SLOT = 41,
        _NONE = 0,
        _RELATIVE = 42,
        _TLS_DESC = 119,
        _TLS_TPOFF = 102,
    };

    pub const _NIOS2_ = enum(u8) {
        _ALIGN = 21,
        _BFD_RELOC_16 = 13,
        _BFD_RELOC_32 = 12,
        _BFD_RELOC_8 = 14,
        _CACHE_OPX = 6,
        _CALL16 = 23,
        _CALL26 = 4,
        _CALL26_NOAT = 41,
        _CALLR = 20,
        _CALL_HA = 45,
        _CALL_LO = 44,
        _CJMP = 19,
        _COPY = 36,
        _GLOB_DAT = 37,
        _GNU_VTENTRY = 17,
        _GNU_VTINHERIT = 16,
        _GOT16 = 22,
        _GOTOFF = 40,
        _GOTOFF_HA = 25,
        _GOTOFF_LO = 24,
        _GOT_HA = 43,
        _GOT_LO = 42,
        _GPREL = 15,
        _HI16 = 9,
        _HIADJ16 = 11,
        _IMM5 = 5,
        _IMM6 = 7,
        _IMM8 = 8,
        _JUMP_SLOT = 38,
        _LO16 = 10,
        _NONE = 0,
        _PCREL16 = 3,
        _PCREL_HA = 27,
        _PCREL_LO = 26,
        _RELATIVE = 39,
        _S16 = 1,
        _TLS_DTPMOD = 33,
        _TLS_DTPREL = 34,
        _TLS_GD16 = 28,
        _TLS_IE16 = 31,
        _TLS_LDM16 = 29,
        _TLS_LDO16 = 30,
        _TLS_LE16 = 32,
        _TLS_TPREL = 35,
        _U16 = 2,
        _UJMP = 18,
    };

    pub const _OR1K = enum(u8) {
        _16 = 2,
        _16_PCREL = 10,
        _32 = 1,
        _32_PCREL = 9,
        _8 = 3,
        _8_PCREL = 11,
        _COPY = 18,
        _GLOB_DAT = 19,
        _GNU_VTENTRY = 7,
        _GNU_VTINHERIT = 8,
        _GOT16 = 14,
        _GOTOFF_HI16 = 16,
        _GOTOFF_LO16 = 17,
        _GOTPC_HI16 = 12,
        _GOTPC_LO16 = 13,
        _HI_16_IN_INSN = 5,
        _INSN_REL_26 = 6,
        _JMP_SLOT = 20,
        _LO_16_IN_INSN = 4,
        _NONE = 0,
        _PLT26 = 15,
        _RELATIVE = 21,
        _TLS_DTPMOD = 34,
        _TLS_DTPOFF = 33,
        _TLS_GD_HI16 = 22,
        _TLS_GD_LO16 = 23,
        _TLS_IE_HI16 = 28,
        _TLS_IE_LO16 = 29,
        _TLS_LDM_HI16 = 24,
        _TLS_LDM_LO16 = 25,
        _TLS_LDO_HI16 = 26,
        _TLS_LDO_LO16 = 27,
        _TLS_LE_HI16 = 30,
        _TLS_LE_LO16 = 31,
        _TLS_TPOFF = 32,
    };

    pub const _PARISC = enum(u8) {
        _COPY = 128,
        _DIR14DR = 84,
        _DIR14R = 6,
        _DIR14WR = 83,
        _DIR16DF = 87,
        _DIR16F = 85,
        _DIR16WF = 86,
        _DIR17F = 4,
        _DIR17R = 3,
        _DIR21L = 2,
        _DIR32 = 1,
        _DIR64 = 80,
        _DPREL14R = 22,
        _DPREL21L = 18,
        _EPLT = 130,
        _FPTR64 = 64,
        _GNU_VTENTRY = 232,
        _GNU_VTINHERIT = 233,
        _GPREL14DR = 92,
        _GPREL14R = 30,
        _GPREL14WR = 91,
        _GPREL16DF = 95,
        _GPREL16F = 93,
        _GPREL16WF = 94,
        _GPREL21L = 26,
        _GPREL64 = 88,
        _HIRESERVE = 255,
        _IPLT = 129,
        _LORESERVE = 128,
        _LTOFF14DR = 100,
        _LTOFF14R = 38,
        _LTOFF14WR = 99,
        _LTOFF16DF = 103,
        _LTOFF16F = 101,
        _LTOFF16WF = 102,
        _LTOFF21L = 34,
        _LTOFF64 = 96,
        _LTOFF_FPTR14DR = 124,
        _LTOFF_FPTR14R = 62,
        _LTOFF_FPTR14WR = 123,
        _LTOFF_FPTR16DF = 127,
        _LTOFF_FPTR16F = 125,
        _LTOFF_FPTR16WF = 126,
        _LTOFF_FPTR21L = 58,
        _LTOFF_FPTR32 = 57,
        _LTOFF_FPTR64 = 120,
        _LTOFF_TP14DR = 228,
        _LTOFF_TP14F = 167,
        _LTOFF_TP14R = 166,
        _LTOFF_TP14WR = 227,
        _LTOFF_TP16DF = 231,
        _LTOFF_TP16F = 229,
        _LTOFF_TP16WF = 230,
        _LTOFF_TP21L = 162,
        _LTOFF_TP64 = 224,
        _NONE = 0,
        _PCREL14DR = 76,
        _PCREL14R = 14,
        _PCREL14WR = 75,
        _PCREL16DF = 79,
        _PCREL16F = 77,
        _PCREL16WF = 78,
        _PCREL17F = 12,
        _PCREL17R = 11,
        _PCREL21L = 10,
        _PCREL22F = 74,
        _PCREL32 = 9,
        _PCREL64 = 72,
        _PLABEL14R = 70,
        _PLABEL21L = 66,
        _PLABEL32 = 65,
        _PLTOFF14DR = 116,
        _PLTOFF14R = 54,
        _PLTOFF14WR = 115,
        _PLTOFF16DF = 119,
        _PLTOFF16F = 117,
        _PLTOFF16WF = 118,
        _PLTOFF21L = 50,
        _SECREL32 = 41,
        _SECREL64 = 104,
        _SEGBASE = 48,
        _SEGREL32 = 49,
        _SEGREL64 = 112,
        _TLS_DTPMOD32 = 242,
        _TLS_DTPMOD64 = 243,
        _TLS_DTPOFF32 = 244,
        _TLS_DTPOFF64 = 245,
        _TLS_GD14R = 235,
        _TLS_GD21L = 234,
        _TLS_GDCALL = 236,
        _TLS_IE14R = Relocation._PARISC.LTOFF_TP14R,
        _TLS_IE21L = Relocation._PARISC.LTOFF_TP21L,
        _TLS_LDM14R = 238,
        _TLS_LDM21L = 237,
        _TLS_LDMCALL = 239,
        _TLS_LDO14R = 241,
        _TLS_LDO21L = 240,
        _TLS_LE14R = Relocation._PARISC._TPREL14R,
        _TLS_LE21L = Relocation._PARISC._TPREL21L,
        _TLS_TPREL32 = Relocation._PARISC._TPREL32,
        _TLS_TPREL64 = Relocation._PARISC._TPREL64,
        _TPREL14DR = 220,
        _TPREL14R = 158,
        _TPREL14WR = 219,
        _TPREL16DF = 223,
        _TPREL16F = 221,
        _TPREL16WF = 222,
        _TPREL21L = 154,
        _TPREL32 = 153,
        _TPREL64 = 216,
    };

    pub const _PPC64 = enum(u8) {
        _ADDR14 = Relocation._PPC._ADDR14,
        _ADDR14_BRNTAKEN = Relocation._PPC._ADDR14_BRNTAKEN,
        _ADDR14_BRTAKEN = Relocation._PPC._ADDR14_BRTAKEN,
        _ADDR16 = Relocation._PPC._ADDR16,
        _ADDR16_DS = 56,
        _ADDR16_HA = Relocation._PPC._ADDR16_HA,
        _ADDR16_HI = Relocation._PPC._ADDR16_HI,
        _ADDR16_HIGH = 110,
        _ADDR16_HIGHA = 111,
        _ADDR16_HIGHER = 39,
        _ADDR16_HIGHERA = 40,
        _ADDR16_HIGHEST = 41,
        _ADDR16_HIGHESTA = 42,
        _ADDR16_LO = Relocation._PPC._ADDR16_LO,
        _ADDR16_LO_DS = 57,
        _ADDR24 = Relocation._PPC._ADDR24,
        _ADDR30 = 37,
        _ADDR32 = Relocation._PPC._ADDR32,
        _ADDR64 = 38,
        _COPY = Relocation._PPC._COPY,
        _DTPMOD64 = 68,
        _DTPREL16 = 74,
        _DTPREL16_DS = 101,
        _DTPREL16_HA = 77,
        _DTPREL16_HI = 76,
        _DTPREL16_HIGH = 114,
        _DTPREL16_HIGHA = 115,
        _DTPREL16_HIGHER = 103,
        _DTPREL16_HIGHERA = 104,
        _DTPREL16_HIGHEST = 105,
        _DTPREL16_HIGHESTA = 106,
        _DTPREL16_LO = 75,
        _DTPREL16_LO_DS = 102,
        _DTPREL64 = 78,
        _GLOB_DAT = Relocation._PPC._GLOB_DAT,
        _GOT16 = Relocation._PPC._GOT16,
        _GOT16_DS = 58,
        _GOT16_HA = Relocation._PPC._GOT16_HA,
        _GOT16_HI = Relocation._PPC._GOT16_HI,
        _GOT16_LO = Relocation._PPC._GOT16_LO,
        _GOT16_LO_DS = 59,
        _GOT_DTPREL16_DS = 91,
        _GOT_DTPREL16_HA = 94,
        _GOT_DTPREL16_HI = 93,
        _GOT_DTPREL16_LO_DS = 92,
        _GOT_TLSGD16 = 79,
        _GOT_TLSGD16_HA = 82,
        _GOT_TLSGD16_HI = 81,
        _GOT_TLSGD16_LO = 80,
        _GOT_TLSLD16 = 83,
        _GOT_TLSLD16_HA = 86,
        _GOT_TLSLD16_HI = 85,
        _GOT_TLSLD16_LO = 84,
        _GOT_TPREL16_DS = 87,
        _GOT_TPREL16_HA = 90,
        _GOT_TPREL16_HI = 89,
        _GOT_TPREL16_LO_DS = 88,
        _IRELATIVE = 248,
        _JMP_IREL = 247,
        _JMP_SLOT = Relocation._PPC._JMP_SLOT,
        _NONE = Relocation._PPC._NONE,
        _PLT16_HA = Relocation._PPC._PLT16_HA,
        _PLT16_HI = Relocation._PPC._PLT16_HI,
        _PLT16_LO = Relocation._PPC._PLT16_LO,
        _PLT16_LO_DS = 60,
        _PLT32 = Relocation._PPC._PLT32,
        _PLT64 = 45,
        _PLTGOT16 = 52,
        _PLTGOT16_DS = 65,
        _PLTGOT16_HA = 55,
        _PLTGOT16_HI = 54,
        _PLTGOT16_LO = 53,
        _PLTGOT16_LO_DS = 66,
        _PLTREL32 = Relocation._PPC._PLTREL32,
        _PLTREL64 = 46,
        _REL14 = Relocation._PPC._REL14,
        _REL14_BRNTAKEN = Relocation._PPC._REL14_BRNTAKEN,
        _REL14_BRTAKEN = Relocation._PPC._REL14_BRTAKEN,
        _REL16 = 249,
        _REL16_HA = 252,
        _REL16_HI = 251,
        _REL16_LO = 250,
        _REL24 = Relocation._PPC._REL24,
        _REL32 = Relocation._PPC._REL32,
        _REL64 = 44,
        _RELATIVE = Relocation._PPC._RELATIVE,
        _SECTOFF = Relocation._PPC._SECTOFF,
        _SECTOFF_DS = 61,
        _SECTOFF_HA = Relocation._PPC._SECTOFF_HA,
        _SECTOFF_HI = Relocation._PPC._SECTOFF_HI,
        _SECTOFF_LO = Relocation._PPC._SECTOFF_LO,
        _SECTOFF_LO_DS = 62,
        _TLS = 67,
        _TLSGD = 107,
        _TLSLD = 108,
        _TOC = 51,
        _TOC16 = 47,
        _TOC16_DS = 63,
        _TOC16_HA = 50,
        _TOC16_HI = 49,
        _TOC16_LO = 48,
        _TOC16_LO_DS = 64,
        _TOCSAVE = 109,
        _TPREL16 = 69,
        _TPREL16_DS = 95,
        _TPREL16_HA = 72,
        _TPREL16_HI = 71,
        _TPREL16_HIGH = 112,
        _TPREL16_HIGHA = 113,
        _TPREL16_HIGHER = 97,
        _TPREL16_HIGHERA = 98,
        _TPREL16_HIGHEST = 99,
        _TPREL16_HIGHESTA = 100,
        _TPREL16_LO = 70,
        _TPREL16_LO_DS = 96,
        _TPREL64 = 73,
        _UADDR16 = Relocation._PPC._UADDR16,
        _UADDR32 = Relocation._PPC._UADDR32,
        _UADDR64 = 43,
    };

    pub const _PPC_ = enum(u8) {
        _ADDR14 = 7,
        _ADDR14_BRNTAKEN = 9,
        _ADDR14_BRTAKEN = 8,
        _ADDR16 = 3,
        _ADDR16_HA = 6,
        _ADDR16_HI = 5,
        _ADDR16_LO = 4,
        _ADDR24 = 2,
        _ADDR32 = 1,
        _COPY = 19,
        _DIAB_RELSDA_HA = 185,
        _DIAB_RELSDA_HI = 184,
        _DIAB_RELSDA_LO = 183,
        _DIAB_SDA21_HA = 182,
        _DIAB_SDA21_HI = 181,
        _DIAB_SDA21_LO = 180,
        _DTPMOD32 = 68,
        _DTPREL16 = 74,
        _DTPREL16_HA = 77,
        _DTPREL16_HI = 76,
        _DTPREL16_LO = 75,
        _DTPREL32 = 78,
        _EMB_BIT_FLD = 115,
        _EMB_MRKREF = 110,
        _EMB_NADDR16 = 102,
        _EMB_NADDR16_HA = 105,
        _EMB_NADDR16_HI = 104,
        _EMB_NADDR16_LO = 103,
        _EMB_NADDR32 = 101,
        _EMB_RELSDA = 116,
        _EMB_RELSEC16 = 111,
        _EMB_RELST_HA = 114,
        _EMB_RELST_HI = 113,
        _EMB_RELST_LO = 112,
        _EMB_SDA21 = 109,
        _EMB_SDA2I16 = 107,
        _EMB_SDA2REL = 108,
        _EMB_SDAI16 = 106,
        _GLOB_DAT = 20,
        _GOT16 = 14,
        _GOT16_HA = 17,
        _GOT16_HI = 16,
        _GOT16_LO = 15,
        _GOT_DTPREL16 = 91,
        _GOT_DTPREL16_HA = 94,
        _GOT_DTPREL16_HI = 93,
        _GOT_DTPREL16_LO = 92,
        _GOT_TLSGD16 = 79,
        _GOT_TLSGD16_HA = 82,
        _GOT_TLSGD16_HI = 81,
        _GOT_TLSGD16_LO = 80,
        _GOT_TLSLD16 = 83,
        _GOT_TLSLD16_HA = 86,
        _GOT_TLSLD16_HI = 85,
        _GOT_TLSLD16_LO = 84,
        _GOT_TPREL16 = 87,
        _GOT_TPREL16_HA = 90,
        _GOT_TPREL16_HI = 89,
        _GOT_TPREL16_LO = 88,
        _IRELATIVE = 248,
        _JMP_SLOT = 21,
        _LOCAL24PC = 23,
        _NONE = 0,
        _PLT16_HA = 31,
        _PLT16_HI = 30,
        _PLT16_LO = 29,
        _PLT32 = 27,
        _PLTREL24 = 18,
        _PLTREL32 = 28,
        _REL14 = 11,
        _REL14_BRNTAKEN = 13,
        _REL14_BRTAKEN = 12,
        _REL16 = 249,
        _REL16_HA = 252,
        _REL16_HI = 251,
        _REL16_LO = 250,
        _REL24 = 10,
        _REL32 = 26,
        _RELATIVE = 22,
        _SDAREL16 = 32,
        _SECTOFF = 33,
        _SECTOFF_HA = 36,
        _SECTOFF_HI = 35,
        _SECTOFF_LO = 34,
        _TLS = 67,
        _TLSGD = 95,
        _TLSLD = 96,
        _TOC16 = 255,
        _TPREL16 = 69,
        _TPREL16_HA = 72,
        _TPREL16_HI = 71,
        _TPREL16_LO = 70,
        _TPREL32 = 73,
        _UADDR16 = 25,
        _UADDR32 = 24,
    };

    pub const _RISCV = enum(u8) {
        _32 = 1,
        _32_PCREL = 57,
        _64 = 2,
        _ADD16 = 34,
        _ADD32 = 35,
        _ADD64 = 36,
        _ADD8 = 33,
        _ALIGN = 43,
        _BRANCH = 16,
        _CALL = 18,
        _CALL_PLT = 19,
        _COPY = 4,
        _GNU_VTENTRY = 42,
        _GNU_VTINHERIT = 41,
        _GOT_HI20 = 20,
        _GPREL_I = 47,
        _GPREL_S = 48,
        _HI20 = 26,
        _IRELATIVE = 58,
        _JAL = 17,
        _JUMP_SLOT = 5,
        _LO12_I = 27,
        _LO12_S = 28,
        _NONE = 0,
        _NUM = 62,
        _PCREL_HI20 = 23,
        _PCREL_LO12_I = 24,
        _PCREL_LO12_S = 25,
        _PLT32 = 59,
        _RELATIVE = 3,
        _RELAX = 51,
        _RVC_BRANCH = 44,
        _RVC_JUMP = 45,
        _RVC_LUI = 46,
        _SET16 = 55,
        _SET32 = 56,
        _SET6 = 53,
        _SET8 = 54,
        _SET_ULEB128 = 60,
        _SUB16 = 38,
        _SUB32 = 39,
        _SUB6 = 52,
        _SUB64 = 40,
        _SUB8 = 37,
        _SUB_ULEB128 = 61,
        _TLS_DTPMOD32 = 6,
        _TLS_DTPMOD64 = 7,
        _TLS_DTPREL32 = 8,
        _TLS_DTPREL64 = 9,
        _TLS_GD_HI20 = 22,
        _TLS_GOT_HI20 = 21,
        _TLS_TPREL32 = 10,
        _TLS_TPREL64 = 11,
        _TPREL_ADD = 32,
        _TPREL_HI20 = 29,
        _TPREL_I = 49,
        _TPREL_LO12_I = 30,
        _TPREL_LO12_S = 31,
        _TPREL_S = 50,
    };

    pub const _SH = enum(u8) {
        _ALIGN = 29,
        _CODE = 30,
        _COPY = 162,
        _COUNT = 28,
        _DATA = 31,
        _DIR32 = 1,
        _DIR8BP = 7,
        _DIR8L = 9,
        _DIR8W = 8,
        _DIR8WPL = 5,
        _DIR8WPN = 3,
        _DIR8WPZ = 6,
        _GLOB_DAT = 163,
        _GNU_VTENTRY = 35,
        _GNU_VTINHERIT = 34,
        _GOT32 = 160,
        _GOTOFF = 166,
        _GOTPC = 167,
        _IND12W = 4,
        _JMP_SLOT = 164,
        _LABEL = 32,
        _NONE = 0,
        _NUM = 256,
        _PLT32 = 161,
        _REL32 = 2,
        _RELATIVE = 165,
        _SWITCH16 = 25,
        _SWITCH32 = 26,
        _SWITCH8 = 33,
        _TLS_DTPMOD32 = 149,
        _TLS_DTPOFF32 = 150,
        _TLS_GD_32 = 144,
        _TLS_IE_32 = 147,
        _TLS_LDO_32 = 146,
        _TLS_LD_32 = 145,
        _TLS_LE_32 = 148,
        _TLS_TPOFF32 = 151,
        _USES = 27,
    };

    pub const _SPARC = enum(u8) {
        _10 = 30,
        _11 = 31,
        _13 = 11,
        _16 = 2,
        _22 = 10,
        _32 = 3,
        _5 = 44,
        _6 = 45,
        _64 = 32,
        _7 = 43,
        _8 = 1,
        _COPY = 19,
        _DISP16 = 5,
        _DISP32 = 6,
        _DISP64 = 46,
        _DISP8 = 4,
        _GLOB_DAT = 20,
        _GLOB_JMP = 42,
        _GNU_VTENTRY = 251,
        _GNU_VTINHERIT = 250,
        _GOT10 = 13,
        _GOT13 = 14,
        _GOT22 = 15,
        _GOTDATA_HIX22 = 80,
        _GOTDATA_LOX10 = 81,
        _GOTDATA_OP = 84,
        _GOTDATA_OP_HIX22 = 82,
        _GOTDATA_OP_LOX10 = 83,
        _H34 = 85,
        _H44 = 50,
        _HH22 = 34,
        _HI22 = 9,
        _HIPLT22 = 25,
        _HIX22 = 48,
        _HM10 = 35,
        _IRELATIVE = 249,
        _JMP_IREL = 248,
        _JMP_SLOT = 21,
        _L44 = 52,
        _LM22 = 36,
        _LO10 = 12,
        _LOPLT10 = 26,
        _LOX10 = 49,
        _M44 = 51,
        _NONE = 0,
        _NUM = 253,
        _OLO10 = 33,
        _PC10 = 16,
        _PC22 = 17,
        _PCPLT10 = 29,
        _PCPLT22 = 28,
        _PCPLT32 = 27,
        _PC_HH22 = 37,
        _PC_HM10 = 38,
        _PC_LM22 = 39,
        _PLT32 = 24,
        _PLT64 = 47,
        _REGISTER = 53,
        _RELATIVE = 22,
        _REV32 = 252,
        _SIZE32 = 86,
        _SIZE64 = 87,
        _TLS_DTPMOD32 = 74,
        _TLS_DTPMOD64 = 75,
        _TLS_DTPOFF32 = 76,
        _TLS_DTPOFF64 = 77,
        _TLS_GD_ADD = 58,
        _TLS_GD_CALL = 59,
        _TLS_GD_HI22 = 56,
        _TLS_GD_LO10 = 57,
        _TLS_IE_ADD = 71,
        _TLS_IE_HI22 = 67,
        _TLS_IE_LD = 69,
        _TLS_IE_LDX = 70,
        _TLS_IE_LO10 = 68,
        _TLS_LDM_ADD = 62,
        _TLS_LDM_CALL = 63,
        _TLS_LDM_HI22 = 60,
        _TLS_LDM_LO10 = 61,
        _TLS_LDO_ADD = 66,
        _TLS_LDO_HIX22 = 64,
        _TLS_LDO_LOX10 = 65,
        _TLS_LE_HIX22 = 72,
        _TLS_LE_LOX10 = 73,
        _TLS_TPOFF32 = 78,
        _TLS_TPOFF64 = 79,
        _UA16 = 55,
        _UA32 = 23,
        _UA64 = 54,
        _WDISP10 = 88,
        _WDISP16 = 40,
        _WDISP19 = 41,
        _WDISP22 = 8,
        _WDISP30 = 7,
        _WPLT30 = 18,
    };

    pub const _TILEGX = enum(u8) {
        _16 = 3,
        _16_PCREL = 7,
        _32 = 2,
        _32_PCREL = 6,
        _64 = 1,
        _64_PCREL = 5,
        _8 = 4,
        _8_PCREL = 8,
        _BROFF_X1 = 20,
        _COPY = 16,
        _DEST_IMM8_X1 = 27,
        _GLOB_DAT = 17,
        _GNU_VTENTRY = 129,
        _GNU_VTINHERIT = 128,
        _HW0 = 9,
        _HW0_LAST = 13,
        _HW1 = 10,
        _HW1_LAST = 14,
        _HW2 = 11,
        _HW2_LAST = 15,
        _HW3 = 12,
        _IMM16_X0_HW0 = 36,
        _IMM16_X0_HW0_GOT = 64,
        _IMM16_X0_HW0_LAST = 44,
        _IMM16_X0_HW0_LAST_GOT = 72,
        _IMM16_X0_HW0_LAST_PCREL = 58,
        _IMM16_X0_HW0_LAST_PLT_PCREL = 94,
        _IMM16_X0_HW0_LAST_TLS_GD = 86,
        _IMM16_X0_HW0_LAST_TLS_IE = 100,
        _IMM16_X0_HW0_LAST_TLS_LE = 82,
        _IMM16_X0_HW0_PCREL = 50,
        _IMM16_X0_HW0_PLT_PCREL = 66,
        _IMM16_X0_HW0_TLS_GD = 78,
        _IMM16_X0_HW0_TLS_IE = 92,
        _IMM16_X0_HW0_TLS_LE = 80,
        _IMM16_X0_HW1 = 38,
        _IMM16_X0_HW1_LAST = 46,
        _IMM16_X0_HW1_LAST_GOT = 74,
        _IMM16_X0_HW1_LAST_PCREL = 60,
        _IMM16_X0_HW1_LAST_PLT_PCREL = 96,
        _IMM16_X0_HW1_LAST_TLS_GD = 88,
        _IMM16_X0_HW1_LAST_TLS_IE = 102,
        _IMM16_X0_HW1_LAST_TLS_LE = 84,
        _IMM16_X0_HW1_PCREL = 52,
        _IMM16_X0_HW1_PLT_PCREL = 68,
        _IMM16_X0_HW2 = 40,
        _IMM16_X0_HW2_LAST = 48,
        _IMM16_X0_HW2_LAST_PCREL = 62,
        _IMM16_X0_HW2_LAST_PLT_PCREL = 98,
        _IMM16_X0_HW2_PCREL = 54,
        _IMM16_X0_HW2_PLT_PCREL = 70,
        _IMM16_X0_HW3 = 42,
        _IMM16_X0_HW3_PCREL = 56,
        _IMM16_X0_HW3_PLT_PCREL = 76,
        _IMM16_X1_HW0 = 37,
        _IMM16_X1_HW0_GOT = 65,
        _IMM16_X1_HW0_LAST = 45,
        _IMM16_X1_HW0_LAST_GOT = 73,
        _IMM16_X1_HW0_LAST_PCREL = 59,
        _IMM16_X1_HW0_LAST_PLT_PCREL = 95,
        _IMM16_X1_HW0_LAST_TLS_GD = 87,
        _IMM16_X1_HW0_LAST_TLS_IE = 101,
        _IMM16_X1_HW0_LAST_TLS_LE = 83,
        _IMM16_X1_HW0_PCREL = 51,
        _IMM16_X1_HW0_PLT_PCREL = 67,
        _IMM16_X1_HW0_TLS_GD = 79,
        _IMM16_X1_HW0_TLS_IE = 93,
        _IMM16_X1_HW0_TLS_LE = 81,
        _IMM16_X1_HW1 = 39,
        _IMM16_X1_HW1_LAST = 47,
        _IMM16_X1_HW1_LAST_GOT = 75,
        _IMM16_X1_HW1_LAST_PCREL = 61,
        _IMM16_X1_HW1_LAST_PLT_PCREL = 97,
        _IMM16_X1_HW1_LAST_TLS_GD = 89,
        _IMM16_X1_HW1_LAST_TLS_IE = 103,
        _IMM16_X1_HW1_LAST_TLS_LE = 85,
        _IMM16_X1_HW1_PCREL = 53,
        _IMM16_X1_HW1_PLT_PCREL = 69,
        _IMM16_X1_HW2 = 41,
        _IMM16_X1_HW2_LAST = 49,
        _IMM16_X1_HW2_LAST_PCREL = 63,
        _IMM16_X1_HW2_LAST_PLT_PCREL = 99,
        _IMM16_X1_HW2_PCREL = 55,
        _IMM16_X1_HW2_PLT_PCREL = 71,
        _IMM16_X1_HW3 = 43,
        _IMM16_X1_HW3_PCREL = 57,
        _IMM16_X1_HW3_PLT_PCREL = 77,
        _IMM8_X0 = 23,
        _IMM8_X0_TLS_ADD = 118,
        _IMM8_X0_TLS_GD_ADD = 113,
        _IMM8_X1 = 25,
        _IMM8_X1_TLS_ADD = 119,
        _IMM8_X1_TLS_GD_ADD = 114,
        _IMM8_Y0 = 24,
        _IMM8_Y0_TLS_ADD = 120,
        _IMM8_Y0_TLS_GD_ADD = 115,
        _IMM8_Y1 = 26,
        _IMM8_Y1_TLS_ADD = 121,
        _IMM8_Y1_TLS_GD_ADD = 116,
        _JMP_SLOT = 18,
        _JUMPOFF_X1 = 21,
        _JUMPOFF_X1_PLT = 22,
        _MF_IMM14_X1 = 29,
        _MMEND_X0 = 31,
        _MMSTART_X0 = 30,
        _MT_IMM14_X1 = 28,
        _NONE = 0,
        _NUM = 130,
        _RELATIVE = 19,
        _SHAMT_X0 = 32,
        _SHAMT_X1 = 33,
        _SHAMT_Y0 = 34,
        _SHAMT_Y1 = 35,
        _TLS_DTPMOD32 = 109,
        _TLS_DTPMOD64 = 106,
        _TLS_DTPOFF32 = 110,
        _TLS_DTPOFF64 = 107,
        _TLS_GD_CALL = 112,
        _TLS_IE_LOAD = 117,
        _TLS_TPOFF32 = 111,
        _TLS_TPOFF64 = 108,
    };

    pub const _TILEPRO = enum(u8) {
        _16 = 2,
        _16_PCREL = 5,
        _32 = 1,
        _32_PCREL = 4,
        _8 = 3,
        _8_PCREL = 6,
        _BROFF_X1 = 14,
        _COPY = 10,
        _DEST_IMM8_X1 = 55,
        _GLOB_DAT = 11,
        _GNU_VTENTRY = 129,
        _GNU_VTINHERIT = 128,
        _HA16 = 9,
        _HI16 = 8,
        _IMM16_X0 = 23,
        _IMM16_X0_GOT = 39,
        _IMM16_X0_GOT_HA = 45,
        _IMM16_X0_GOT_HI = 43,
        _IMM16_X0_GOT_LO = 41,
        _IMM16_X0_HA = 29,
        _IMM16_X0_HA_PCREL = 37,
        _IMM16_X0_HI = 27,
        _IMM16_X0_HI_PCREL = 35,
        _IMM16_X0_LO = 25,
        _IMM16_X0_LO_PCREL = 33,
        _IMM16_X0_PCREL = 31,
        _IMM16_X0_TLS_GD = 66,
        _IMM16_X0_TLS_GD_HA = 72,
        _IMM16_X0_TLS_GD_HI = 70,
        _IMM16_X0_TLS_GD_LO = 68,
        _IMM16_X0_TLS_IE = 74,
        _IMM16_X0_TLS_IE_HA = 80,
        _IMM16_X0_TLS_IE_HI = 78,
        _IMM16_X0_TLS_IE_LO = 76,
        _IMM16_X0_TLS_LE = 85,
        _IMM16_X0_TLS_LE_HA = 91,
        _IMM16_X0_TLS_LE_HI = 89,
        _IMM16_X0_TLS_LE_LO = 87,
        _IMM16_X1 = 24,
        _IMM16_X1_GOT = 40,
        _IMM16_X1_GOT_HA = 46,
        _IMM16_X1_GOT_HI = 44,
        _IMM16_X1_GOT_LO = 42,
        _IMM16_X1_HA = 30,
        _IMM16_X1_HA_PCREL = 38,
        _IMM16_X1_HI = 28,
        _IMM16_X1_HI_PCREL = 36,
        _IMM16_X1_LO = 26,
        _IMM16_X1_LO_PCREL = 34,
        _IMM16_X1_PCREL = 32,
        _IMM16_X1_TLS_GD = 67,
        _IMM16_X1_TLS_GD_HA = 73,
        _IMM16_X1_TLS_GD_HI = 71,
        _IMM16_X1_TLS_GD_LO = 69,
        _IMM16_X1_TLS_IE = 75,
        _IMM16_X1_TLS_IE_HA = 81,
        _IMM16_X1_TLS_IE_HI = 79,
        _IMM16_X1_TLS_IE_LO = 77,
        _IMM16_X1_TLS_LE = 86,
        _IMM16_X1_TLS_LE_HA = 92,
        _IMM16_X1_TLS_LE_HI = 90,
        _IMM16_X1_TLS_LE_LO = 88,
        _IMM8_X0 = 17,
        _IMM8_X0_TLS_GD_ADD = 61,
        _IMM8_X1 = 19,
        _IMM8_X1_TLS_GD_ADD = 62,
        _IMM8_Y0 = 18,
        _IMM8_Y0_TLS_GD_ADD = 63,
        _IMM8_Y1 = 20,
        _IMM8_Y1_TLS_GD_ADD = 64,
        _JMP_SLOT = 12,
        _JOFFLONG_X1 = 15,
        _JOFFLONG_X1_PLT = 16,
        _LO16 = 7,
        _MF_IMM15_X1 = 22,
        _MMEND_X0 = 48,
        _MMEND_X1 = 50,
        _MMSTART_X0 = 47,
        _MMSTART_X1 = 49,
        _MT_IMM15_X1 = 21,
        _NONE = 0,
        _NUM = 130,
        _RELATIVE = 13,
        _SHAMT_X0 = 51,
        _SHAMT_X1 = 52,
        _SHAMT_Y0 = 53,
        _SHAMT_Y1 = 54,
        _TLS_DTPMOD32 = 82,
        _TLS_DTPOFF32 = 83,
        _TLS_GD_CALL = 60,
        _TLS_IE_LOAD = 65,
        _TLS_TPOFF32 = 84,
    };

    pub const _X86_64 = enum(u8) {
        _16 = 12,
        _32 = 10,
        _32S = 11,
        _64 = 1,
        _8 = 14,
        _COPY = 5,
        _DTPMOD64 = 16,
        _DTPOFF32 = 21,
        _DTPOFF64 = 17,
        _GLOB_DAT = 6,
        _GOT32 = 3,
        _GOT64 = 27,
        _GOTOFF64 = 25,
        _GOTPC32 = 26,
        _GOTPC32_TLSDESC = 34,
        _GOTPC64 = 29,
        _GOTPCREL = 9,
        _GOTPCREL64 = 28,
        _GOTPCRELX = 41,
        _GOTPLT64 = 30,
        _GOTTPOFF = 22,
        _IRELATIVE = 37,
        _JUMP_SLOT = 7,
        _NONE = 0,
        _NUM = 43,
        _PC16 = 13,
        _PC32 = 2,
        _PC64 = 24,
        _PC8 = 15,
        _PLT32 = 4,
        _PLTOFF64 = 31,
        _RELATIVE = 8,
        _RELATIVE64 = 38,
        _REX_GOTPCRELX = 42,
        _SIZE32 = 32,
        _SIZE64 = 33,
        _TLSDESC = 36,
        _TLSDESC_CALL = 35,
        _TLSGD = 19,
        _TLSLD = 20,
        _TPOFF32 = 23,
        _TPOFF64 = 18,
    };
};

pub const SELFMAG = 4;

pub const Section = struct {
    pub const Header = struct {
        pub const Flags = enum(u64) {
            _ALLOC = (1 << 1),
            _ALPHA_GPREL = 0x10000000,
            _ARM_COMDEF = 0x80000000,
            _ARM_ENTRYSECT = 0x10000000,
            _COMPRESSED = (1 << 11),
            _EXCLUDE = (1 << 31),
            _EXECINSTR = (1 << 2),
            _GNU_RETAIN = (1 << 21),
            _GROUP = (1 << 9),
            _IA_64_NORECOV = 0x20000000,
            _IA_64_SHORT = 0x10000000,
            _INFO_LINK = (1 << 6),
            _LINK_ORDER = (1 << 7),
            _MASKOS = 0x0ff00000,
            _MASKPROC = 0xf0000000,
            _MERGE = (1 << 4),
            _MIPS_ADDR = 0x40000000,
            _MIPS_GPREL = 0x10000000,
            _MIPS_LOCAL = 0x04000000,
            _MIPS_MERGE = 0x20000000,
            _MIPS_NAMES = 0x02000000,
            _MIPS_NODUPE = 0x01000000,
            _MIPS_NOSTRIP = 0x08000000,
            _MIPS_STRINGS = 0x80000000,
            _ORDERED = (1 << 30),
            _OS_NONCONFORMING = (1 << 8),
            _PARISC_HUGE = 0x40000000,
            _PARISC_SBP = 0x80000000,
            _PARISC_SHORT = 0x20000000,
            _STRINGS = (1 << 5),
            _TLS = (1 << 10),
            _WRITE = (1 << 0),
        };

        pub const Number = enum(u16) {
            _ABS = 0xfff1,
            _AFTER = 0xff01,
            _BEFORE = 0xff00,
            _COMMON = 0xfff2,
            _HIOS = 0xff3f,
            _HIPROC = 0xff1f,
            _HIRESERVE = 0xffff,
            _LOOS = 0xff20,
            _LOPROC = 0xff00,
            _LORESERVE = 0xff00,
            _MIPS_ACOMMON = 0xff00,
            _MIPS_DATA = 0xff02,
            _MIPS_SCOMMON = 0xff03,
            _MIPS_SUNDEFINED = 0xff04,
            _MIPS_TEXT = 0xff01,
            _PARISC_ANSI_COMMON = 0xff00,
            _PARISC_HUGE_COMMON = 0xff01,
            _UNDEF = 0,
            _XINDEX = 0xffff,
        };

        pub const Types = enum(u32) {
            _ALPHA_DEBUG = 0x70000001,
            _ALPHA_REGINFO = 0x70000002,
            _ARC_ATTRIBUTES = (Section.Header.Types._LOPROC + 1),
            _ARM_ATTRIBUTES = (Section.Header.Types._LOPROC + 3),
            _ARM_EXIDX = (Section.Header.Types._LOPROC + 1),
            _ARM_PREEMPTMAP = (Section.Header.Types._LOPROC + 2),
            _CHECKSUM = 0x6ffffff8,
            _CSKY_ATTRIBUTES = (Section.Header.Types._LOPROC + 1),
            _DYNAMIC = 6,
            _DYNSYM = 11,
            _FINI_ARRAY = 15,
            _GNU_ATTRIBUTES = 0x6ffffff5,
            _GNU_HASH = 0x6ffffff6,
            _GNU_LIBLIST = 0x6ffffff7,
            _GNU_verdef = 0x6ffffffd,
            _GNU_verneed = 0x6ffffffe,
            _GNU_versym = 0x6fffffff,
            _GROUP = 17,
            _HASH = 5,
            _HIOS = 0x6fffffff,
            _HIPROC = 0x7fffffff,
            _HISUNW = 0x6fffffff,
            _HIUSER = 0x8fffffff,
            _IA_64_EXT = (Section.Header.Types._LOPROC + 0),
            _IA_64_UNWIND = (Section.Header.Types._LOPROC + 1),
            _INIT_ARRAY = 14,
            _LOOS = 0x60000000,
            _LOPROC = 0x70000000,
            _LOSUNW = 0x6ffffffa,
            _LOUSER = 0x80000000,
            _MIPS_ABIFLAGS = 0x7000002a,
            _MIPS_AUXSYM = 0x70000016,
            _MIPS_CONFLICT = 0x70000002,
            _MIPS_CONTENT = 0x7000000c,
            _MIPS_DEBUG = 0x70000005,
            _MIPS_DELTACLASS = 0x7000001d,
            _MIPS_DELTADECL = 0x7000001f,
            _MIPS_DELTAINST = 0x7000001c,
            _MIPS_DELTASYM = 0x7000001b,
            _MIPS_DENSE = 0x70000013,
            _MIPS_DWARF = 0x7000001e,
            _MIPS_EH_REGION = 0x70000027,
            _MIPS_EVENTS = 0x70000021,
            _MIPS_EXTSYM = 0x70000012,
            _MIPS_FDESC = 0x70000011,
            _MIPS_GPTAB = 0x70000003,
            _MIPS_IFACE = 0x7000000b,
            _MIPS_LIBLIST = 0x70000000,
            _MIPS_LINE = 0x70000019,
            _MIPS_LOCSTR = 0x70000018,
            _MIPS_LOCSYM = 0x70000015,
            _MIPS_MSYM = 0x70000001,
            _MIPS_OPTIONS = 0x7000000d,
            _MIPS_OPTSYM = 0x70000017,
            _MIPS_PACKAGE = 0x70000007,
            _MIPS_PACKSYM = 0x70000008,
            _MIPS_PDESC = 0x70000014,
            _MIPS_PDR_EXCEPTION = 0x70000029,
            _MIPS_PIXIE = 0x70000023,
            _MIPS_REGINFO = 0x70000006,
            _MIPS_RELD = 0x70000009,
            _MIPS_RFDESC = 0x7000001a,
            _MIPS_SHDR = 0x70000010,
            _MIPS_SYMBOL_LIB = 0x70000020,
            _MIPS_TRANSLATE = 0x70000022,
            _MIPS_UCODE = 0x70000004,
            _MIPS_WHIRL = 0x70000026,
            _MIPS_XHASH = 0x7000002b,
            _MIPS_XLATE = 0x70000024,
            _MIPS_XLATE_DEBUG = 0x70000025,
            _MIPS_XLATE_OLD = 0x70000028,
            _NOBITS = 8,
            _NOTE = 7,
            _NULL = 0,
            _NUM = 20,
            _PARISC_DOC = 0x70000002,
            _PARISC_EXT = 0x70000000,
            _PARISC_UNWIND = 0x70000001,
            _PREINIT_ARRAY = 16,
            _PROGBITS = 1,
            _REL = 9,
            _RELA = 4,
            _RELR = 19,
            _RISCV_ATTRIBUTES = (Section.Header.Types._LOPROC + 3),
            _SHLIB = 10,
            _STRTAB = 3,
            _SUNW_COMDAT = 0x6ffffffb,
            _SUNW_move = 0x6ffffffa,
            _SUNW_syminfo = 0x6ffffffc,
            _SYMTAB = 2,
            _SYMTAB_SHNDX = 18,
            _X86_64_UNWIND = 0x70000001,
        };
    };
};

pub const Symbol = struct {
    pub const Binding = enum(u8) {
        _GLOBAL = 1,
        _GNU_UNIQUE = 10,
        _HIOS = 12,
        _HIPROC = 15,
        _LOCAL = 0,
        _LOOS = 10,
        _LOPROC = 13,
        _MIPS_SPLIT_COMMON = 13,
        _NUM = 3,
        _WEAK = 2,
    };

    pub const Index = enum(u8) {
        _UNDEF = 0,
    };

    pub const Other = enum(u8) {
        _AARCH64_VARIANT_PCS = 0x80,
        _ALPHA_NOPV = 0x80,
        _ALPHA_STD_GPLOAD = 0x88,
        _MIPS_DEFAULT = 0x0,
        _MIPS_HIDDEN = 0x2,
        _MIPS_INTERNAL = 0x1,
        _MIPS_PLT = 0x8,
        _MIPS_PROTECTED = 0x3,
        _MIPS_SC_ALIGN_UNUSED = 0xff,
        _PPC64_LOCAL_BIT = 5,
        _PPC64_LOCAL_MASK = (7 << Symbol.Other_PPC64_LOCAL_BIT),
        _RISCV_VARIANT_CC = 0x80,
    };

    pub const Type = enum(u8) {
        _ARM_16BIT = Symbol.Type._HIPROC,
        _ARM_TFUNC = Symbol.Type._LOPROC,
        _COMMON = 5,
        _FILE = 4,
        _FUNC = 2,
        _GNU_IFUNC = 10,
        _HIOS = 12,
        _HIPROC = 15,
        _HP_OPAQUE = (Symbol.Type._LOOS + 0x1),
        _HP_STUB = (Symbol.Type._LOOS + 0x2),
        _LOOS = 10,
        _LOPROC = 13,
        _NOTYPE = 0,
        _NUM = 7,
        _OBJECT = 1,
        _PARISC_MILLICODE = 13,
        _SECTION = 3,
        _SPARC_REGISTER = 13,
        _TLS = 6,
    };

    pub const Visibility = enum(u8) {
        _DEFAULT = 0,
        _HIDDEN = 2,
        _INTERNAL = 1,
        _PROTECTED = 3,
    };

    pub const Info = enum(u16) {
        _BT_LOWRESERVE = 0xff00,
        _BT_PARENT = 0xfffe,
        _BT_SELF = 0xffff,
        _CURRENT = 1,
        _FLG_COPY = 0x0004,
        _FLG_DIRECT = 0x0001,
        _FLG_LAZYLOAD = 0x0008,
        _FLG_PASSTHRU = 0x0002,
        _NONE = 0,
        _NUM = 2,
    };
};

pub const Version = enum(u16) {
    _DEF_CURRENT = 1,
    _DEF_NONE = 0,
    _DEF_NUM = 2,
    _FLG_BASE = 0x1,
    _FLG_WEAK = 0x2,
    _NDX_ELIMINATE = 0xff01,
    _NDX_GLOBAL = 1,
    _NDX_LOCAL = 0,
    _NDX_LORESERVE = 0xff00,
    _NEED_CURRENT = 1,
    _NEED_NONE = 0,
    _NEED_NUM = 2,
};
