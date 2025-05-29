const std = @import("std");
pub const AT_BASE = 7;
pub const AT_BASE_PLATFORM = 24;
pub const AT_CLKTCK = 17;
pub const AT_DCACHEBSIZE = 19;
pub const AT_EGID = 14;
pub const AT_ENTRY = 9;
pub const AT_EUID = 12;
pub const AT_EXECFD = 2;
pub const AT_EXECFN = 31;
pub const AT_FLAGS = 8;
pub const AT_FPUCW = 18;
pub const AT_GID = 13;
pub const AT_HWCAP = 16;
pub const AT_HWCAP2 = 26;
pub const AT_HWCAP3 = 29;
pub const AT_HWCAP4 = 30;
pub const AT_ICACHEBSIZE = 20;
pub const AT_IGNORE = 1;
pub const AT_IGNOREPPC = 22;
pub const AT_L1D_CACHEGEOMETRY = 43;
pub const AT_L1D_CACHESHAPE = 35;
pub const AT_L1D_CACHESIZE = 42;
pub const AT_L1I_CACHEGEOMETRY = 41;
pub const AT_L1I_CACHESHAPE = 34;
pub const AT_L1I_CACHESIZE = 40;
pub const AT_L2_CACHEGEOMETRY = 45;
pub const AT_L2_CACHESHAPE = 36;
pub const AT_L2_CACHESIZE = 44;
pub const AT_L3_CACHEGEOMETRY = 47;
pub const AT_L3_CACHESHAPE = 37;
pub const AT_L3_CACHESIZE = 46;
pub const AT_MINSIGSTKSZ = 51;
pub const AT_NOTELF = 10;
pub const AT_NULL = 0;
pub const AT_PAGESZ = 6;
pub const AT_PHDR = 3;
pub const AT_PHENT = 4;
pub const AT_PHNUM = 5;
pub const AT_PLATFORM = 15;
pub const AT_RANDOM = 25;
pub const AT_RSEQ_ALIGN = 28;
pub const AT_RSEQ_FEATURE_SIZE = 27;
pub const AT_SECURE = 23;
pub const AT_SYSINFO = 32;
pub const AT_SYSINFO_EHDR = 33;
pub const AT_UCACHEBSIZE = 21;
pub const AT_UID = 11;

pub const DF_1_CONFALT = 0x00002000;
pub const DF_1_DIRECT = 0x00000100;
pub const DF_1_DISPRELDNE = 0x00008000;
pub const DF_1_DISPRELPND = 0x00010000;
pub const DF_1_EDITED = 0x00200000;
pub const DF_1_ENDFILTEE = 0x00004000;
pub const DF_1_GLOBAL = 0x00000002;
pub const DF_1_GLOBAUDIT = 0x01000000;
pub const DF_1_GROUP = 0x00000004;
pub const DF_1_IGNMULDEF = 0x00040000;
pub const DF_1_INITFIRST = 0x00000020;
pub const DF_1_INTERPOSE = 0x00000400;
pub const DF_1_KMOD = 0x10000000;
pub const DF_1_LOADFLTR = 0x00000010;
pub const DF_1_NOCOMMON = 0x40000000;
pub const DF_1_NODEFLIB = 0x00000800;
pub const DF_1_NODELETE = 0x00000008;
pub const DF_1_NODIRECT = 0x00020000;
pub const DF_1_NODUMP = 0x00001000;
pub const DF_1_NOHDR = 0x00100000;
pub const DF_1_NOKSYMS = 0x00080000;
pub const DF_1_NOOPEN = 0x00000040;
pub const DF_1_NORELOC = 0x00400000;
pub const DF_1_NOW = 0x00000001;
pub const DF_1_ORIGIN = 0x00000080;
pub const DF_1_PIE = 0x08000000;
pub const DF_1_SINGLETON = 0x02000000;
pub const DF_1_STUB = 0x04000000;
pub const DF_1_SYMINTPOSE = 0x00800000;
pub const DF_1_TRANS = 0x00000200;
pub const DF_1_WEAKFILTER = 0x20000000;

pub const DF_BIND_NOW = 0x00000008;
pub const DF_ORIGIN = 0x00000001;
pub const DF_P1_GROUPPERM = 0x00000002;
pub const DF_P1_LAZYLOAD = 0x00000001;
pub const DF_STATIC_TLS = 0x00000010;
pub const DF_SYMBOLIC = 0x00000002;
pub const DF_TEXTREL = 0x00000004;

pub const DTF_1_CONFEXP = 0x00000002;
pub const DTF_1_PARINIT = 0x00000001;

pub const DT_AARCH64_BTI_PLT = (DT_LOPROC + 1);
pub const DT_AARCH64_NUM = 6;
pub const DT_AARCH64_PAC_PLT = (DT_LOPROC + 3);
pub const DT_AARCH64_VARIANT_PCS = (DT_LOPROC + 5);
pub const DT_ADDRNUM = 11;
pub const DT_ADDRRNGHI = 0x6ffffeff;
pub const DT_ADDRRNGLO = 0x6ffffe00;
pub const DT_ALPHA_NUM = 1;
pub const DT_ALPHA_PLTRO = (DT_LOPROC + 0);
pub const DT_AUDIT = 0x6ffffefc;
pub const DT_AUXILIARY = 0x7ffffffd;
pub const DT_BIND_NOW = 24;
pub const DT_CHECKSUM = 0x6ffffdf8;
pub const DT_CONFIG = 0x6ffffefa;
pub const DT_DEBUG = 21;
pub const DT_DEPAUDIT = 0x6ffffefb;
pub const DT_ENCODING = 32;
pub const DT_EXTRANUM = 3;
pub const DT_FEATURE_1 = 0x6ffffdfc;
pub const DT_FILTER = 0x7fffffff;
pub const DT_FINI = 13;
pub const DT_FINI_ARRAY = 26;
pub const DT_FINI_ARRAYSZ = 28;
pub const DT_FLAGS = 30;
pub const DT_FLAGS_1 = 0x6ffffffb;
pub const DT_GNU_CONFLICT = 0x6ffffef8;
pub const DT_GNU_CONFLICTSZ = 0x6ffffdf6;
pub const DT_GNU_HASH = 0x6ffffef5;
pub const DT_GNU_LIBLIST = 0x6ffffef9;
pub const DT_GNU_LIBLISTSZ = 0x6ffffdf7;
pub const DT_GNU_PRELINKED = 0x6ffffdf5;
pub const DT_HASH = 4;
pub const DT_HIOS = 0x6ffff000;
pub const DT_HIPROC = 0x7fffffff;
pub const DT_IA_64_NUM = 1;
pub const DT_IA_64_PLT_RESERVE = (DT_LOPROC + 0);
pub const DT_INIT = 12;
pub const DT_INIT_ARRAY = 25;
pub const DT_INIT_ARRAYSZ = 27;
pub const DT_JMPREL = 23;
pub const DT_LOOS = 0x6000000d;
pub const DT_LOPROC = 0x70000000;
pub const DT_MIPS_AUX_DYNAMIC = 0x70000031;
pub const DT_MIPS_BASE_ADDRESS = 0x70000006;
pub const DT_MIPS_COMPACT_SIZE = 0x7000002f;
pub const DT_MIPS_CONFLICT = 0x70000008;
pub const DT_MIPS_CONFLICTNO = 0x7000000b;
pub const DT_MIPS_CXX_FLAGS = 0x70000022;
pub const DT_MIPS_DELTA_CLASS = 0x70000017;
pub const DT_MIPS_DELTA_CLASSSYM = 0x70000020;
pub const DT_MIPS_DELTA_CLASSSYM_NO = 0x70000021;
pub const DT_MIPS_DELTA_CLASS_NO = 0x70000018;
pub const DT_MIPS_DELTA_INSTANCE = 0x70000019;
pub const DT_MIPS_DELTA_INSTANCE_NO = 0x7000001a;
pub const DT_MIPS_DELTA_RELOC = 0x7000001b;
pub const DT_MIPS_DELTA_RELOC_NO = 0x7000001c;
pub const DT_MIPS_DELTA_SYM = 0x7000001d;
pub const DT_MIPS_DELTA_SYM_NO = 0x7000001e;
pub const DT_MIPS_DYNSTR_ALIGN = 0x7000002b;
pub const DT_MIPS_FLAGS = 0x70000005;
pub const DT_MIPS_GOTSYM = 0x70000013;
pub const DT_MIPS_GP_VALUE = 0x70000030;
pub const DT_MIPS_HIDDEN_GOTIDX = 0x70000027;
pub const DT_MIPS_HIPAGENO = 0x70000014;
pub const DT_MIPS_ICHECKSUM = 0x70000003;
pub const DT_MIPS_INTERFACE = 0x7000002a;
pub const DT_MIPS_INTERFACE_SIZE = 0x7000002c;
pub const DT_MIPS_IVERSION = 0x70000004;
pub const DT_MIPS_LIBLIST = 0x70000009;
pub const DT_MIPS_LIBLISTNO = 0x70000010;
pub const DT_MIPS_LOCALPAGE_GOTIDX = 0x70000025;
pub const DT_MIPS_LOCAL_GOTIDX = 0x70000026;
pub const DT_MIPS_LOCAL_GOTNO = 0x7000000a;
pub const DT_MIPS_MSYM = 0x70000007;
pub const DT_MIPS_NUM = 0x37;
pub const DT_MIPS_OPTIONS = 0x70000029;
pub const DT_MIPS_PERF_SUFFIX = 0x7000002e;
pub const DT_MIPS_PIXIE_INIT = 0x70000023;
pub const DT_MIPS_PLTGOT = 0x70000032;
pub const DT_MIPS_PROTECTED_GOTIDX = 0x70000028;
pub const DT_MIPS_RLD_MAP = 0x70000016;
pub const DT_MIPS_RLD_MAP_REL = 0x70000035;
pub const DT_MIPS_RLD_TEXT_RESOLVE_ADDR = 0x7000002d;
pub const DT_MIPS_RLD_VERSION = 0x70000001;
pub const DT_MIPS_RWPLT = 0x70000034;
pub const DT_MIPS_SYMBOL_LIB = 0x70000024;
pub const DT_MIPS_SYMTABNO = 0x70000011;
pub const DT_MIPS_TIME_STAMP = 0x70000002;
pub const DT_MIPS_UNREFEXTNO = 0x70000012;
pub const DT_MIPS_XHASH = 0x70000036;
pub const DT_MOVEENT = 0x6ffffdfa;
pub const DT_MOVESZ = 0x6ffffdfb;
pub const DT_MOVETAB = 0x6ffffefe;
pub const DT_NEEDED = 1;
pub const DT_NIOS2_GP = 0x70000002;
pub const DT_NULL = 0;
pub const DT_NUM = 38;
pub const DT_PLTGOT = 3;
pub const DT_PLTPAD = 0x6ffffefd;
pub const DT_PLTPADSZ = 0x6ffffdf9;
pub const DT_PLTREL = 20;
pub const DT_PLTRELSZ = 2;
pub const DT_POSFLAG_1 = 0x6ffffdfd;
pub const DT_PPC64_GLINK = (DT_LOPROC + 0);
pub const DT_PPC64_NUM = 4;
pub const DT_PPC64_OPD = (DT_LOPROC + 1);
pub const DT_PPC64_OPDSZ = (DT_LOPROC + 2);
pub const DT_PPC64_OPT = (DT_LOPROC + 3);
pub const DT_PPC_GOT = (DT_LOPROC + 0);
pub const DT_PPC_NUM = 2;
pub const DT_PPC_OPT = (DT_LOPROC + 1);
pub const DT_PREINIT_ARRAY = 32;
pub const DT_PREINIT_ARRAYSZ = 33;
pub const DT_PROCNUM = DT_MIPS_NUM;
pub const DT_REL = 17;
pub const DT_RELA = 7;
pub const DT_RELACOUNT = 0x6ffffff9;
pub const DT_RELAENT = 9;
pub const DT_RELASZ = 8;
pub const DT_RELCOUNT = 0x6ffffffa;
pub const DT_RELENT = 19;
pub const DT_RELR = 36;
pub const DT_RELRENT = 37;
pub const DT_RELRSZ = 35;
pub const DT_RELSZ = 18;
pub const DT_RISCV_VARIANT_CC = (DT_LOPROC + 1);
pub const DT_RPATH = 15;
pub const DT_RUNPATH = 29;
pub const DT_SONAME = 14;
pub const DT_SPARC_NUM = 2;
pub const DT_SPARC_REGISTER = 0x70000001;
pub const DT_STRSZ = 10;
pub const DT_STRTAB = 5;
pub const DT_SYMBOLIC = 16;
pub const DT_SYMENT = 11;
pub const DT_SYMINENT = 0x6ffffdff;
pub const DT_SYMINFO = 0x6ffffeff;
pub const DT_SYMINSZ = 0x6ffffdfe;
pub const DT_SYMTAB = 6;
pub const DT_SYMTAB_SHNDX = 34;
pub const DT_TEXTREL = 22;
pub const DT_TLSDESC_GOT = 0x6ffffef7;
pub const DT_TLSDESC_PLT = 0x6ffffef6;
pub const DT_VALNUM = 12;
pub const DT_VALRNGHI = 0x6ffffdff;
pub const DT_VALRNGLO = 0x6ffffd00;
pub const DT_VERDEF = 0x6ffffffc;
pub const DT_VERDEFNUM = 0x6ffffffd;
pub const DT_VERNEED = 0x6ffffffe;
pub const DT_VERNEEDNUM = 0x6fffffff;
pub const DT_VERSIONTAGNUM = 16;
pub const DT_VERSYM = 0x6ffffff0;
pub const DT_X86_64_NUM = 4;
pub const DT_X86_64_PLT = (DT_LOPROC + 0);
pub const DT_X86_64_PLTENT = (DT_LOPROC + 3);
pub const DT_X86_64_PLTSZ = (DT_LOPROC + 1);

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
pub const EF_ARM_EABIMASK = 0xFF000000;
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
pub const NT_LWPSINFO = 17;
pub const NT_LWPSTATUS = 16;
pub const NT_PLATFORM = 5;
pub const NT_PRCRED = 14;
pub const NT_PRFPREG = 2;
pub const NT_PRFPXREG = 20;
pub const NT_PRPSINFO = 3;
pub const NT_PRSTATUS = 1;
pub const NT_PRXFPREG = 0x46e62b7f;
pub const NT_PRXREG = 4;
pub const NT_PSINFO = 13;
pub const NT_PSTATUS = 10;
pub const NT_SIGINFO = 0x53494749;
pub const NT_TASKSTRUCT = 4;
pub const NT_UTSNAME = 15;
pub const NT_VERSION = 1;
pub const NT_VMCOREDD = 0x700;
pub const NT_GWINDOWS = 7;

pub const NT_GNU_ABI_TAG = 1;
pub const NT_GNU_BUILD_ID = 3;
pub const NT_GNU_GOLD_VERSION = 4;
pub const NT_GNU_HWCAP = 2;
pub const NT_GNU_PROPERTY_TYPE_0 = 5;

pub const NT_LOONGARCH_CPUCFG = 0xa00;
pub const NT_LOONGARCH_CSR = 0xa01;
pub const NT_LOONGARCH_HW_BREAK = 0xa05;
pub const NT_LOONGARCH_HW_WATCH = 0xa06;
pub const NT_LOONGARCH_LASX = 0xa03;
pub const NT_LOONGARCH_LBT = 0xa04;
pub const NT_LOONGARCH_LSX = 0xa02;

pub const NT_MIPS_DSP = 0x800;
pub const NT_MIPS_FP_MODE = 0x801;
pub const NT_MIPS_MSA = 0x802;

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
pub const PF_R = (1 << 2);
pub const PF_W = (1 << 1);
pub const PF_X = (1 << 0);
pub const PF_MASKOS = 0x0ff00000;
pub const PF_MASKPROC = 0xf0000000;

pub const PF_HP_CODE = 0x01000000;
pub const PF_HP_FAR_SHARED = 0x00200000;
pub const PF_HP_LAZYSWAP = 0x04000000;
pub const PF_HP_MODIFY = 0x02000000;
pub const PF_HP_NEAR_SHARED = 0x00400000;
pub const PF_HP_PAGE_SIZE = 0x00100000;
pub const PF_HP_SBP = 0x08000000;

pub const PF_IA_64_NORECOV = 0x80000000;
pub const PF_MIPS_LOCAL = 0x10000000;
pub const PF_PARISC_SBP = 0x08000000;
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

pub const R_386_16 = 20;
pub const R_386_32 = 1;
pub const R_386_32PLT = 11;
pub const R_386_8 = 22;
pub const R_386_COPY = 5;
pub const R_386_GLOB_DAT = 6;
pub const R_386_GOT32 = 3;
pub const R_386_GOT32X = 43;
pub const R_386_GOTOFF = 9;
pub const R_386_GOTPC = 10;
pub const R_386_IRELATIVE = 42;
pub const R_386_JMP_SLOT = 7;
pub const R_386_NONE = 0;
pub const R_386_NUM = 44;
pub const R_386_PC16 = 21;
pub const R_386_PC32 = 2;
pub const R_386_PC8 = 23;
pub const R_386_PLT32 = 4;
pub const R_386_RELATIVE = 8;
pub const R_386_SIZE32 = 38;
pub const R_386_TLS_DESC = 41;
pub const R_386_TLS_DESC_CALL = 40;
pub const R_386_TLS_DTPMOD32 = 35;
pub const R_386_TLS_DTPOFF32 = 36;
pub const R_386_TLS_GD = 18;
pub const R_386_TLS_GD_32 = 24;
pub const R_386_TLS_GD_CALL = 26;
pub const R_386_TLS_GD_POP = 27;
pub const R_386_TLS_GD_PUSH = 25;
pub const R_386_TLS_GOTDESC = 39;
pub const R_386_TLS_GOTIE = 16;
pub const R_386_TLS_IE = 15;
pub const R_386_TLS_IE_32 = 33;
pub const R_386_TLS_LDM = 19;
pub const R_386_TLS_LDM_32 = 28;
pub const R_386_TLS_LDM_CALL = 30;
pub const R_386_TLS_LDM_POP = 31;
pub const R_386_TLS_LDM_PUSH = 29;
pub const R_386_TLS_LDO_32 = 32;
pub const R_386_TLS_LE = 17;
pub const R_386_TLS_LE_32 = 34;
pub const R_386_TLS_TPOFF = 14;
pub const R_386_TLS_TPOFF32 = 37;

pub const R_390_12 = 2;
pub const R_390_16 = 3;
pub const R_390_20 = 57;
pub const R_390_32 = 4;
pub const R_390_64 = 22;
pub const R_390_8 = 1;
pub const R_390_COPY = 9;
pub const R_390_GLOB_DAT = 10;
pub const R_390_GOT12 = 6;
pub const R_390_GOT16 = 15;
pub const R_390_GOT20 = 58;
pub const R_390_GOT32 = 7;
pub const R_390_GOT64 = 24;
pub const R_390_GOTENT = 26;
pub const R_390_GOTOFF16 = 27;
pub const R_390_GOTOFF32 = 13;
pub const R_390_GOTOFF64 = 28;
pub const R_390_GOTPC = 14;
pub const R_390_GOTPCDBL = 21;
pub const R_390_GOTPLT12 = 29;
pub const R_390_GOTPLT16 = 30;
pub const R_390_GOTPLT20 = 59;
pub const R_390_GOTPLT32 = 31;
pub const R_390_GOTPLT64 = 32;
pub const R_390_GOTPLTENT = 33;
pub const R_390_IRELATIVE = 61;
pub const R_390_JMP_SLOT = 11;
pub const R_390_NONE = 0;
pub const R_390_NUM = 62;
pub const R_390_PC16 = 16;
pub const R_390_PC16DBL = 17;
pub const R_390_PC32 = 5;
pub const R_390_PC32DBL = 19;
pub const R_390_PC64 = 23;
pub const R_390_PLT16DBL = 18;
pub const R_390_PLT32 = 8;
pub const R_390_PLT32DBL = 20;
pub const R_390_PLT64 = 25;
pub const R_390_PLTOFF16 = 34;
pub const R_390_PLTOFF32 = 35;
pub const R_390_PLTOFF64 = 36;
pub const R_390_RELATIVE = 12;
pub const R_390_TLS_DTPMOD = 54;
pub const R_390_TLS_DTPOFF = 55;
pub const R_390_TLS_GD32 = 40;
pub const R_390_TLS_GD64 = 41;
pub const R_390_TLS_GDCALL = 38;
pub const R_390_TLS_GOTIE12 = 42;
pub const R_390_TLS_GOTIE20 = 60;
pub const R_390_TLS_GOTIE32 = 43;
pub const R_390_TLS_GOTIE64 = 44;
pub const R_390_TLS_IE32 = 47;
pub const R_390_TLS_IE64 = 48;
pub const R_390_TLS_IEENT = 49;
pub const R_390_TLS_LDCALL = 39;
pub const R_390_TLS_LDM32 = 45;
pub const R_390_TLS_LDM64 = 46;
pub const R_390_TLS_LDO32 = 52;
pub const R_390_TLS_LDO64 = 53;
pub const R_390_TLS_LE32 = 50;
pub const R_390_TLS_LE64 = 51;
pub const R_390_TLS_LOAD = 37;
pub const R_390_TLS_TPOFF = 56;

pub const R_68K_16 = 2;
pub const R_68K_32 = 1;
pub const R_68K_8 = 3;
pub const R_68K_COPY = 19;
pub const R_68K_GLOB_DAT = 20;
pub const R_68K_GOT16 = 8;
pub const R_68K_GOT16O = 11;
pub const R_68K_GOT32 = 7;
pub const R_68K_GOT32O = 10;
pub const R_68K_GOT8 = 9;
pub const R_68K_GOT8O = 12;
pub const R_68K_JMP_SLOT = 21;
pub const R_68K_NONE = 0;
pub const R_68K_NUM = 43;
pub const R_68K_PC16 = 5;
pub const R_68K_PC32 = 4;
pub const R_68K_PC8 = 6;
pub const R_68K_PLT16 = 14;
pub const R_68K_PLT16O = 17;
pub const R_68K_PLT32 = 13;
pub const R_68K_PLT32O = 16;
pub const R_68K_PLT8 = 15;
pub const R_68K_PLT8O = 18;
pub const R_68K_RELATIVE = 22;
pub const R_68K_TLS_DTPMOD32 = 40;
pub const R_68K_TLS_DTPREL32 = 41;
pub const R_68K_TLS_GD16 = 26;
pub const R_68K_TLS_GD32 = 25;
pub const R_68K_TLS_GD8 = 27;
pub const R_68K_TLS_IE16 = 35;
pub const R_68K_TLS_IE32 = 34;
pub const R_68K_TLS_IE8 = 36;
pub const R_68K_TLS_LDM16 = 29;
pub const R_68K_TLS_LDM32 = 28;
pub const R_68K_TLS_LDM8 = 30;
pub const R_68K_TLS_LDO16 = 32;
pub const R_68K_TLS_LDO32 = 31;
pub const R_68K_TLS_LDO8 = 33;
pub const R_68K_TLS_LE16 = 38;
pub const R_68K_TLS_LE32 = 37;
pub const R_68K_TLS_LE8 = 39;
pub const R_68K_TLS_TPREL32 = 42;

pub const R_AARCH64_ABS16 = 259;
pub const R_AARCH64_ABS32 = 258;
pub const R_AARCH64_ABS64 = 257;
pub const R_AARCH64_ADD_ABS_LO12_NC = 277;
pub const R_AARCH64_ADR_GOT_PAGE = 311;
pub const R_AARCH64_ADR_PREL_LO21 = 274;
pub const R_AARCH64_ADR_PREL_PG_HI21 = 275;
pub const R_AARCH64_ADR_PREL_PG_HI21_NC = 276;
pub const R_AARCH64_CALL26 = 283;
pub const R_AARCH64_CONDBR19 = 280;
pub const R_AARCH64_COPY = 1024;
pub const R_AARCH64_GLOB_DAT = 1025;
pub const R_AARCH64_GOTREL32 = 308;
pub const R_AARCH64_GOTREL64 = 307;
pub const R_AARCH64_GOT_LD_PREL19 = 309;
pub const R_AARCH64_IRELATIVE = 1032;
pub const R_AARCH64_JUMP26 = 282;
pub const R_AARCH64_JUMP_SLOT = 1026;
pub const R_AARCH64_LD64_GOTOFF_LO15 = 310;
pub const R_AARCH64_LD64_GOTPAGE_LO15 = 313;
pub const R_AARCH64_LD64_GOT_LO12_NC = 312;
pub const R_AARCH64_LDST128_ABS_LO12_NC = 299;
pub const R_AARCH64_LDST16_ABS_LO12_NC = 284;
pub const R_AARCH64_LDST32_ABS_LO12_NC = 285;
pub const R_AARCH64_LDST64_ABS_LO12_NC = 286;
pub const R_AARCH64_LDST8_ABS_LO12_NC = 278;
pub const R_AARCH64_LD_PREL_LO19 = 273;
pub const R_AARCH64_MOVW_GOTOFF_G0 = 300;
pub const R_AARCH64_MOVW_GOTOFF_G0_NC = 301;
pub const R_AARCH64_MOVW_GOTOFF_G1 = 302;
pub const R_AARCH64_MOVW_GOTOFF_G1_NC = 303;
pub const R_AARCH64_MOVW_GOTOFF_G2 = 304;
pub const R_AARCH64_MOVW_GOTOFF_G2_NC = 305;
pub const R_AARCH64_MOVW_GOTOFF_G3 = 306;
pub const R_AARCH64_MOVW_PREL_G0 = 287;
pub const R_AARCH64_MOVW_PREL_G0_NC = 288;
pub const R_AARCH64_MOVW_PREL_G1 = 289;
pub const R_AARCH64_MOVW_PREL_G1_NC = 290;
pub const R_AARCH64_MOVW_PREL_G2 = 291;
pub const R_AARCH64_MOVW_PREL_G2_NC = 292;
pub const R_AARCH64_MOVW_PREL_G3 = 293;
pub const R_AARCH64_MOVW_SABS_G0 = 270;
pub const R_AARCH64_MOVW_SABS_G1 = 271;
pub const R_AARCH64_MOVW_SABS_G2 = 272;
pub const R_AARCH64_MOVW_UABS_G0 = 263;
pub const R_AARCH64_MOVW_UABS_G0_NC = 264;
pub const R_AARCH64_MOVW_UABS_G1 = 265;
pub const R_AARCH64_MOVW_UABS_G1_NC = 266;
pub const R_AARCH64_MOVW_UABS_G2 = 267;
pub const R_AARCH64_MOVW_UABS_G2_NC = 268;
pub const R_AARCH64_MOVW_UABS_G3 = 269;
pub const R_AARCH64_NONE = 0;
pub const R_AARCH64_P32_ABS32 = 1;
pub const R_AARCH64_P32_COPY = 180;
pub const R_AARCH64_P32_GLOB_DAT = 181;
pub const R_AARCH64_P32_IRELATIVE = 188;
pub const R_AARCH64_P32_JUMP_SLOT = 182;
pub const R_AARCH64_P32_RELATIVE = 183;
pub const R_AARCH64_P32_TLSDESC = 187;
pub const R_AARCH64_P32_TLS_DTPMOD = 184;
pub const R_AARCH64_P32_TLS_DTPREL = 185;
pub const R_AARCH64_P32_TLS_TPREL = 186;
pub const R_AARCH64_PREL16 = 262;
pub const R_AARCH64_PREL32 = 261;
pub const R_AARCH64_PREL64 = 260;
pub const R_AARCH64_RELATIVE = 1027;
pub const R_AARCH64_TLSDESC = 1031;
pub const R_AARCH64_TLSDESC_ADD = 568;
pub const R_AARCH64_TLSDESC_ADD_LO12 = 564;
pub const R_AARCH64_TLSDESC_ADR_PAGE21 = 562;
pub const R_AARCH64_TLSDESC_ADR_PREL21 = 561;
pub const R_AARCH64_TLSDESC_CALL = 569;
pub const R_AARCH64_TLSDESC_LD64_LO12 = 563;
pub const R_AARCH64_TLSDESC_LDR = 567;
pub const R_AARCH64_TLSDESC_LD_PREL19 = 560;
pub const R_AARCH64_TLSDESC_OFF_G0_NC = 566;
pub const R_AARCH64_TLSDESC_OFF_G1 = 565;
pub const R_AARCH64_TLSGD_ADD_LO12_NC = 514;
pub const R_AARCH64_TLSGD_ADR_PAGE21 = 513;
pub const R_AARCH64_TLSGD_ADR_PREL21 = 512;
pub const R_AARCH64_TLSGD_MOVW_G0_NC = 516;
pub const R_AARCH64_TLSGD_MOVW_G1 = 515;
pub const R_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21 = 541;
pub const R_AARCH64_TLSIE_LD64_GOTTPREL_LO12_NC = 542;
pub const R_AARCH64_TLSIE_LD_GOTTPREL_PREL19 = 543;
pub const R_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC = 540;
pub const R_AARCH64_TLSIE_MOVW_GOTTPREL_G1 = 539;
pub const R_AARCH64_TLSLD_ADD_DTPREL_HI12 = 528;
pub const R_AARCH64_TLSLD_ADD_DTPREL_LO12 = 529;
pub const R_AARCH64_TLSLD_ADD_DTPREL_LO12_NC = 530;
pub const R_AARCH64_TLSLD_ADD_LO12_NC = 519;
pub const R_AARCH64_TLSLD_ADR_PAGE21 = 518;
pub const R_AARCH64_TLSLD_ADR_PREL21 = 517;
pub const R_AARCH64_TLSLD_LDST128_DTPREL_LO12 = 572;
pub const R_AARCH64_TLSLD_LDST128_DTPREL_LO12_NC = 573;
pub const R_AARCH64_TLSLD_LDST16_DTPREL_LO12 = 533;
pub const R_AARCH64_TLSLD_LDST16_DTPREL_LO12_NC = 534;
pub const R_AARCH64_TLSLD_LDST32_DTPREL_LO12 = 535;
pub const R_AARCH64_TLSLD_LDST32_DTPREL_LO12_NC = 536;
pub const R_AARCH64_TLSLD_LDST64_DTPREL_LO12 = 537;
pub const R_AARCH64_TLSLD_LDST64_DTPREL_LO12_NC = 538;
pub const R_AARCH64_TLSLD_LDST8_DTPREL_LO12 = 531;
pub const R_AARCH64_TLSLD_LDST8_DTPREL_LO12_NC = 532;
pub const R_AARCH64_TLSLD_LD_PREL19 = 522;
pub const R_AARCH64_TLSLD_MOVW_DTPREL_G0 = 526;
pub const R_AARCH64_TLSLD_MOVW_DTPREL_G0_NC = 527;
pub const R_AARCH64_TLSLD_MOVW_DTPREL_G1 = 524;
pub const R_AARCH64_TLSLD_MOVW_DTPREL_G1_NC = 525;
pub const R_AARCH64_TLSLD_MOVW_DTPREL_G2 = 523;
pub const R_AARCH64_TLSLD_MOVW_G0_NC = 521;
pub const R_AARCH64_TLSLD_MOVW_G1 = 520;
pub const R_AARCH64_TLSLE_ADD_TPREL_HI12 = 549;
pub const R_AARCH64_TLSLE_ADD_TPREL_LO12 = 550;
pub const R_AARCH64_TLSLE_ADD_TPREL_LO12_NC = 551;
pub const R_AARCH64_TLSLE_LDST128_TPREL_LO12 = 570;
pub const R_AARCH64_TLSLE_LDST128_TPREL_LO12_NC = 571;
pub const R_AARCH64_TLSLE_LDST16_TPREL_LO12 = 554;
pub const R_AARCH64_TLSLE_LDST16_TPREL_LO12_NC = 555;
pub const R_AARCH64_TLSLE_LDST32_TPREL_LO12 = 556;
pub const R_AARCH64_TLSLE_LDST32_TPREL_LO12_NC = 557;
pub const R_AARCH64_TLSLE_LDST64_TPREL_LO12 = 558;
pub const R_AARCH64_TLSLE_LDST64_TPREL_LO12_NC = 559;
pub const R_AARCH64_TLSLE_LDST8_TPREL_LO12 = 552;
pub const R_AARCH64_TLSLE_LDST8_TPREL_LO12_NC = 553;
pub const R_AARCH64_TLSLE_MOVW_TPREL_G0 = 547;
pub const R_AARCH64_TLSLE_MOVW_TPREL_G0_NC = 548;
pub const R_AARCH64_TLSLE_MOVW_TPREL_G1 = 545;
pub const R_AARCH64_TLSLE_MOVW_TPREL_G1_NC = 546;
pub const R_AARCH64_TLSLE_MOVW_TPREL_G2 = 544;
pub const R_AARCH64_TLS_DTPMOD = 1028;
pub const R_AARCH64_TLS_DTPREL = 1029;
pub const R_AARCH64_TLS_TPREL = 1030;
pub const R_AARCH64_TSTBR14 = 279;

pub const R_AC_SECTOFF_S9 = 0x26;
pub const R_AC_SECTOFF_S9_1 = 0x27;
pub const R_AC_SECTOFF_S9_2 = 0x28;
pub const R_AC_SECTOFF_U8 = 0x23;
pub const R_AC_SECTOFF_U8_1 = 0x24;
pub const R_AC_SECTOFF_U8_2 = 0x25;

pub const R_ALPHA_BRADDR = 7;
pub const R_ALPHA_COPY = 24;
pub const R_ALPHA_DTPMOD64 = 31;
pub const R_ALPHA_DTPREL16 = 36;
pub const R_ALPHA_DTPREL64 = 33;
pub const R_ALPHA_DTPRELHI = 34;
pub const R_ALPHA_DTPRELLO = 35;
pub const R_ALPHA_GLOB_DAT = 25;
pub const R_ALPHA_GOTDTPREL = 32;
pub const R_ALPHA_GOTTPREL = 37;
pub const R_ALPHA_GPDISP = 6;
pub const R_ALPHA_GPREL16 = 19;
pub const R_ALPHA_GPREL32 = 3;
pub const R_ALPHA_GPRELHIGH = 17;
pub const R_ALPHA_GPRELLOW = 18;
pub const R_ALPHA_HINT = 8;
pub const R_ALPHA_JMP_SLOT = 26;
pub const R_ALPHA_LITERAL = 4;
pub const R_ALPHA_LITUSE = 5;
pub const R_ALPHA_NONE = 0;
pub const R_ALPHA_NUM = 46;
pub const R_ALPHA_REFLONG = 1;
pub const R_ALPHA_REFQUAD = 2;
pub const R_ALPHA_RELATIVE = 27;
pub const R_ALPHA_SREL16 = 9;
pub const R_ALPHA_SREL32 = 10;
pub const R_ALPHA_SREL64 = 11;
pub const R_ALPHA_TLSGD = 29;
pub const R_ALPHA_TLS_GD_HI = 28;
pub const R_ALPHA_TLS_LDM = 30;
pub const R_ALPHA_TPREL16 = 41;
pub const R_ALPHA_TPREL64 = 38;
pub const R_ALPHA_TPRELHI = 39;
pub const R_ALPHA_TPRELLO = 40;

pub const R_ARC_16 = 0x2;
pub const R_ARC_24 = 0x3;
pub const R_ARC_32 = 0x4;
pub const R_ARC_32_ME = 0x1B;
pub const R_ARC_32_PCREL = 0x31;
pub const R_ARC_8 = 0x1;
pub const R_ARC_B22_PCREL = 0x6;
pub const R_ARC_COPY = 0x35;
pub const R_ARC_GLOB_DAT = 0x36;
pub const R_ARC_GOT32 = 0x3B;
pub const R_ARC_GOTOFF = 0x39;
pub const R_ARC_GOTPC = 0x3A;
pub const R_ARC_GOTPC32 = 0x33;
pub const R_ARC_H30 = 0x7;
pub const R_ARC_H30_ME = 0x20;
pub const R_ARC_JLI_SECTOFF = 0x3F;
pub const R_ARC_JMP_SLOT = 0x37;
pub const R_ARC_N16 = 0x9;
pub const R_ARC_N24 = 0xA;
pub const R_ARC_N32 = 0xB;
pub const R_ARC_N32_ME = 0x1C;
pub const R_ARC_N8 = 0x8;
pub const R_ARC_NONE = 0x0;
pub const R_ARC_NPS_CMEM16 = 0x4E;
pub const R_ARC_PC32 = 0x32;
pub const R_ARC_PLT32 = 0x34;
pub const R_ARC_RELATIVE = 0x38;
pub const R_ARC_S13_PCREL = 0x19;
pub const R_ARC_S21H_PCREL = 0xE;
pub const R_ARC_S21H_PCREL_PLT = 0x4D;
pub const R_ARC_S21W_PCREL = 0xF;
pub const R_ARC_S21W_PCREL_PLT = 0x3C;
pub const R_ARC_S25H_PCREL = 0x10;
pub const R_ARC_S25H_PCREL_PLT = 0x3D;
pub const R_ARC_S25W_PCREL = 0x11;
pub const R_ARC_S25W_PCREL_PLT = 0x4C;
pub const R_ARC_SDA = 0xC;
pub const R_ARC_SDA16_LD = 0x16;
pub const R_ARC_SDA16_LD1 = 0x17;
pub const R_ARC_SDA16_LD2 = 0x18;
pub const R_ARC_SDA16_ST2 = 0x30;
pub const R_ARC_SDA32 = 0x12;
pub const R_ARC_SDA32_ME = 0x1E;
pub const R_ARC_SDA_12 = 0x2D;
pub const R_ARC_SDA_LDST = 0x13;
pub const R_ARC_SDA_LDST1 = 0x14;
pub const R_ARC_SDA_LDST2 = 0x15;
pub const R_ARC_SECTOFF = 0xD;
pub const R_ARC_SECTOFF_1 = 0x2B;
pub const R_ARC_SECTOFF_2 = 0x2C;
pub const R_ARC_SECTOFF_ME = 0x1D;
pub const R_ARC_SECTOFF_ME_1 = 0x29;
pub const R_ARC_SECTOFF_ME_2 = 0x2A;
pub const R_ARC_SECTOFF_S9 = 0x22;
pub const R_ARC_SECTOFF_U8 = 0x21;
pub const R_ARC_TLS_DTPMOD = 0x42;
pub const R_ARC_TLS_DTPOFF = 0x43;
pub const R_ARC_TLS_DTPOFF_S9 = 0x49;
pub const R_ARC_TLS_GD_CALL = 0x47;
pub const R_ARC_TLS_GD_GOT = 0x45;
pub const R_ARC_TLS_GD_LD = 0x46;
pub const R_ARC_TLS_IE_GOT = 0x48;
pub const R_ARC_TLS_LE_32 = 0x4B;
pub const R_ARC_TLS_LE_S9 = 0x4A;
pub const R_ARC_TLS_TPOFF = 0x44;
pub const R_ARC_W = 0x1A;
pub const R_ARC_W_ME = 0x1F;

pub const R_ARM_ABS12 = 6;
pub const R_ARM_ABS16 = 5;
pub const R_ARM_ABS32 = 2;
pub const R_ARM_ABS32_NOI = 55;
pub const R_ARM_ABS8 = 8;
pub const R_ARM_ALU_PCREL_15_8 = 33;
pub const R_ARM_ALU_PCREL_23_15 = 34;
pub const R_ARM_ALU_PCREL_7_0 = 32;
pub const R_ARM_ALU_PC_G0 = 58;
pub const R_ARM_ALU_PC_G0_NC = 57;
pub const R_ARM_ALU_PC_G1 = 60;
pub const R_ARM_ALU_PC_G1_NC = 59;
pub const R_ARM_ALU_PC_G2 = 61;
pub const R_ARM_ALU_SBREL_19_12 = 36;
pub const R_ARM_ALU_SBREL_27_20 = 37;
pub const R_ARM_ALU_SB_G0 = 71;
pub const R_ARM_ALU_SB_G0_NC = 70;
pub const R_ARM_ALU_SB_G1 = 73;
pub const R_ARM_ALU_SB_G1_NC = 72;
pub const R_ARM_ALU_SB_G2 = 74;
pub const R_ARM_AMP_VCALL9 = 12;
pub const R_ARM_BASE_ABS = 31;
pub const R_ARM_CALL = 28;
pub const R_ARM_COPY = 20;
pub const R_ARM_GLOB_DAT = 21;
pub const R_ARM_GNU_VTENTRY = 100;
pub const R_ARM_GNU_VTINHERIT = 101;
pub const R_ARM_GOT32 = 26;
pub const R_ARM_GOTOFF = 24;
pub const R_ARM_GOTOFF12 = 98;
pub const R_ARM_GOTPC = 25;
pub const R_ARM_GOTRELAX = 99;
pub const R_ARM_GOT_ABS = 95;
pub const R_ARM_GOT_BREL12 = 97;
pub const R_ARM_GOT_PREL = 96;
pub const R_ARM_IRELATIVE = 160;
pub const R_ARM_JUMP24 = 29;
pub const R_ARM_JUMP_SLOT = 22;
pub const R_ARM_LDC_PC_G0 = 67;
pub const R_ARM_LDC_PC_G1 = 68;
pub const R_ARM_LDC_PC_G2 = 69;
pub const R_ARM_LDC_SB_G0 = 81;
pub const R_ARM_LDC_SB_G1 = 82;
pub const R_ARM_LDC_SB_G2 = 83;
pub const R_ARM_LDRS_PC_G0 = 64;
pub const R_ARM_LDRS_PC_G1 = 65;
pub const R_ARM_LDRS_PC_G2 = 66;
pub const R_ARM_LDRS_SB_G0 = 78;
pub const R_ARM_LDRS_SB_G1 = 79;
pub const R_ARM_LDRS_SB_G2 = 80;
pub const R_ARM_LDR_PC_G1 = 62;
pub const R_ARM_LDR_PC_G2 = 63;
pub const R_ARM_LDR_SBREL_11_0 = 35;
pub const R_ARM_LDR_SB_G0 = 75;
pub const R_ARM_LDR_SB_G1 = 76;
pub const R_ARM_LDR_SB_G2 = 77;
pub const R_ARM_ME_TOO = 128;
pub const R_ARM_MOVT_ABS = 44;
pub const R_ARM_MOVT_BREL = 85;
pub const R_ARM_MOVT_PREL = 46;
pub const R_ARM_MOVW_ABS_NC = 43;
pub const R_ARM_MOVW_BREL = 86;
pub const R_ARM_MOVW_BREL_NC = 84;
pub const R_ARM_MOVW_PREL_NC = 45;
pub const R_ARM_NONE = 0;
pub const R_ARM_NUM = 256;
pub const R_ARM_PC13 = 4;
pub const R_ARM_PC24 = 1;
pub const R_ARM_PLT32 = 27;
pub const R_ARM_PLT32_ABS = 94;
pub const R_ARM_PREL31 = 42;
pub const R_ARM_RABS22 = 253;
pub const R_ARM_RBASE = 255;
pub const R_ARM_REL32 = 3;
pub const R_ARM_REL32_NOI = 56;
pub const R_ARM_RELATIVE = 23;
pub const R_ARM_RPC24 = 254;
pub const R_ARM_RREL32 = 252;
pub const R_ARM_RSBREL32 = 250;
pub const R_ARM_RXPC25 = 249;
pub const R_ARM_SBREL31 = 39;
pub const R_ARM_SBREL32 = 9;
pub const R_ARM_SWI24 = 13;
pub const R_ARM_TARGET1 = 38;
pub const R_ARM_TARGET2 = 41;
pub const R_ARM_THM_ABS5 = 7;
pub const R_ARM_THM_ALU_PREL_11_0 = 53;
pub const R_ARM_THM_GOT_BREL12 = 131;
pub const R_ARM_THM_JUMP19 = 51;
pub const R_ARM_THM_JUMP24 = 30;
pub const R_ARM_THM_JUMP6 = 52;
pub const R_ARM_THM_MOVT_ABS = 48;
pub const R_ARM_THM_MOVT_BREL = 88;
pub const R_ARM_THM_MOVT_PREL = 50;
pub const R_ARM_THM_MOVW_ABS_NC = 47;
pub const R_ARM_THM_MOVW_BREL = 89;
pub const R_ARM_THM_MOVW_BREL_NC = 87;
pub const R_ARM_THM_MOVW_PREL_NC = 49;
pub const R_ARM_THM_PC11 = 102;
pub const R_ARM_THM_PC12 = 54;
pub const R_ARM_THM_PC22 = 10;
pub const R_ARM_THM_PC8 = 11;
pub const R_ARM_THM_PC9 = 103;
pub const R_ARM_THM_RPC22 = 251;
pub const R_ARM_THM_SWI8 = 14;
pub const R_ARM_THM_TLS_CALL = 93;
pub const R_ARM_THM_TLS_DESCSEQ = 129;
pub const R_ARM_THM_TLS_DESCSEQ16 = 129;
pub const R_ARM_THM_TLS_DESCSEQ32 = 130;
pub const R_ARM_THM_XPC22 = 16;
pub const R_ARM_TLS_CALL = 91;
pub const R_ARM_TLS_DESC = 13;
pub const R_ARM_TLS_DESCSEQ = 92;
pub const R_ARM_TLS_DTPMOD32 = 17;
pub const R_ARM_TLS_DTPOFF32 = 18;
pub const R_ARM_TLS_GD32 = 104;
pub const R_ARM_TLS_GOTDESC = 90;
pub const R_ARM_TLS_IE12GP = 111;
pub const R_ARM_TLS_IE32 = 107;
pub const R_ARM_TLS_LDM32 = 105;
pub const R_ARM_TLS_LDO12 = 109;
pub const R_ARM_TLS_LDO32 = 106;
pub const R_ARM_TLS_LE12 = 110;
pub const R_ARM_TLS_LE32 = 108;
pub const R_ARM_TLS_TPOFF32 = 19;
pub const R_ARM_V4BX = 40;
pub const R_ARM_XPC25 = 15;

pub const R_BPF_64_32 = 10;
pub const R_BPF_64_64 = 1;
pub const R_BPF_NONE = 0;

pub const R_CKCORE_ADDR32 = 1;
pub const R_CKCORE_ADDRGOT = 17;
pub const R_CKCORE_ADDRGOT_HI16 = 36;
pub const R_CKCORE_ADDRGOT_LO16 = 37;
pub const R_CKCORE_ADDRPLT = 18;
pub const R_CKCORE_ADDRPLT_HI16 = 38;
pub const R_CKCORE_ADDRPLT_LO16 = 39;
pub const R_CKCORE_ADDR_HI16 = 24;
pub const R_CKCORE_ADDR_LO16 = 25;
pub const R_CKCORE_COPY = 10;
pub const R_CKCORE_DOFFSET_IMM18 = 44;
pub const R_CKCORE_DOFFSET_IMM18BY2 = 45;
pub const R_CKCORE_DOFFSET_IMM18BY4 = 46;
pub const R_CKCORE_DOFFSET_LO16 = 42;
pub const R_CKCORE_GLOB_DAT = 11;
pub const R_CKCORE_GOT12 = 30;
pub const R_CKCORE_GOT32 = 15;
pub const R_CKCORE_GOTOFF = 13;
pub const R_CKCORE_GOTOFF_HI16 = 28;
pub const R_CKCORE_GOTOFF_LO16 = 29;
pub const R_CKCORE_GOTPC = 14;
pub const R_CKCORE_GOTPC_HI16 = 26;
pub const R_CKCORE_GOTPC_LO16 = 27;
pub const R_CKCORE_GOT_HI16 = 31;
pub const R_CKCORE_GOT_IMM18BY4 = 48;
pub const R_CKCORE_GOT_LO16 = 32;
pub const R_CKCORE_JUMP_SLOT = 12;
pub const R_CKCORE_NONE = 0;
pub const R_CKCORE_PCREL32 = 5;
pub const R_CKCORE_PCRELIMM11BY2 = 3;
pub const R_CKCORE_PCRELIMM8BY4 = 2;
pub const R_CKCORE_PCRELJSR_IMM11BY2 = 6;
pub const R_CKCORE_PCREL_IMM10BY2 = 22;
pub const R_CKCORE_PCREL_IMM10BY4 = 23;
pub const R_CKCORE_PCREL_IMM16BY2 = 20;
pub const R_CKCORE_PCREL_IMM16BY4 = 21;
pub const R_CKCORE_PCREL_IMM18BY2 = 43;
pub const R_CKCORE_PCREL_IMM26BY2 = 19;
pub const R_CKCORE_PCREL_IMM7BY4 = 50;
pub const R_CKCORE_PCREL_JSR_IMM26BY2 = 40;
pub const R_CKCORE_PLT12 = 33;
pub const R_CKCORE_PLT32 = 16;
pub const R_CKCORE_PLT_HI16 = 34;
pub const R_CKCORE_PLT_IMM18BY4 = 49;
pub const R_CKCORE_PLT_LO16 = 35;
pub const R_CKCORE_RELATIVE = 9;
pub const R_CKCORE_TLS_DTPMOD32 = 56;
pub const R_CKCORE_TLS_DTPOFF32 = 57;
pub const R_CKCORE_TLS_GD32 = 53;
pub const R_CKCORE_TLS_IE32 = 52;
pub const R_CKCORE_TLS_LDM32 = 54;
pub const R_CKCORE_TLS_LDO32 = 55;
pub const R_CKCORE_TLS_LE32 = 51;
pub const R_CKCORE_TLS_TPOFF32 = 58;
pub const R_CKCORE_TOFFSET_LO16 = 41;

pub const R_CRIS_16 = 2;
pub const R_CRIS_16_GOT = 13;
pub const R_CRIS_16_GOTPLT = 15;
pub const R_CRIS_16_PCREL = 5;
pub const R_CRIS_32 = 3;
pub const R_CRIS_32_GOT = 14;
pub const R_CRIS_32_GOTPLT = 16;
pub const R_CRIS_32_GOTREL = 17;
pub const R_CRIS_32_PCREL = 6;
pub const R_CRIS_32_PLT_GOTREL = 18;
pub const R_CRIS_32_PLT_PCREL = 19;
pub const R_CRIS_8 = 1;
pub const R_CRIS_8_PCREL = 4;
pub const R_CRIS_COPY = 9;
pub const R_CRIS_GLOB_DAT = 10;
pub const R_CRIS_GNU_VTENTRY = 8;
pub const R_CRIS_GNU_VTINHERIT = 7;
pub const R_CRIS_JUMP_SLOT = 11;
pub const R_CRIS_NONE = 0;
pub const R_CRIS_NUM = 20;
pub const R_CRIS_RELATIVE = 12;

pub const R_IA64_COPY = 0x84;
pub const R_IA64_DIR32LSB = 0x25;
pub const R_IA64_DIR32MSB = 0x24;
pub const R_IA64_DIR64LSB = 0x27;
pub const R_IA64_DIR64MSB = 0x26;
pub const R_IA64_DTPMOD64LSB = 0xa7;
pub const R_IA64_DTPMOD64MSB = 0xa6;
pub const R_IA64_DTPREL14 = 0xb1;
pub const R_IA64_DTPREL22 = 0xb2;
pub const R_IA64_DTPREL32LSB = 0xb5;
pub const R_IA64_DTPREL32MSB = 0xb4;
pub const R_IA64_DTPREL64I = 0xb3;
pub const R_IA64_DTPREL64LSB = 0xb7;
pub const R_IA64_DTPREL64MSB = 0xb6;
pub const R_IA64_FPTR32LSB = 0x45;
pub const R_IA64_FPTR32MSB = 0x44;
pub const R_IA64_FPTR64I = 0x43;
pub const R_IA64_FPTR64LSB = 0x47;
pub const R_IA64_FPTR64MSB = 0x46;
pub const R_IA64_GPREL22 = 0x2a;
pub const R_IA64_GPREL32LSB = 0x2d;
pub const R_IA64_GPREL32MSB = 0x2c;
pub const R_IA64_GPREL64I = 0x2b;
pub const R_IA64_GPREL64LSB = 0x2f;
pub const R_IA64_GPREL64MSB = 0x2e;
pub const R_IA64_IMM14 = 0x21;
pub const R_IA64_IMM22 = 0x22;
pub const R_IA64_IMM64 = 0x23;
pub const R_IA64_IPLTLSB = 0x81;
pub const R_IA64_IPLTMSB = 0x80;
pub const R_IA64_LDXMOV = 0x87;
pub const R_IA64_LTOFF22 = 0x32;
pub const R_IA64_LTOFF22X = 0x86;
pub const R_IA64_LTOFF64I = 0x33;
pub const R_IA64_LTOFF_DTPMOD22 = 0xaa;
pub const R_IA64_LTOFF_DTPREL22 = 0xba;
pub const R_IA64_LTOFF_FPTR22 = 0x52;
pub const R_IA64_LTOFF_FPTR32LSB = 0x55;
pub const R_IA64_LTOFF_FPTR32MSB = 0x54;
pub const R_IA64_LTOFF_FPTR64I = 0x53;
pub const R_IA64_LTOFF_FPTR64LSB = 0x57;
pub const R_IA64_LTOFF_FPTR64MSB = 0x56;
pub const R_IA64_LTOFF_TPREL22 = 0x9a;
pub const R_IA64_LTV32LSB = 0x75;
pub const R_IA64_LTV32MSB = 0x74;
pub const R_IA64_LTV64LSB = 0x77;
pub const R_IA64_LTV64MSB = 0x76;
pub const R_IA64_NONE = 0x00;
pub const R_IA64_PCREL21B = 0x49;
pub const R_IA64_PCREL21BI = 0x79;
pub const R_IA64_PCREL21F = 0x4b;
pub const R_IA64_PCREL21M = 0x4a;
pub const R_IA64_PCREL22 = 0x7a;
pub const R_IA64_PCREL32LSB = 0x4d;
pub const R_IA64_PCREL32MSB = 0x4c;
pub const R_IA64_PCREL60B = 0x48;
pub const R_IA64_PCREL64I = 0x7b;
pub const R_IA64_PCREL64LSB = 0x4f;
pub const R_IA64_PCREL64MSB = 0x4e;
pub const R_IA64_PLTOFF22 = 0x3a;
pub const R_IA64_PLTOFF64I = 0x3b;
pub const R_IA64_PLTOFF64LSB = 0x3f;
pub const R_IA64_PLTOFF64MSB = 0x3e;
pub const R_IA64_REL32LSB = 0x6d;
pub const R_IA64_REL32MSB = 0x6c;
pub const R_IA64_REL64LSB = 0x6f;
pub const R_IA64_REL64MSB = 0x6e;
pub const R_IA64_SECREL32LSB = 0x65;
pub const R_IA64_SECREL32MSB = 0x64;
pub const R_IA64_SECREL64LSB = 0x67;
pub const R_IA64_SECREL64MSB = 0x66;
pub const R_IA64_SEGREL32LSB = 0x5d;
pub const R_IA64_SEGREL32MSB = 0x5c;
pub const R_IA64_SEGREL64LSB = 0x5f;
pub const R_IA64_SEGREL64MSB = 0x5e;
pub const R_IA64_SUB = 0x85;
pub const R_IA64_TPREL14 = 0x91;
pub const R_IA64_TPREL22 = 0x92;
pub const R_IA64_TPREL64I = 0x93;
pub const R_IA64_TPREL64LSB = 0x97;
pub const R_IA64_TPREL64MSB = 0x96;

pub const R_LARCH_32 = 1;
pub const R_LARCH_32_PCREL = 99;
pub const R_LARCH_64 = 2;
pub const R_LARCH_64_PCREL = 109;
pub const R_LARCH_ABS64_HI12 = 70;
pub const R_LARCH_ABS64_LO20 = 69;
pub const R_LARCH_ABS_HI20 = 67;
pub const R_LARCH_ABS_LO12 = 68;
pub const R_LARCH_ADD16 = 48;
pub const R_LARCH_ADD24 = 49;
pub const R_LARCH_ADD32 = 50;
pub const R_LARCH_ADD6 = 105;
pub const R_LARCH_ADD64 = 51;
pub const R_LARCH_ADD8 = 47;
pub const R_LARCH_ADD_ULEB128 = 107;
pub const R_LARCH_ALIGN = 102;
pub const R_LARCH_B16 = 64;
pub const R_LARCH_B21 = 65;
pub const R_LARCH_B26 = 66;
pub const R_LARCH_CALL36 = 110;
pub const R_LARCH_CFA = 104;
pub const R_LARCH_COPY = 4;
pub const R_LARCH_DELETE = 101;
pub const R_LARCH_GNU_VTENTRY = 58;
pub const R_LARCH_GNU_VTINHERIT = 57;
pub const R_LARCH_GOT64_HI12 = 82;
pub const R_LARCH_GOT64_LO20 = 81;
pub const R_LARCH_GOT64_PC_HI12 = 78;
pub const R_LARCH_GOT64_PC_LO20 = 77;
pub const R_LARCH_GOT_HI20 = 79;
pub const R_LARCH_GOT_LO12 = 80;
pub const R_LARCH_GOT_PC_HI20 = 75;
pub const R_LARCH_GOT_PC_LO12 = 76;
pub const R_LARCH_IRELATIVE = 12;
pub const R_LARCH_JUMP_SLOT = 5;
pub const R_LARCH_MARK_LA = 20;
pub const R_LARCH_MARK_PCREL = 21;
pub const R_LARCH_NONE = 0;
pub const R_LARCH_PCALA64_HI12 = 74;
pub const R_LARCH_PCALA64_LO20 = 73;
pub const R_LARCH_PCALA_HI20 = 71;
pub const R_LARCH_PCALA_LO12 = 72;
pub const R_LARCH_PCREL20_S2 = 103;
pub const R_LARCH_RELATIVE = 3;
pub const R_LARCH_RELAX = 100;
pub const R_LARCH_SOP_ADD = 35;
pub const R_LARCH_SOP_AND = 36;
pub const R_LARCH_SOP_ASSERT = 30;
pub const R_LARCH_SOP_IF_ELSE = 37;
pub const R_LARCH_SOP_NOT = 31;
pub const R_LARCH_SOP_POP_32_S_0_10_10_16_S2 = 45;
pub const R_LARCH_SOP_POP_32_S_0_5_10_16_S2 = 44;
pub const R_LARCH_SOP_POP_32_S_10_12 = 40;
pub const R_LARCH_SOP_POP_32_S_10_16 = 41;
pub const R_LARCH_SOP_POP_32_S_10_16_S2 = 42;
pub const R_LARCH_SOP_POP_32_S_10_5 = 38;
pub const R_LARCH_SOP_POP_32_S_5_20 = 43;
pub const R_LARCH_SOP_POP_32_U = 46;
pub const R_LARCH_SOP_POP_32_U_10_12 = 39;
pub const R_LARCH_SOP_PUSH_ABSOLUTE = 23;
pub const R_LARCH_SOP_PUSH_DUP = 24;
pub const R_LARCH_SOP_PUSH_GPREL = 25;
pub const R_LARCH_SOP_PUSH_PCREL = 22;
pub const R_LARCH_SOP_PUSH_PLT_PCREL = 29;
pub const R_LARCH_SOP_PUSH_TLS_GD = 28;
pub const R_LARCH_SOP_PUSH_TLS_GOT = 27;
pub const R_LARCH_SOP_PUSH_TLS_TPREL = 26;
pub const R_LARCH_SOP_SL = 33;
pub const R_LARCH_SOP_SR = 34;
pub const R_LARCH_SOP_SUB = 32;
pub const R_LARCH_SUB16 = 53;
pub const R_LARCH_SUB24 = 54;
pub const R_LARCH_SUB32 = 55;
pub const R_LARCH_SUB6 = 106;
pub const R_LARCH_SUB64 = 56;
pub const R_LARCH_SUB8 = 52;
pub const R_LARCH_SUB_ULEB128 = 108;
pub const R_LARCH_TLS_DESC32 = 13;
pub const R_LARCH_TLS_DESC64 = 14;
pub const R_LARCH_TLS_DESC64_HI12 = 118;
pub const R_LARCH_TLS_DESC64_LO20 = 117;
pub const R_LARCH_TLS_DESC64_PC_HI12 = 114;
pub const R_LARCH_TLS_DESC64_PC_LO20 = 113;
pub const R_LARCH_TLS_DESC_CALL = 120;
pub const R_LARCH_TLS_DESC_HI20 = 115;
pub const R_LARCH_TLS_DESC_LD = 119;
pub const R_LARCH_TLS_DESC_LO12 = 116;
pub const R_LARCH_TLS_DESC_PCREL20_S2 = 126;
pub const R_LARCH_TLS_DESC_PC_HI20 = 111;
pub const R_LARCH_TLS_DESC_PC_LO12 = 112;
pub const R_LARCH_TLS_DTPMOD32 = 6;
pub const R_LARCH_TLS_DTPMOD64 = 7;
pub const R_LARCH_TLS_DTPREL32 = 8;
pub const R_LARCH_TLS_DTPREL64 = 9;
pub const R_LARCH_TLS_GD_HI20 = 98;
pub const R_LARCH_TLS_GD_PCREL20_S2 = 125;
pub const R_LARCH_TLS_GD_PC_HI20 = 97;
pub const R_LARCH_TLS_IE64_HI12 = 94;
pub const R_LARCH_TLS_IE64_LO20 = 93;
pub const R_LARCH_TLS_IE64_PC_HI12 = 90;
pub const R_LARCH_TLS_IE64_PC_LO20 = 89;
pub const R_LARCH_TLS_IE_HI20 = 91;
pub const R_LARCH_TLS_IE_LO12 = 92;
pub const R_LARCH_TLS_IE_PC_HI20 = 87;
pub const R_LARCH_TLS_IE_PC_LO12 = 88;
pub const R_LARCH_TLS_LD_HI20 = 96;
pub const R_LARCH_TLS_LD_PCREL20_S2 = 124;
pub const R_LARCH_TLS_LD_PC_HI20 = 95;
pub const R_LARCH_TLS_LE64_HI12 = 86;
pub const R_LARCH_TLS_LE64_LO20 = 85;
pub const R_LARCH_TLS_LE_ADD_R = 122;
pub const R_LARCH_TLS_LE_HI20 = 83;
pub const R_LARCH_TLS_LE_HI20_R = 121;
pub const R_LARCH_TLS_LE_LO12 = 84;
pub const R_LARCH_TLS_LE_LO12_R = 123;
pub const R_LARCH_TLS_TPREL32 = 10;
pub const R_LARCH_TLS_TPREL64 = 11;

pub const R_M32R_10_PCREL = 4;
pub const R_M32R_10_PCREL_RELA = 36;
pub const R_M32R_16 = 1;
pub const R_M32R_16_RELA = 33;
pub const R_M32R_18_PCREL = 5;
pub const R_M32R_18_PCREL_RELA = 37;
pub const R_M32R_24 = 3;
pub const R_M32R_24_RELA = 35;
pub const R_M32R_26_PCREL = 6;
pub const R_M32R_26_PCREL_RELA = 38;
pub const R_M32R_26_PLTREL = 49;
pub const R_M32R_32 = 2;
pub const R_M32R_32_RELA = 34;
pub const R_M32R_COPY = 50;
pub const R_M32R_GLOB_DAT = 51;
pub const R_M32R_GNU_VTENTRY = 12;
pub const R_M32R_GNU_VTINHERIT = 11;
pub const R_M32R_GOT16_HI_SLO = 57;
pub const R_M32R_GOT16_HI_ULO = 56;
pub const R_M32R_GOT16_LO = 58;
pub const R_M32R_GOT24 = 48;
pub const R_M32R_GOTOFF = 54;
pub const R_M32R_GOTOFF_HI_SLO = 63;
pub const R_M32R_GOTOFF_HI_ULO = 62;
pub const R_M32R_GOTOFF_LO = 64;
pub const R_M32R_GOTPC24 = 55;
pub const R_M32R_GOTPC_HI_SLO = 60;
pub const R_M32R_GOTPC_HI_ULO = 59;
pub const R_M32R_GOTPC_LO = 61;
pub const R_M32R_HI16_SLO = 8;
pub const R_M32R_HI16_SLO_RELA = 40;
pub const R_M32R_HI16_ULO = 7;
pub const R_M32R_HI16_ULO_RELA = 39;
pub const R_M32R_JMP_SLOT = 52;
pub const R_M32R_LO16 = 9;
pub const R_M32R_LO16_RELA = 41;
pub const R_M32R_NONE = 0;
pub const R_M32R_NUM = 256;
pub const R_M32R_REL32 = 45;
pub const R_M32R_RELATIVE = 53;
pub const R_M32R_RELA_GNU_VTENTRY = 44;
pub const R_M32R_RELA_GNU_VTINHERIT = 43;
pub const R_M32R_SDA16 = 10;
pub const R_M32R_SDA16_RELA = 42;

pub const R_METAG_ADDR32 = 2;
pub const R_METAG_COPY = 43;
pub const R_METAG_GETSETOFF = 5;
pub const R_METAG_GETSET_GOT = 35;
pub const R_METAG_GETSET_GOTOFF = 34;
pub const R_METAG_GLOB_DAT = 46;
pub const R_METAG_GNU_VTENTRY = 31;
pub const R_METAG_GNU_VTINHERIT = 30;
pub const R_METAG_GOTOFF = 41;
pub const R_METAG_HI16_GOTOFF = 32;
pub const R_METAG_HI16_GOTPC = 36;
pub const R_METAG_HI16_PLT = 38;
pub const R_METAG_HIADDR16 = 0;
pub const R_METAG_HIOG = 13;
pub const R_METAG_JMP_SLOT = 44;
pub const R_METAG_LO16_GOTOFF = 33;
pub const R_METAG_LO16_GOTPC = 37;
pub const R_METAG_LO16_PLT = 39;
pub const R_METAG_LOADDR16 = 1;
pub const R_METAG_LOOG = 14;
pub const R_METAG_NONE = 3;
pub const R_METAG_PLT = 42;
pub const R_METAG_REG16OP1 = 9;
pub const R_METAG_REG16OP2 = 10;
pub const R_METAG_REG16OP3 = 11;
pub const R_METAG_REG32OP1 = 6;
pub const R_METAG_REG32OP2 = 7;
pub const R_METAG_REG32OP3 = 8;
pub const R_METAG_REG32OP4 = 12;
pub const R_METAG_REL16 = 16;
pub const R_METAG_REL8 = 15;
pub const R_METAG_RELATIVE = 45;
pub const R_METAG_RELBRANCH = 4;
pub const R_METAG_RELBRANCH_PLT = 40;
pub const R_METAG_TLS_DTPMOD = 57;
pub const R_METAG_TLS_DTPOFF = 58;
pub const R_METAG_TLS_GD = 47;
pub const R_METAG_TLS_IE = 52;
pub const R_METAG_TLS_IENONPIC = 53;
pub const R_METAG_TLS_IENONPIC_HI16 = 54;
pub const R_METAG_TLS_IENONPIC_LO16 = 55;
pub const R_METAG_TLS_LDM = 48;
pub const R_METAG_TLS_LDO = 51;
pub const R_METAG_TLS_LDO_HI16 = 49;
pub const R_METAG_TLS_LDO_LO16 = 50;
pub const R_METAG_TLS_LE = 59;
pub const R_METAG_TLS_LE_HI16 = 60;
pub const R_METAG_TLS_LE_LO16 = 61;
pub const R_METAG_TLS_TPOFF = 56;

pub const R_MICROBLAZE_32 = 1;
pub const R_MICROBLAZE_32_LO = 6;
pub const R_MICROBLAZE_32_PCREL = 2;
pub const R_MICROBLAZE_32_PCREL_LO = 4;
pub const R_MICROBLAZE_32_SYM_OP_SYM = 10;
pub const R_MICROBLAZE_64 = 5;
pub const R_MICROBLAZE_64_NONE = 9;
pub const R_MICROBLAZE_64_PCREL = 3;
pub const R_MICROBLAZE_COPY = 21;
pub const R_MICROBLAZE_GLOB_DAT = 18;
pub const R_MICROBLAZE_GNU_VTENTRY = 12;
pub const R_MICROBLAZE_GNU_VTINHERIT = 11;
pub const R_MICROBLAZE_GOTOFF_32 = 20;
pub const R_MICROBLAZE_GOTOFF_64 = 19;
pub const R_MICROBLAZE_GOTPC_64 = 13;
pub const R_MICROBLAZE_GOT_64 = 14;
pub const R_MICROBLAZE_JUMP_SLOT = 17;
pub const R_MICROBLAZE_NONE = 0;
pub const R_MICROBLAZE_PLT_64 = 15;
pub const R_MICROBLAZE_REL = 16;
pub const R_MICROBLAZE_SRO32 = 7;
pub const R_MICROBLAZE_SRW32 = 8;
pub const R_MICROBLAZE_TLS = 22;
pub const R_MICROBLAZE_TLSDTPMOD32 = 25;
pub const R_MICROBLAZE_TLSDTPREL32 = 26;
pub const R_MICROBLAZE_TLSDTPREL64 = 27;
pub const R_MICROBLAZE_TLSGD = 23;
pub const R_MICROBLAZE_TLSGOTTPREL32 = 28;
pub const R_MICROBLAZE_TLSLD = 24;
pub const R_MICROBLAZE_TLSTPREL32 = 29;

pub const R_MICROMIPS_26_S1 = 133;
pub const R_MICROMIPS_CALL16 = 142;
pub const R_MICROMIPS_CALL_HI16 = 153;
pub const R_MICROMIPS_CALL_LO16 = 154;
pub const R_MICROMIPS_GOT16 = 138;
pub const R_MICROMIPS_GOT_DISP = 145;
pub const R_MICROMIPS_GOT_HI16 = 148;
pub const R_MICROMIPS_GOT_LO16 = 149;
pub const R_MICROMIPS_GOT_OFST = 147;
pub const R_MICROMIPS_GOT_PAGE = 146;
pub const R_MICROMIPS_GPREL16 = 136;
pub const R_MICROMIPS_GPREL7_S2 = 172;
pub const R_MICROMIPS_HI0_LO16 = 157;
pub const R_MICROMIPS_HI16 = 134;
pub const R_MICROMIPS_HIGHER = 151;
pub const R_MICROMIPS_HIGHEST = 152;
pub const R_MICROMIPS_JALR = 156;
pub const R_MICROMIPS_LITERAL = 137;
pub const R_MICROMIPS_LO16 = 135;
pub const R_MICROMIPS_PC10_S1 = 140;
pub const R_MICROMIPS_PC16_S1 = 141;
pub const R_MICROMIPS_PC23_S2 = 173;
pub const R_MICROMIPS_PC7_S1 = 139;
pub const R_MICROMIPS_SCN_DISP = 155;
pub const R_MICROMIPS_SUB = 150;
pub const R_MICROMIPS_TLS_DTPREL_HI16 = 164;
pub const R_MICROMIPS_TLS_DTPREL_LO16 = 165;
pub const R_MICROMIPS_TLS_GD = 162;
pub const R_MICROMIPS_TLS_GOTTPREL = 166;
pub const R_MICROMIPS_TLS_LDM = 163;
pub const R_MICROMIPS_TLS_TPREL_HI16 = 169;
pub const R_MICROMIPS_TLS_TPREL_LO16 = 170;

pub const R_MIPS16_26 = 100;
pub const R_MIPS16_CALL16 = 103;
pub const R_MIPS16_GOT16 = 102;
pub const R_MIPS16_GPREL = 101;
pub const R_MIPS16_HI16 = 104;
pub const R_MIPS16_LO16 = 105;
pub const R_MIPS16_PC16_S1 = 113;
pub const R_MIPS16_TLS_DTPREL_HI16 = 108;
pub const R_MIPS16_TLS_DTPREL_LO16 = 109;
pub const R_MIPS16_TLS_GD = 106;
pub const R_MIPS16_TLS_GOTTPREL = 110;
pub const R_MIPS16_TLS_LDM = 107;
pub const R_MIPS16_TLS_TPREL_HI16 = 111;
pub const R_MIPS16_TLS_TPREL_LO16 = 112;

pub const R_MIPS_16 = 1;
pub const R_MIPS_26 = 4;
pub const R_MIPS_32 = 2;
pub const R_MIPS_64 = 18;
pub const R_MIPS_ADD_IMMEDIATE = 34;
pub const R_MIPS_CALL16 = 11;
pub const R_MIPS_CALL_HI16 = 30;
pub const R_MIPS_CALL_LO16 = 31;
pub const R_MIPS_COPY = 126;
pub const R_MIPS_DELETE = 27;
pub const R_MIPS_EH = 249;
pub const R_MIPS_GLOB_DAT = 51;
pub const R_MIPS_GNU_REL16_S2 = 250;
pub const R_MIPS_GNU_VTENTRY = 254;
pub const R_MIPS_GNU_VTINHERIT = 253;
pub const R_MIPS_GOT16 = 9;
pub const R_MIPS_GOT_DISP = 19;
pub const R_MIPS_GOT_HI16 = 22;
pub const R_MIPS_GOT_LO16 = 23;
pub const R_MIPS_GOT_OFST = 21;
pub const R_MIPS_GOT_PAGE = 20;
pub const R_MIPS_GPREL16 = 7;
pub const R_MIPS_GPREL32 = 12;
pub const R_MIPS_HI16 = 5;
pub const R_MIPS_HIGHER = 28;
pub const R_MIPS_HIGHEST = 29;
pub const R_MIPS_INSERT_A = 25;
pub const R_MIPS_INSERT_B = 26;
pub const R_MIPS_JALR = 37;
pub const R_MIPS_JUMP_SLOT = 127;
pub const R_MIPS_LITERAL = 8;
pub const R_MIPS_LO16 = 6;
pub const R_MIPS_NONE = 0;
pub const R_MIPS_NUM = 255;
pub const R_MIPS_PC16 = 10;
pub const R_MIPS_PC18_S3 = 62;
pub const R_MIPS_PC19_S2 = 63;
pub const R_MIPS_PC21_S2 = 60;
pub const R_MIPS_PC26_S2 = 61;
pub const R_MIPS_PC32 = 248;
pub const R_MIPS_PCHI16 = 64;
pub const R_MIPS_PCLO16 = 65;
pub const R_MIPS_PJUMP = 35;
pub const R_MIPS_REL16 = 33;
pub const R_MIPS_REL32 = 3;
pub const R_MIPS_RELATIVE = 128;
pub const R_MIPS_RELGOT = 36;
pub const R_MIPS_SCN_DISP = 32;
pub const R_MIPS_SHIFT5 = 16;
pub const R_MIPS_SHIFT6 = 17;
pub const R_MIPS_SUB = 24;
pub const R_MIPS_TLS_DTPMOD32 = 38;
pub const R_MIPS_TLS_DTPMOD64 = 40;
pub const R_MIPS_TLS_DTPREL32 = 39;
pub const R_MIPS_TLS_DTPREL64 = 41;
pub const R_MIPS_TLS_DTPREL_HI16 = 44;
pub const R_MIPS_TLS_DTPREL_LO16 = 45;
pub const R_MIPS_TLS_GD = 42;
pub const R_MIPS_TLS_GOTTPREL = 46;
pub const R_MIPS_TLS_LDM = 43;
pub const R_MIPS_TLS_TPREL32 = 47;
pub const R_MIPS_TLS_TPREL64 = 48;
pub const R_MIPS_TLS_TPREL_HI16 = 49;
pub const R_MIPS_TLS_TPREL_LO16 = 50;

pub const R_MN10300_16 = 2;
pub const R_MN10300_24 = 9;
pub const R_MN10300_32 = 1;
pub const R_MN10300_8 = 3;
pub const R_MN10300_ALIGN = 34;
pub const R_MN10300_COPY = 20;
pub const R_MN10300_GLOB_DAT = 21;
pub const R_MN10300_GNU_VTENTRY = 8;
pub const R_MN10300_GNU_VTINHERIT = 7;
pub const R_MN10300_GOT16 = 19;
pub const R_MN10300_GOT24 = 18;
pub const R_MN10300_GOT32 = 17;
pub const R_MN10300_GOTOFF16 = 14;
pub const R_MN10300_GOTOFF24 = 13;
pub const R_MN10300_GOTOFF32 = 12;
pub const R_MN10300_GOTPC16 = 11;
pub const R_MN10300_GOTPC32 = 10;
pub const R_MN10300_JMP_SLOT = 22;
pub const R_MN10300_NONE = 0;
pub const R_MN10300_NUM = 35;
pub const R_MN10300_PCREL16 = 5;
pub const R_MN10300_PCREL32 = 4;
pub const R_MN10300_PCREL8 = 6;
pub const R_MN10300_PLT16 = 16;
pub const R_MN10300_PLT32 = 15;
pub const R_MN10300_RELATIVE = 23;
pub const R_MN10300_SYM_DIFF = 33;
pub const R_MN10300_TLS_DTPMOD = 30;
pub const R_MN10300_TLS_DTPOFF = 31;
pub const R_MN10300_TLS_GD = 24;
pub const R_MN10300_TLS_GOTIE = 27;
pub const R_MN10300_TLS_IE = 28;
pub const R_MN10300_TLS_LD = 25;
pub const R_MN10300_TLS_LDO = 26;
pub const R_MN10300_TLS_LE = 29;
pub const R_MN10300_TLS_TPOFF = 32;

pub const R_NDS32_32_RELA = 20;
pub const R_NDS32_COPY = 39;
pub const R_NDS32_GLOB_DAT = 40;
pub const R_NDS32_JMP_SLOT = 41;
pub const R_NDS32_NONE = 0;
pub const R_NDS32_RELATIVE = 42;
pub const R_NDS32_TLS_DESC = 119;
pub const R_NDS32_TLS_TPOFF = 102;

pub const R_NIOS2_ALIGN = 21;
pub const R_NIOS2_BFD_RELOC_16 = 13;
pub const R_NIOS2_BFD_RELOC_32 = 12;
pub const R_NIOS2_BFD_RELOC_8 = 14;
pub const R_NIOS2_CACHE_OPX = 6;
pub const R_NIOS2_CALL16 = 23;
pub const R_NIOS2_CALL26 = 4;
pub const R_NIOS2_CALL26_NOAT = 41;
pub const R_NIOS2_CALLR = 20;
pub const R_NIOS2_CALL_HA = 45;
pub const R_NIOS2_CALL_LO = 44;
pub const R_NIOS2_CJMP = 19;
pub const R_NIOS2_COPY = 36;
pub const R_NIOS2_GLOB_DAT = 37;
pub const R_NIOS2_GNU_VTENTRY = 17;
pub const R_NIOS2_GNU_VTINHERIT = 16;
pub const R_NIOS2_GOT16 = 22;
pub const R_NIOS2_GOTOFF = 40;
pub const R_NIOS2_GOTOFF_HA = 25;
pub const R_NIOS2_GOTOFF_LO = 24;
pub const R_NIOS2_GOT_HA = 43;
pub const R_NIOS2_GOT_LO = 42;
pub const R_NIOS2_GPREL = 15;
pub const R_NIOS2_HI16 = 9;
pub const R_NIOS2_HIADJ16 = 11;
pub const R_NIOS2_IMM5 = 5;
pub const R_NIOS2_IMM6 = 7;
pub const R_NIOS2_IMM8 = 8;
pub const R_NIOS2_JUMP_SLOT = 38;
pub const R_NIOS2_LO16 = 10;
pub const R_NIOS2_NONE = 0;
pub const R_NIOS2_PCREL16 = 3;
pub const R_NIOS2_PCREL_HA = 27;
pub const R_NIOS2_PCREL_LO = 26;
pub const R_NIOS2_RELATIVE = 39;
pub const R_NIOS2_S16 = 1;
pub const R_NIOS2_TLS_DTPMOD = 33;
pub const R_NIOS2_TLS_DTPREL = 34;
pub const R_NIOS2_TLS_GD16 = 28;
pub const R_NIOS2_TLS_IE16 = 31;
pub const R_NIOS2_TLS_LDM16 = 29;
pub const R_NIOS2_TLS_LDO16 = 30;
pub const R_NIOS2_TLS_LE16 = 32;
pub const R_NIOS2_TLS_TPREL = 35;
pub const R_NIOS2_U16 = 2;
pub const R_NIOS2_UJMP = 18;

pub const R_OR1K_16 = 2;
pub const R_OR1K_16_PCREL = 10;
pub const R_OR1K_32 = 1;
pub const R_OR1K_32_PCREL = 9;
pub const R_OR1K_8 = 3;
pub const R_OR1K_8_PCREL = 11;
pub const R_OR1K_COPY = 18;
pub const R_OR1K_GLOB_DAT = 19;
pub const R_OR1K_GNU_VTENTRY = 7;
pub const R_OR1K_GNU_VTINHERIT = 8;
pub const R_OR1K_GOT16 = 14;
pub const R_OR1K_GOTOFF_HI16 = 16;
pub const R_OR1K_GOTOFF_LO16 = 17;
pub const R_OR1K_GOTPC_HI16 = 12;
pub const R_OR1K_GOTPC_LO16 = 13;
pub const R_OR1K_HI_16_IN_INSN = 5;
pub const R_OR1K_INSN_REL_26 = 6;
pub const R_OR1K_JMP_SLOT = 20;
pub const R_OR1K_LO_16_IN_INSN = 4;
pub const R_OR1K_NONE = 0;
pub const R_OR1K_PLT26 = 15;
pub const R_OR1K_RELATIVE = 21;
pub const R_OR1K_TLS_DTPMOD = 34;
pub const R_OR1K_TLS_DTPOFF = 33;
pub const R_OR1K_TLS_GD_HI16 = 22;
pub const R_OR1K_TLS_GD_LO16 = 23;
pub const R_OR1K_TLS_IE_HI16 = 28;
pub const R_OR1K_TLS_IE_LO16 = 29;
pub const R_OR1K_TLS_LDM_HI16 = 24;
pub const R_OR1K_TLS_LDM_LO16 = 25;
pub const R_OR1K_TLS_LDO_HI16 = 26;
pub const R_OR1K_TLS_LDO_LO16 = 27;
pub const R_OR1K_TLS_LE_HI16 = 30;
pub const R_OR1K_TLS_LE_LO16 = 31;
pub const R_OR1K_TLS_TPOFF = 32;

pub const R_PARISC_COPY = 128;
pub const R_PARISC_DIR14DR = 84;
pub const R_PARISC_DIR14R = 6;
pub const R_PARISC_DIR14WR = 83;
pub const R_PARISC_DIR16DF = 87;
pub const R_PARISC_DIR16F = 85;
pub const R_PARISC_DIR16WF = 86;
pub const R_PARISC_DIR17F = 4;
pub const R_PARISC_DIR17R = 3;
pub const R_PARISC_DIR21L = 2;
pub const R_PARISC_DIR32 = 1;
pub const R_PARISC_DIR64 = 80;
pub const R_PARISC_DPREL14R = 22;
pub const R_PARISC_DPREL21L = 18;
pub const R_PARISC_EPLT = 130;
pub const R_PARISC_FPTR64 = 64;
pub const R_PARISC_GNU_VTENTRY = 232;
pub const R_PARISC_GNU_VTINHERIT = 233;
pub const R_PARISC_GPREL14DR = 92;
pub const R_PARISC_GPREL14R = 30;
pub const R_PARISC_GPREL14WR = 91;
pub const R_PARISC_GPREL16DF = 95;
pub const R_PARISC_GPREL16F = 93;
pub const R_PARISC_GPREL16WF = 94;
pub const R_PARISC_GPREL21L = 26;
pub const R_PARISC_GPREL64 = 88;
pub const R_PARISC_HIRESERVE = 255;
pub const R_PARISC_IPLT = 129;
pub const R_PARISC_LORESERVE = 128;
pub const R_PARISC_LTOFF14DR = 100;
pub const R_PARISC_LTOFF14R = 38;
pub const R_PARISC_LTOFF14WR = 99;
pub const R_PARISC_LTOFF16DF = 103;
pub const R_PARISC_LTOFF16F = 101;
pub const R_PARISC_LTOFF16WF = 102;
pub const R_PARISC_LTOFF21L = 34;
pub const R_PARISC_LTOFF64 = 96;
pub const R_PARISC_LTOFF_FPTR14DR = 124;
pub const R_PARISC_LTOFF_FPTR14R = 62;
pub const R_PARISC_LTOFF_FPTR14WR = 123;
pub const R_PARISC_LTOFF_FPTR16DF = 127;
pub const R_PARISC_LTOFF_FPTR16F = 125;
pub const R_PARISC_LTOFF_FPTR16WF = 126;
pub const R_PARISC_LTOFF_FPTR21L = 58;
pub const R_PARISC_LTOFF_FPTR32 = 57;
pub const R_PARISC_LTOFF_FPTR64 = 120;
pub const R_PARISC_LTOFF_TP14DR = 228;
pub const R_PARISC_LTOFF_TP14F = 167;
pub const R_PARISC_LTOFF_TP14R = 166;
pub const R_PARISC_LTOFF_TP14WR = 227;
pub const R_PARISC_LTOFF_TP16DF = 231;
pub const R_PARISC_LTOFF_TP16F = 229;
pub const R_PARISC_LTOFF_TP16WF = 230;
pub const R_PARISC_LTOFF_TP21L = 162;
pub const R_PARISC_LTOFF_TP64 = 224;
pub const R_PARISC_NONE = 0;
pub const R_PARISC_PCREL14DR = 76;
pub const R_PARISC_PCREL14R = 14;
pub const R_PARISC_PCREL14WR = 75;
pub const R_PARISC_PCREL16DF = 79;
pub const R_PARISC_PCREL16F = 77;
pub const R_PARISC_PCREL16WF = 78;
pub const R_PARISC_PCREL17F = 12;
pub const R_PARISC_PCREL17R = 11;
pub const R_PARISC_PCREL21L = 10;
pub const R_PARISC_PCREL22F = 74;
pub const R_PARISC_PCREL32 = 9;
pub const R_PARISC_PCREL64 = 72;
pub const R_PARISC_PLABEL14R = 70;
pub const R_PARISC_PLABEL21L = 66;
pub const R_PARISC_PLABEL32 = 65;
pub const R_PARISC_PLTOFF14DR = 116;
pub const R_PARISC_PLTOFF14R = 54;
pub const R_PARISC_PLTOFF14WR = 115;
pub const R_PARISC_PLTOFF16DF = 119;
pub const R_PARISC_PLTOFF16F = 117;
pub const R_PARISC_PLTOFF16WF = 118;
pub const R_PARISC_PLTOFF21L = 50;
pub const R_PARISC_SECREL32 = 41;
pub const R_PARISC_SECREL64 = 104;
pub const R_PARISC_SEGBASE = 48;
pub const R_PARISC_SEGREL32 = 49;
pub const R_PARISC_SEGREL64 = 112;
pub const R_PARISC_TLS_DTPMOD32 = 242;
pub const R_PARISC_TLS_DTPMOD64 = 243;
pub const R_PARISC_TLS_DTPOFF32 = 244;
pub const R_PARISC_TLS_DTPOFF64 = 245;
pub const R_PARISC_TLS_GD14R = 235;
pub const R_PARISC_TLS_GD21L = 234;
pub const R_PARISC_TLS_GDCALL = 236;
pub const R_PARISC_TLS_IE14R = R_PARISC_LTOFF_TP14R;
pub const R_PARISC_TLS_IE21L = R_PARISC_LTOFF_TP21L;
pub const R_PARISC_TLS_LDM14R = 238;
pub const R_PARISC_TLS_LDM21L = 237;
pub const R_PARISC_TLS_LDMCALL = 239;
pub const R_PARISC_TLS_LDO14R = 241;
pub const R_PARISC_TLS_LDO21L = 240;
pub const R_PARISC_TLS_LE14R = R_PARISC_TPREL14R;
pub const R_PARISC_TLS_LE21L = R_PARISC_TPREL21L;
pub const R_PARISC_TLS_TPREL32 = R_PARISC_TPREL32;
pub const R_PARISC_TLS_TPREL64 = R_PARISC_TPREL64;
pub const R_PARISC_TPREL14DR = 220;
pub const R_PARISC_TPREL14R = 158;
pub const R_PARISC_TPREL14WR = 219;
pub const R_PARISC_TPREL16DF = 223;
pub const R_PARISC_TPREL16F = 221;
pub const R_PARISC_TPREL16WF = 222;
pub const R_PARISC_TPREL21L = 154;
pub const R_PARISC_TPREL32 = 153;
pub const R_PARISC_TPREL64 = 216;

pub const R_PPC64_ADDR14 = R_PPC_ADDR14;
pub const R_PPC64_ADDR14_BRNTAKEN = R_PPC_ADDR14_BRNTAKEN;
pub const R_PPC64_ADDR14_BRTAKEN = R_PPC_ADDR14_BRTAKEN;
pub const R_PPC64_ADDR16 = R_PPC_ADDR16;
pub const R_PPC64_ADDR16_DS = 56;
pub const R_PPC64_ADDR16_HA = R_PPC_ADDR16_HA;
pub const R_PPC64_ADDR16_HI = R_PPC_ADDR16_HI;
pub const R_PPC64_ADDR16_HIGH = 110;
pub const R_PPC64_ADDR16_HIGHA = 111;
pub const R_PPC64_ADDR16_HIGHER = 39;
pub const R_PPC64_ADDR16_HIGHERA = 40;
pub const R_PPC64_ADDR16_HIGHEST = 41;
pub const R_PPC64_ADDR16_HIGHESTA = 42;
pub const R_PPC64_ADDR16_LO = R_PPC_ADDR16_LO;
pub const R_PPC64_ADDR16_LO_DS = 57;
pub const R_PPC64_ADDR24 = R_PPC_ADDR24;
pub const R_PPC64_ADDR30 = 37;
pub const R_PPC64_ADDR32 = R_PPC_ADDR32;
pub const R_PPC64_ADDR64 = 38;
pub const R_PPC64_COPY = R_PPC_COPY;
pub const R_PPC64_DTPMOD64 = 68;
pub const R_PPC64_DTPREL16 = 74;
pub const R_PPC64_DTPREL16_DS = 101;
pub const R_PPC64_DTPREL16_HA = 77;
pub const R_PPC64_DTPREL16_HI = 76;
pub const R_PPC64_DTPREL16_HIGH = 114;
pub const R_PPC64_DTPREL16_HIGHA = 115;
pub const R_PPC64_DTPREL16_HIGHER = 103;
pub const R_PPC64_DTPREL16_HIGHERA = 104;
pub const R_PPC64_DTPREL16_HIGHEST = 105;
pub const R_PPC64_DTPREL16_HIGHESTA = 106;
pub const R_PPC64_DTPREL16_LO = 75;
pub const R_PPC64_DTPREL16_LO_DS = 102;
pub const R_PPC64_DTPREL64 = 78;
pub const R_PPC64_GLOB_DAT = R_PPC_GLOB_DAT;
pub const R_PPC64_GOT16 = R_PPC_GOT16;
pub const R_PPC64_GOT16_DS = 58;
pub const R_PPC64_GOT16_HA = R_PPC_GOT16_HA;
pub const R_PPC64_GOT16_HI = R_PPC_GOT16_HI;
pub const R_PPC64_GOT16_LO = R_PPC_GOT16_LO;
pub const R_PPC64_GOT16_LO_DS = 59;
pub const R_PPC64_GOT_DTPREL16_DS = 91;
pub const R_PPC64_GOT_DTPREL16_HA = 94;
pub const R_PPC64_GOT_DTPREL16_HI = 93;
pub const R_PPC64_GOT_DTPREL16_LO_DS = 92;
pub const R_PPC64_GOT_TLSGD16 = 79;
pub const R_PPC64_GOT_TLSGD16_HA = 82;
pub const R_PPC64_GOT_TLSGD16_HI = 81;
pub const R_PPC64_GOT_TLSGD16_LO = 80;
pub const R_PPC64_GOT_TLSLD16 = 83;
pub const R_PPC64_GOT_TLSLD16_HA = 86;
pub const R_PPC64_GOT_TLSLD16_HI = 85;
pub const R_PPC64_GOT_TLSLD16_LO = 84;
pub const R_PPC64_GOT_TPREL16_DS = 87;
pub const R_PPC64_GOT_TPREL16_HA = 90;
pub const R_PPC64_GOT_TPREL16_HI = 89;
pub const R_PPC64_GOT_TPREL16_LO_DS = 88;
pub const R_PPC64_IRELATIVE = 248;
pub const R_PPC64_JMP_IREL = 247;
pub const R_PPC64_JMP_SLOT = R_PPC_JMP_SLOT;
pub const R_PPC64_NONE = R_PPC_NONE;
pub const R_PPC64_PLT16_HA = R_PPC_PLT16_HA;
pub const R_PPC64_PLT16_HI = R_PPC_PLT16_HI;
pub const R_PPC64_PLT16_LO = R_PPC_PLT16_LO;
pub const R_PPC64_PLT16_LO_DS = 60;
pub const R_PPC64_PLT32 = R_PPC_PLT32;
pub const R_PPC64_PLT64 = 45;
pub const R_PPC64_PLTGOT16 = 52;
pub const R_PPC64_PLTGOT16_DS = 65;
pub const R_PPC64_PLTGOT16_HA = 55;
pub const R_PPC64_PLTGOT16_HI = 54;
pub const R_PPC64_PLTGOT16_LO = 53;
pub const R_PPC64_PLTGOT16_LO_DS = 66;
pub const R_PPC64_PLTREL32 = R_PPC_PLTREL32;
pub const R_PPC64_PLTREL64 = 46;
pub const R_PPC64_REL14 = R_PPC_REL14;
pub const R_PPC64_REL14_BRNTAKEN = R_PPC_REL14_BRNTAKEN;
pub const R_PPC64_REL14_BRTAKEN = R_PPC_REL14_BRTAKEN;
pub const R_PPC64_REL16 = 249;
pub const R_PPC64_REL16_HA = 252;
pub const R_PPC64_REL16_HI = 251;
pub const R_PPC64_REL16_LO = 250;
pub const R_PPC64_REL24 = R_PPC_REL24;
pub const R_PPC64_REL32 = R_PPC_REL32;
pub const R_PPC64_REL64 = 44;
pub const R_PPC64_RELATIVE = R_PPC_RELATIVE;
pub const R_PPC64_SECTOFF = R_PPC_SECTOFF;
pub const R_PPC64_SECTOFF_DS = 61;
pub const R_PPC64_SECTOFF_HA = R_PPC_SECTOFF_HA;
pub const R_PPC64_SECTOFF_HI = R_PPC_SECTOFF_HI;
pub const R_PPC64_SECTOFF_LO = R_PPC_SECTOFF_LO;
pub const R_PPC64_SECTOFF_LO_DS = 62;
pub const R_PPC64_TLS = 67;
pub const R_PPC64_TLSGD = 107;
pub const R_PPC64_TLSLD = 108;
pub const R_PPC64_TOC = 51;
pub const R_PPC64_TOC16 = 47;
pub const R_PPC64_TOC16_DS = 63;
pub const R_PPC64_TOC16_HA = 50;
pub const R_PPC64_TOC16_HI = 49;
pub const R_PPC64_TOC16_LO = 48;
pub const R_PPC64_TOC16_LO_DS = 64;
pub const R_PPC64_TOCSAVE = 109;
pub const R_PPC64_TPREL16 = 69;
pub const R_PPC64_TPREL16_DS = 95;
pub const R_PPC64_TPREL16_HA = 72;
pub const R_PPC64_TPREL16_HI = 71;
pub const R_PPC64_TPREL16_HIGH = 112;
pub const R_PPC64_TPREL16_HIGHA = 113;
pub const R_PPC64_TPREL16_HIGHER = 97;
pub const R_PPC64_TPREL16_HIGHERA = 98;
pub const R_PPC64_TPREL16_HIGHEST = 99;
pub const R_PPC64_TPREL16_HIGHESTA = 100;
pub const R_PPC64_TPREL16_LO = 70;
pub const R_PPC64_TPREL16_LO_DS = 96;
pub const R_PPC64_TPREL64 = 73;
pub const R_PPC64_UADDR16 = R_PPC_UADDR16;
pub const R_PPC64_UADDR32 = R_PPC_UADDR32;
pub const R_PPC64_UADDR64 = 43;

pub const R_PPC_ADDR14 = 7;
pub const R_PPC_ADDR14_BRNTAKEN = 9;
pub const R_PPC_ADDR14_BRTAKEN = 8;
pub const R_PPC_ADDR16 = 3;
pub const R_PPC_ADDR16_HA = 6;
pub const R_PPC_ADDR16_HI = 5;
pub const R_PPC_ADDR16_LO = 4;
pub const R_PPC_ADDR24 = 2;
pub const R_PPC_ADDR32 = 1;
pub const R_PPC_COPY = 19;
pub const R_PPC_DIAB_RELSDA_HA = 185;
pub const R_PPC_DIAB_RELSDA_HI = 184;
pub const R_PPC_DIAB_RELSDA_LO = 183;
pub const R_PPC_DIAB_SDA21_HA = 182;
pub const R_PPC_DIAB_SDA21_HI = 181;
pub const R_PPC_DIAB_SDA21_LO = 180;
pub const R_PPC_DTPMOD32 = 68;
pub const R_PPC_DTPREL16 = 74;
pub const R_PPC_DTPREL16_HA = 77;
pub const R_PPC_DTPREL16_HI = 76;
pub const R_PPC_DTPREL16_LO = 75;
pub const R_PPC_DTPREL32 = 78;
pub const R_PPC_EMB_BIT_FLD = 115;
pub const R_PPC_EMB_MRKREF = 110;
pub const R_PPC_EMB_NADDR16 = 102;
pub const R_PPC_EMB_NADDR16_HA = 105;
pub const R_PPC_EMB_NADDR16_HI = 104;
pub const R_PPC_EMB_NADDR16_LO = 103;
pub const R_PPC_EMB_NADDR32 = 101;
pub const R_PPC_EMB_RELSDA = 116;
pub const R_PPC_EMB_RELSEC16 = 111;
pub const R_PPC_EMB_RELST_HA = 114;
pub const R_PPC_EMB_RELST_HI = 113;
pub const R_PPC_EMB_RELST_LO = 112;
pub const R_PPC_EMB_SDA21 = 109;
pub const R_PPC_EMB_SDA2I16 = 107;
pub const R_PPC_EMB_SDA2REL = 108;
pub const R_PPC_EMB_SDAI16 = 106;
pub const R_PPC_GLOB_DAT = 20;
pub const R_PPC_GOT16 = 14;
pub const R_PPC_GOT16_HA = 17;
pub const R_PPC_GOT16_HI = 16;
pub const R_PPC_GOT16_LO = 15;
pub const R_PPC_GOT_DTPREL16 = 91;
pub const R_PPC_GOT_DTPREL16_HA = 94;
pub const R_PPC_GOT_DTPREL16_HI = 93;
pub const R_PPC_GOT_DTPREL16_LO = 92;
pub const R_PPC_GOT_TLSGD16 = 79;
pub const R_PPC_GOT_TLSGD16_HA = 82;
pub const R_PPC_GOT_TLSGD16_HI = 81;
pub const R_PPC_GOT_TLSGD16_LO = 80;
pub const R_PPC_GOT_TLSLD16 = 83;
pub const R_PPC_GOT_TLSLD16_HA = 86;
pub const R_PPC_GOT_TLSLD16_HI = 85;
pub const R_PPC_GOT_TLSLD16_LO = 84;
pub const R_PPC_GOT_TPREL16 = 87;
pub const R_PPC_GOT_TPREL16_HA = 90;
pub const R_PPC_GOT_TPREL16_HI = 89;
pub const R_PPC_GOT_TPREL16_LO = 88;
pub const R_PPC_IRELATIVE = 248;
pub const R_PPC_JMP_SLOT = 21;
pub const R_PPC_LOCAL24PC = 23;
pub const R_PPC_NONE = 0;
pub const R_PPC_PLT16_HA = 31;
pub const R_PPC_PLT16_HI = 30;
pub const R_PPC_PLT16_LO = 29;
pub const R_PPC_PLT32 = 27;
pub const R_PPC_PLTREL24 = 18;
pub const R_PPC_PLTREL32 = 28;
pub const R_PPC_REL14 = 11;
pub const R_PPC_REL14_BRNTAKEN = 13;
pub const R_PPC_REL14_BRTAKEN = 12;
pub const R_PPC_REL16 = 249;
pub const R_PPC_REL16_HA = 252;
pub const R_PPC_REL16_HI = 251;
pub const R_PPC_REL16_LO = 250;
pub const R_PPC_REL24 = 10;
pub const R_PPC_REL32 = 26;
pub const R_PPC_RELATIVE = 22;
pub const R_PPC_SDAREL16 = 32;
pub const R_PPC_SECTOFF = 33;
pub const R_PPC_SECTOFF_HA = 36;
pub const R_PPC_SECTOFF_HI = 35;
pub const R_PPC_SECTOFF_LO = 34;
pub const R_PPC_TLS = 67;
pub const R_PPC_TLSGD = 95;
pub const R_PPC_TLSLD = 96;
pub const R_PPC_TOC16 = 255;
pub const R_PPC_TPREL16 = 69;
pub const R_PPC_TPREL16_HA = 72;
pub const R_PPC_TPREL16_HI = 71;
pub const R_PPC_TPREL16_LO = 70;
pub const R_PPC_TPREL32 = 73;
pub const R_PPC_UADDR16 = 25;
pub const R_PPC_UADDR32 = 24;

pub const R_RISCV_32 = 1;
pub const R_RISCV_32_PCREL = 57;
pub const R_RISCV_64 = 2;
pub const R_RISCV_ADD16 = 34;
pub const R_RISCV_ADD32 = 35;
pub const R_RISCV_ADD64 = 36;
pub const R_RISCV_ADD8 = 33;
pub const R_RISCV_ALIGN = 43;
pub const R_RISCV_BRANCH = 16;
pub const R_RISCV_CALL = 18;
pub const R_RISCV_CALL_PLT = 19;
pub const R_RISCV_COPY = 4;
pub const R_RISCV_GNU_VTENTRY = 42;
pub const R_RISCV_GNU_VTINHERIT = 41;
pub const R_RISCV_GOT_HI20 = 20;
pub const R_RISCV_GPREL_I = 47;
pub const R_RISCV_GPREL_S = 48;
pub const R_RISCV_HI20 = 26;
pub const R_RISCV_IRELATIVE = 58;
pub const R_RISCV_JAL = 17;
pub const R_RISCV_JUMP_SLOT = 5;
pub const R_RISCV_LO12_I = 27;
pub const R_RISCV_LO12_S = 28;
pub const R_RISCV_NONE = 0;
pub const R_RISCV_NUM = 62;
pub const R_RISCV_PCREL_HI20 = 23;
pub const R_RISCV_PCREL_LO12_I = 24;
pub const R_RISCV_PCREL_LO12_S = 25;
pub const R_RISCV_PLT32 = 59;
pub const R_RISCV_RELATIVE = 3;
pub const R_RISCV_RELAX = 51;
pub const R_RISCV_RVC_BRANCH = 44;
pub const R_RISCV_RVC_JUMP = 45;
pub const R_RISCV_RVC_LUI = 46;
pub const R_RISCV_SET16 = 55;
pub const R_RISCV_SET32 = 56;
pub const R_RISCV_SET6 = 53;
pub const R_RISCV_SET8 = 54;
pub const R_RISCV_SET_ULEB128 = 60;
pub const R_RISCV_SUB16 = 38;
pub const R_RISCV_SUB32 = 39;
pub const R_RISCV_SUB6 = 52;
pub const R_RISCV_SUB64 = 40;
pub const R_RISCV_SUB8 = 37;
pub const R_RISCV_SUB_ULEB128 = 61;
pub const R_RISCV_TLS_DTPMOD32 = 6;
pub const R_RISCV_TLS_DTPMOD64 = 7;
pub const R_RISCV_TLS_DTPREL32 = 8;
pub const R_RISCV_TLS_DTPREL64 = 9;
pub const R_RISCV_TLS_GD_HI20 = 22;
pub const R_RISCV_TLS_GOT_HI20 = 21;
pub const R_RISCV_TLS_TPREL32 = 10;
pub const R_RISCV_TLS_TPREL64 = 11;
pub const R_RISCV_TPREL_ADD = 32;
pub const R_RISCV_TPREL_HI20 = 29;
pub const R_RISCV_TPREL_I = 49;
pub const R_RISCV_TPREL_LO12_I = 30;
pub const R_RISCV_TPREL_LO12_S = 31;
pub const R_RISCV_TPREL_S = 50;

pub const R_SH_ALIGN = 29;
pub const R_SH_CODE = 30;
pub const R_SH_COPY = 162;
pub const R_SH_COUNT = 28;
pub const R_SH_DATA = 31;
pub const R_SH_DIR32 = 1;
pub const R_SH_DIR8BP = 7;
pub const R_SH_DIR8L = 9;
pub const R_SH_DIR8W = 8;
pub const R_SH_DIR8WPL = 5;
pub const R_SH_DIR8WPN = 3;
pub const R_SH_DIR8WPZ = 6;
pub const R_SH_GLOB_DAT = 163;
pub const R_SH_GNU_VTENTRY = 35;
pub const R_SH_GNU_VTINHERIT = 34;
pub const R_SH_GOT32 = 160;
pub const R_SH_GOTOFF = 166;
pub const R_SH_GOTPC = 167;
pub const R_SH_IND12W = 4;
pub const R_SH_JMP_SLOT = 164;
pub const R_SH_LABEL = 32;
pub const R_SH_NONE = 0;
pub const R_SH_NUM = 256;
pub const R_SH_PLT32 = 161;
pub const R_SH_REL32 = 2;
pub const R_SH_RELATIVE = 165;
pub const R_SH_SWITCH16 = 25;
pub const R_SH_SWITCH32 = 26;
pub const R_SH_SWITCH8 = 33;
pub const R_SH_TLS_DTPMOD32 = 149;
pub const R_SH_TLS_DTPOFF32 = 150;
pub const R_SH_TLS_GD_32 = 144;
pub const R_SH_TLS_IE_32 = 147;
pub const R_SH_TLS_LDO_32 = 146;
pub const R_SH_TLS_LD_32 = 145;
pub const R_SH_TLS_LE_32 = 148;
pub const R_SH_TLS_TPOFF32 = 151;
pub const R_SH_USES = 27;

pub const R_SPARC_10 = 30;
pub const R_SPARC_11 = 31;
pub const R_SPARC_13 = 11;
pub const R_SPARC_16 = 2;
pub const R_SPARC_22 = 10;
pub const R_SPARC_32 = 3;
pub const R_SPARC_5 = 44;
pub const R_SPARC_6 = 45;
pub const R_SPARC_64 = 32;
pub const R_SPARC_7 = 43;
pub const R_SPARC_8 = 1;
pub const R_SPARC_COPY = 19;
pub const R_SPARC_DISP16 = 5;
pub const R_SPARC_DISP32 = 6;
pub const R_SPARC_DISP64 = 46;
pub const R_SPARC_DISP8 = 4;
pub const R_SPARC_GLOB_DAT = 20;
pub const R_SPARC_GLOB_JMP = 42;
pub const R_SPARC_GNU_VTENTRY = 251;
pub const R_SPARC_GNU_VTINHERIT = 250;
pub const R_SPARC_GOT10 = 13;
pub const R_SPARC_GOT13 = 14;
pub const R_SPARC_GOT22 = 15;
pub const R_SPARC_GOTDATA_HIX22 = 80;
pub const R_SPARC_GOTDATA_LOX10 = 81;
pub const R_SPARC_GOTDATA_OP = 84;
pub const R_SPARC_GOTDATA_OP_HIX22 = 82;
pub const R_SPARC_GOTDATA_OP_LOX10 = 83;
pub const R_SPARC_H34 = 85;
pub const R_SPARC_H44 = 50;
pub const R_SPARC_HH22 = 34;
pub const R_SPARC_HI22 = 9;
pub const R_SPARC_HIPLT22 = 25;
pub const R_SPARC_HIX22 = 48;
pub const R_SPARC_HM10 = 35;
pub const R_SPARC_IRELATIVE = 249;
pub const R_SPARC_JMP_IREL = 248;
pub const R_SPARC_JMP_SLOT = 21;
pub const R_SPARC_L44 = 52;
pub const R_SPARC_LM22 = 36;
pub const R_SPARC_LO10 = 12;
pub const R_SPARC_LOPLT10 = 26;
pub const R_SPARC_LOX10 = 49;
pub const R_SPARC_M44 = 51;
pub const R_SPARC_NONE = 0;
pub const R_SPARC_NUM = 253;
pub const R_SPARC_OLO10 = 33;
pub const R_SPARC_PC10 = 16;
pub const R_SPARC_PC22 = 17;
pub const R_SPARC_PCPLT10 = 29;
pub const R_SPARC_PCPLT22 = 28;
pub const R_SPARC_PCPLT32 = 27;
pub const R_SPARC_PC_HH22 = 37;
pub const R_SPARC_PC_HM10 = 38;
pub const R_SPARC_PC_LM22 = 39;
pub const R_SPARC_PLT32 = 24;
pub const R_SPARC_PLT64 = 47;
pub const R_SPARC_REGISTER = 53;
pub const R_SPARC_RELATIVE = 22;
pub const R_SPARC_REV32 = 252;
pub const R_SPARC_SIZE32 = 86;
pub const R_SPARC_SIZE64 = 87;
pub const R_SPARC_TLS_DTPMOD32 = 74;
pub const R_SPARC_TLS_DTPMOD64 = 75;
pub const R_SPARC_TLS_DTPOFF32 = 76;
pub const R_SPARC_TLS_DTPOFF64 = 77;
pub const R_SPARC_TLS_GD_ADD = 58;
pub const R_SPARC_TLS_GD_CALL = 59;
pub const R_SPARC_TLS_GD_HI22 = 56;
pub const R_SPARC_TLS_GD_LO10 = 57;
pub const R_SPARC_TLS_IE_ADD = 71;
pub const R_SPARC_TLS_IE_HI22 = 67;
pub const R_SPARC_TLS_IE_LD = 69;
pub const R_SPARC_TLS_IE_LDX = 70;
pub const R_SPARC_TLS_IE_LO10 = 68;
pub const R_SPARC_TLS_LDM_ADD = 62;
pub const R_SPARC_TLS_LDM_CALL = 63;
pub const R_SPARC_TLS_LDM_HI22 = 60;
pub const R_SPARC_TLS_LDM_LO10 = 61;
pub const R_SPARC_TLS_LDO_ADD = 66;
pub const R_SPARC_TLS_LDO_HIX22 = 64;
pub const R_SPARC_TLS_LDO_LOX10 = 65;
pub const R_SPARC_TLS_LE_HIX22 = 72;
pub const R_SPARC_TLS_LE_LOX10 = 73;
pub const R_SPARC_TLS_TPOFF32 = 78;
pub const R_SPARC_TLS_TPOFF64 = 79;
pub const R_SPARC_UA16 = 55;
pub const R_SPARC_UA32 = 23;
pub const R_SPARC_UA64 = 54;
pub const R_SPARC_WDISP10 = 88;
pub const R_SPARC_WDISP16 = 40;
pub const R_SPARC_WDISP19 = 41;
pub const R_SPARC_WDISP22 = 8;
pub const R_SPARC_WDISP30 = 7;
pub const R_SPARC_WPLT30 = 18;

pub const R_TILEGX_16 = 3;
pub const R_TILEGX_16_PCREL = 7;
pub const R_TILEGX_32 = 2;
pub const R_TILEGX_32_PCREL = 6;
pub const R_TILEGX_64 = 1;
pub const R_TILEGX_64_PCREL = 5;
pub const R_TILEGX_8 = 4;
pub const R_TILEGX_8_PCREL = 8;
pub const R_TILEGX_BROFF_X1 = 20;
pub const R_TILEGX_COPY = 16;
pub const R_TILEGX_DEST_IMM8_X1 = 27;
pub const R_TILEGX_GLOB_DAT = 17;
pub const R_TILEGX_GNU_VTENTRY = 129;
pub const R_TILEGX_GNU_VTINHERIT = 128;
pub const R_TILEGX_HW0 = 9;
pub const R_TILEGX_HW0_LAST = 13;
pub const R_TILEGX_HW1 = 10;
pub const R_TILEGX_HW1_LAST = 14;
pub const R_TILEGX_HW2 = 11;
pub const R_TILEGX_HW2_LAST = 15;
pub const R_TILEGX_HW3 = 12;
pub const R_TILEGX_IMM16_X0_HW0 = 36;
pub const R_TILEGX_IMM16_X0_HW0_GOT = 64;
pub const R_TILEGX_IMM16_X0_HW0_LAST = 44;
pub const R_TILEGX_IMM16_X0_HW0_LAST_GOT = 72;
pub const R_TILEGX_IMM16_X0_HW0_LAST_PCREL = 58;
pub const R_TILEGX_IMM16_X0_HW0_LAST_PLT_PCREL = 94;
pub const R_TILEGX_IMM16_X0_HW0_LAST_TLS_GD = 86;
pub const R_TILEGX_IMM16_X0_HW0_LAST_TLS_IE = 100;
pub const R_TILEGX_IMM16_X0_HW0_LAST_TLS_LE = 82;
pub const R_TILEGX_IMM16_X0_HW0_PCREL = 50;
pub const R_TILEGX_IMM16_X0_HW0_PLT_PCREL = 66;
pub const R_TILEGX_IMM16_X0_HW0_TLS_GD = 78;
pub const R_TILEGX_IMM16_X0_HW0_TLS_IE = 92;
pub const R_TILEGX_IMM16_X0_HW0_TLS_LE = 80;
pub const R_TILEGX_IMM16_X0_HW1 = 38;
pub const R_TILEGX_IMM16_X0_HW1_LAST = 46;
pub const R_TILEGX_IMM16_X0_HW1_LAST_GOT = 74;
pub const R_TILEGX_IMM16_X0_HW1_LAST_PCREL = 60;
pub const R_TILEGX_IMM16_X0_HW1_LAST_PLT_PCREL = 96;
pub const R_TILEGX_IMM16_X0_HW1_LAST_TLS_GD = 88;
pub const R_TILEGX_IMM16_X0_HW1_LAST_TLS_IE = 102;
pub const R_TILEGX_IMM16_X0_HW1_LAST_TLS_LE = 84;
pub const R_TILEGX_IMM16_X0_HW1_PCREL = 52;
pub const R_TILEGX_IMM16_X0_HW1_PLT_PCREL = 68;
pub const R_TILEGX_IMM16_X0_HW2 = 40;
pub const R_TILEGX_IMM16_X0_HW2_LAST = 48;
pub const R_TILEGX_IMM16_X0_HW2_LAST_PCREL = 62;
pub const R_TILEGX_IMM16_X0_HW2_LAST_PLT_PCREL = 98;
pub const R_TILEGX_IMM16_X0_HW2_PCREL = 54;
pub const R_TILEGX_IMM16_X0_HW2_PLT_PCREL = 70;
pub const R_TILEGX_IMM16_X0_HW3 = 42;
pub const R_TILEGX_IMM16_X0_HW3_PCREL = 56;
pub const R_TILEGX_IMM16_X0_HW3_PLT_PCREL = 76;
pub const R_TILEGX_IMM16_X1_HW0 = 37;
pub const R_TILEGX_IMM16_X1_HW0_GOT = 65;
pub const R_TILEGX_IMM16_X1_HW0_LAST = 45;
pub const R_TILEGX_IMM16_X1_HW0_LAST_GOT = 73;
pub const R_TILEGX_IMM16_X1_HW0_LAST_PCREL = 59;
pub const R_TILEGX_IMM16_X1_HW0_LAST_PLT_PCREL = 95;
pub const R_TILEGX_IMM16_X1_HW0_LAST_TLS_GD = 87;
pub const R_TILEGX_IMM16_X1_HW0_LAST_TLS_IE = 101;
pub const R_TILEGX_IMM16_X1_HW0_LAST_TLS_LE = 83;
pub const R_TILEGX_IMM16_X1_HW0_PCREL = 51;
pub const R_TILEGX_IMM16_X1_HW0_PLT_PCREL = 67;
pub const R_TILEGX_IMM16_X1_HW0_TLS_GD = 79;
pub const R_TILEGX_IMM16_X1_HW0_TLS_IE = 93;
pub const R_TILEGX_IMM16_X1_HW0_TLS_LE = 81;
pub const R_TILEGX_IMM16_X1_HW1 = 39;
pub const R_TILEGX_IMM16_X1_HW1_LAST = 47;
pub const R_TILEGX_IMM16_X1_HW1_LAST_GOT = 75;
pub const R_TILEGX_IMM16_X1_HW1_LAST_PCREL = 61;
pub const R_TILEGX_IMM16_X1_HW1_LAST_PLT_PCREL = 97;
pub const R_TILEGX_IMM16_X1_HW1_LAST_TLS_GD = 89;
pub const R_TILEGX_IMM16_X1_HW1_LAST_TLS_IE = 103;
pub const R_TILEGX_IMM16_X1_HW1_LAST_TLS_LE = 85;
pub const R_TILEGX_IMM16_X1_HW1_PCREL = 53;
pub const R_TILEGX_IMM16_X1_HW1_PLT_PCREL = 69;
pub const R_TILEGX_IMM16_X1_HW2 = 41;
pub const R_TILEGX_IMM16_X1_HW2_LAST = 49;
pub const R_TILEGX_IMM16_X1_HW2_LAST_PCREL = 63;
pub const R_TILEGX_IMM16_X1_HW2_LAST_PLT_PCREL = 99;
pub const R_TILEGX_IMM16_X1_HW2_PCREL = 55;
pub const R_TILEGX_IMM16_X1_HW2_PLT_PCREL = 71;
pub const R_TILEGX_IMM16_X1_HW3 = 43;
pub const R_TILEGX_IMM16_X1_HW3_PCREL = 57;
pub const R_TILEGX_IMM16_X1_HW3_PLT_PCREL = 77;
pub const R_TILEGX_IMM8_X0 = 23;
pub const R_TILEGX_IMM8_X0_TLS_ADD = 118;
pub const R_TILEGX_IMM8_X0_TLS_GD_ADD = 113;
pub const R_TILEGX_IMM8_X1 = 25;
pub const R_TILEGX_IMM8_X1_TLS_ADD = 119;
pub const R_TILEGX_IMM8_X1_TLS_GD_ADD = 114;
pub const R_TILEGX_IMM8_Y0 = 24;
pub const R_TILEGX_IMM8_Y0_TLS_ADD = 120;
pub const R_TILEGX_IMM8_Y0_TLS_GD_ADD = 115;
pub const R_TILEGX_IMM8_Y1 = 26;
pub const R_TILEGX_IMM8_Y1_TLS_ADD = 121;
pub const R_TILEGX_IMM8_Y1_TLS_GD_ADD = 116;
pub const R_TILEGX_JMP_SLOT = 18;
pub const R_TILEGX_JUMPOFF_X1 = 21;
pub const R_TILEGX_JUMPOFF_X1_PLT = 22;
pub const R_TILEGX_MF_IMM14_X1 = 29;
pub const R_TILEGX_MMEND_X0 = 31;
pub const R_TILEGX_MMSTART_X0 = 30;
pub const R_TILEGX_MT_IMM14_X1 = 28;
pub const R_TILEGX_NONE = 0;
pub const R_TILEGX_NUM = 130;
pub const R_TILEGX_RELATIVE = 19;
pub const R_TILEGX_SHAMT_X0 = 32;
pub const R_TILEGX_SHAMT_X1 = 33;
pub const R_TILEGX_SHAMT_Y0 = 34;
pub const R_TILEGX_SHAMT_Y1 = 35;
pub const R_TILEGX_TLS_DTPMOD32 = 109;
pub const R_TILEGX_TLS_DTPMOD64 = 106;
pub const R_TILEGX_TLS_DTPOFF32 = 110;
pub const R_TILEGX_TLS_DTPOFF64 = 107;
pub const R_TILEGX_TLS_GD_CALL = 112;
pub const R_TILEGX_TLS_IE_LOAD = 117;
pub const R_TILEGX_TLS_TPOFF32 = 111;
pub const R_TILEGX_TLS_TPOFF64 = 108;

pub const R_TILEPRO_16 = 2;
pub const R_TILEPRO_16_PCREL = 5;
pub const R_TILEPRO_32 = 1;
pub const R_TILEPRO_32_PCREL = 4;
pub const R_TILEPRO_8 = 3;
pub const R_TILEPRO_8_PCREL = 6;
pub const R_TILEPRO_BROFF_X1 = 14;
pub const R_TILEPRO_COPY = 10;
pub const R_TILEPRO_DEST_IMM8_X1 = 55;
pub const R_TILEPRO_GLOB_DAT = 11;
pub const R_TILEPRO_GNU_VTENTRY = 129;
pub const R_TILEPRO_GNU_VTINHERIT = 128;
pub const R_TILEPRO_HA16 = 9;
pub const R_TILEPRO_HI16 = 8;
pub const R_TILEPRO_IMM16_X0 = 23;
pub const R_TILEPRO_IMM16_X0_GOT = 39;
pub const R_TILEPRO_IMM16_X0_GOT_HA = 45;
pub const R_TILEPRO_IMM16_X0_GOT_HI = 43;
pub const R_TILEPRO_IMM16_X0_GOT_LO = 41;
pub const R_TILEPRO_IMM16_X0_HA = 29;
pub const R_TILEPRO_IMM16_X0_HA_PCREL = 37;
pub const R_TILEPRO_IMM16_X0_HI = 27;
pub const R_TILEPRO_IMM16_X0_HI_PCREL = 35;
pub const R_TILEPRO_IMM16_X0_LO = 25;
pub const R_TILEPRO_IMM16_X0_LO_PCREL = 33;
pub const R_TILEPRO_IMM16_X0_PCREL = 31;
pub const R_TILEPRO_IMM16_X0_TLS_GD = 66;
pub const R_TILEPRO_IMM16_X0_TLS_GD_HA = 72;
pub const R_TILEPRO_IMM16_X0_TLS_GD_HI = 70;
pub const R_TILEPRO_IMM16_X0_TLS_GD_LO = 68;
pub const R_TILEPRO_IMM16_X0_TLS_IE = 74;
pub const R_TILEPRO_IMM16_X0_TLS_IE_HA = 80;
pub const R_TILEPRO_IMM16_X0_TLS_IE_HI = 78;
pub const R_TILEPRO_IMM16_X0_TLS_IE_LO = 76;
pub const R_TILEPRO_IMM16_X0_TLS_LE = 85;
pub const R_TILEPRO_IMM16_X0_TLS_LE_HA = 91;
pub const R_TILEPRO_IMM16_X0_TLS_LE_HI = 89;
pub const R_TILEPRO_IMM16_X0_TLS_LE_LO = 87;
pub const R_TILEPRO_IMM16_X1 = 24;
pub const R_TILEPRO_IMM16_X1_GOT = 40;
pub const R_TILEPRO_IMM16_X1_GOT_HA = 46;
pub const R_TILEPRO_IMM16_X1_GOT_HI = 44;
pub const R_TILEPRO_IMM16_X1_GOT_LO = 42;
pub const R_TILEPRO_IMM16_X1_HA = 30;
pub const R_TILEPRO_IMM16_X1_HA_PCREL = 38;
pub const R_TILEPRO_IMM16_X1_HI = 28;
pub const R_TILEPRO_IMM16_X1_HI_PCREL = 36;
pub const R_TILEPRO_IMM16_X1_LO = 26;
pub const R_TILEPRO_IMM16_X1_LO_PCREL = 34;
pub const R_TILEPRO_IMM16_X1_PCREL = 32;
pub const R_TILEPRO_IMM16_X1_TLS_GD = 67;
pub const R_TILEPRO_IMM16_X1_TLS_GD_HA = 73;
pub const R_TILEPRO_IMM16_X1_TLS_GD_HI = 71;
pub const R_TILEPRO_IMM16_X1_TLS_GD_LO = 69;
pub const R_TILEPRO_IMM16_X1_TLS_IE = 75;
pub const R_TILEPRO_IMM16_X1_TLS_IE_HA = 81;
pub const R_TILEPRO_IMM16_X1_TLS_IE_HI = 79;
pub const R_TILEPRO_IMM16_X1_TLS_IE_LO = 77;
pub const R_TILEPRO_IMM16_X1_TLS_LE = 86;
pub const R_TILEPRO_IMM16_X1_TLS_LE_HA = 92;
pub const R_TILEPRO_IMM16_X1_TLS_LE_HI = 90;
pub const R_TILEPRO_IMM16_X1_TLS_LE_LO = 88;
pub const R_TILEPRO_IMM8_X0 = 17;
pub const R_TILEPRO_IMM8_X0_TLS_GD_ADD = 61;
pub const R_TILEPRO_IMM8_X1 = 19;
pub const R_TILEPRO_IMM8_X1_TLS_GD_ADD = 62;
pub const R_TILEPRO_IMM8_Y0 = 18;
pub const R_TILEPRO_IMM8_Y0_TLS_GD_ADD = 63;
pub const R_TILEPRO_IMM8_Y1 = 20;
pub const R_TILEPRO_IMM8_Y1_TLS_GD_ADD = 64;
pub const R_TILEPRO_JMP_SLOT = 12;
pub const R_TILEPRO_JOFFLONG_X1 = 15;
pub const R_TILEPRO_JOFFLONG_X1_PLT = 16;
pub const R_TILEPRO_LO16 = 7;
pub const R_TILEPRO_MF_IMM15_X1 = 22;
pub const R_TILEPRO_MMEND_X0 = 48;
pub const R_TILEPRO_MMEND_X1 = 50;
pub const R_TILEPRO_MMSTART_X0 = 47;
pub const R_TILEPRO_MMSTART_X1 = 49;
pub const R_TILEPRO_MT_IMM15_X1 = 21;
pub const R_TILEPRO_NONE = 0;
pub const R_TILEPRO_NUM = 130;
pub const R_TILEPRO_RELATIVE = 13;
pub const R_TILEPRO_SHAMT_X0 = 51;
pub const R_TILEPRO_SHAMT_X1 = 52;
pub const R_TILEPRO_SHAMT_Y0 = 53;
pub const R_TILEPRO_SHAMT_Y1 = 54;
pub const R_TILEPRO_TLS_DTPMOD32 = 82;
pub const R_TILEPRO_TLS_DTPOFF32 = 83;
pub const R_TILEPRO_TLS_GD_CALL = 60;
pub const R_TILEPRO_TLS_IE_LOAD = 65;
pub const R_TILEPRO_TLS_TPOFF32 = 84;

pub const R_X86_64_16 = 12;
pub const R_X86_64_32 = 10;
pub const R_X86_64_32S = 11;
pub const R_X86_64_64 = 1;
pub const R_X86_64_8 = 14;
pub const R_X86_64_COPY = 5;
pub const R_X86_64_DTPMOD64 = 16;
pub const R_X86_64_DTPOFF32 = 21;
pub const R_X86_64_DTPOFF64 = 17;
pub const R_X86_64_GLOB_DAT = 6;
pub const R_X86_64_GOT32 = 3;
pub const R_X86_64_GOT64 = 27;
pub const R_X86_64_GOTOFF64 = 25;
pub const R_X86_64_GOTPC32 = 26;
pub const R_X86_64_GOTPC32_TLSDESC = 34;
pub const R_X86_64_GOTPC64 = 29;
pub const R_X86_64_GOTPCREL = 9;
pub const R_X86_64_GOTPCREL64 = 28;
pub const R_X86_64_GOTPCRELX = 41;
pub const R_X86_64_GOTPLT64 = 30;
pub const R_X86_64_GOTTPOFF = 22;
pub const R_X86_64_IRELATIVE = 37;
pub const R_X86_64_JUMP_SLOT = 7;
pub const R_X86_64_NONE = 0;
pub const R_X86_64_NUM = 43;
pub const R_X86_64_PC16 = 13;
pub const R_X86_64_PC32 = 2;
pub const R_X86_64_PC64 = 24;
pub const R_X86_64_PC8 = 15;
pub const R_X86_64_PLT32 = 4;
pub const R_X86_64_PLTOFF64 = 31;
pub const R_X86_64_RELATIVE = 8;
pub const R_X86_64_RELATIVE64 = 38;
pub const R_X86_64_REX_GOTPCRELX = 42;
pub const R_X86_64_SIZE32 = 32;
pub const R_X86_64_SIZE64 = 33;
pub const R_X86_64_TLSDESC = 36;
pub const R_X86_64_TLSDESC_CALL = 35;
pub const R_X86_64_TLSGD = 19;
pub const R_X86_64_TLSLD = 20;
pub const R_X86_64_TPOFF32 = 23;
pub const R_X86_64_TPOFF64 = 18;

pub const SELFMAG = 4;

pub const SHF_ALLOC = (1 << 1);
pub const SHF_COMPRESSED = (1 << 11);
pub const SHF_EXCLUDE = (1 << 31);
pub const SHF_EXECINSTR = (1 << 2);
pub const SHF_GROUP = (1 << 9);
pub const SHF_INFO_LINK = (1 << 6);
pub const SHF_LINK_ORDER = (1 << 7);
pub const SHF_MASKOS = 0x0ff00000;
pub const SHF_MASKPROC = 0xf0000000;
pub const SHF_MERGE = (1 << 4);
pub const SHF_ORDERED = (1 << 30);
pub const SHF_OS_NONCONFORMING = (1 << 8);
pub const SHF_STRINGS = (1 << 5);
pub const SHF_TLS = (1 << 10);
pub const SHF_WRITE = (1 << 0);

pub const SHF_ALPHA_GPREL = 0x10000000;

pub const SHF_ARM_COMDEF = 0x80000000;
pub const SHF_ARM_ENTRYSECT = 0x10000000;

pub const SHF_GNU_RETAIN = (1 << 21);

pub const SHF_IA_64_NORECOV = 0x20000000;
pub const SHF_IA_64_SHORT = 0x10000000;

pub const SHF_MIPS_ADDR = 0x40000000;
pub const SHF_MIPS_GPREL = 0x10000000;
pub const SHF_MIPS_LOCAL = 0x04000000;
pub const SHF_MIPS_MERGE = 0x20000000;
pub const SHF_MIPS_NAMES = 0x02000000;
pub const SHF_MIPS_NODUPE = 0x01000000;
pub const SHF_MIPS_NOSTRIP = 0x08000000;
pub const SHF_MIPS_STRINGS = 0x80000000;

pub const SHF_PARISC_HUGE = 0x40000000;
pub const SHF_PARISC_SBP = 0x80000000;
pub const SHF_PARISC_SHORT = 0x20000000;

pub const SHN_ABS = 0xfff1;
pub const SHN_AFTER = 0xff01;
pub const SHN_BEFORE = 0xff00;
pub const SHN_COMMON = 0xfff2;
pub const SHN_HIOS = 0xff3f;
pub const SHN_HIPROC = 0xff1f;
pub const SHN_HIRESERVE = 0xffff;
pub const SHN_LOOS = 0xff20;
pub const SHN_LOPROC = 0xff00;
pub const SHN_LORESERVE = 0xff00;
pub const SHN_UNDEF = 0;
pub const SHN_XINDEX = 0xffff;

pub const SHN_MIPS_ACOMMON = 0xff00;
pub const SHN_MIPS_DATA = 0xff02;
pub const SHN_MIPS_SCOMMON = 0xff03;
pub const SHN_MIPS_SUNDEFINED = 0xff04;
pub const SHN_MIPS_TEXT = 0xff01;

pub const SHN_PARISC_ANSI_COMMON = 0xff00;
pub const SHN_PARISC_HUGE_COMMON = 0xff01;

pub const SHT_CHECKSUM = 0x6ffffff8;
pub const SHT_DYNAMIC = 6;
pub const SHT_DYNSYM = 11;
pub const SHT_FINI_ARRAY = 15;
pub const SHT_GROUP = 17;
pub const SHT_HASH = 5;
pub const SHT_HIOS = 0x6fffffff;
pub const SHT_HIPROC = 0x7fffffff;
pub const SHT_HISUNW = 0x6fffffff;
pub const SHT_HIUSER = 0x8fffffff;
pub const SHT_INIT_ARRAY = 14;
pub const SHT_LOOS = 0x60000000;
pub const SHT_LOPROC = 0x70000000;
pub const SHT_LOSUNW = 0x6ffffffa;
pub const SHT_LOUSER = 0x80000000;
pub const SHT_NOBITS = 8;
pub const SHT_NOTE = 7;
pub const SHT_NULL = 0;
pub const SHT_NUM = 20;
pub const SHT_PREINIT_ARRAY = 16;
pub const SHT_PROGBITS = 1;
pub const SHT_REL = 9;
pub const SHT_RELA = 4;
pub const SHT_RELR = 19;
pub const SHT_SHLIB = 10;
pub const SHT_STRTAB = 3;
pub const SHT_SYMTAB = 2;
pub const SHT_SYMTAB_SHNDX = 18;
pub const SHT_X86_64_UNWIND = 0x70000001;

pub const SHT_ALPHA_DEBUG = 0x70000001;
pub const SHT_ALPHA_REGINFO = 0x70000002;

pub const SHT_ARC_ATTRIBUTES = (SHT_LOPROC + 1);

pub const SHT_ARM_ATTRIBUTES = (SHT_LOPROC + 3);
pub const SHT_ARM_EXIDX = (SHT_LOPROC + 1);
pub const SHT_ARM_PREEMPTMAP = (SHT_LOPROC + 2);

pub const SHT_CSKY_ATTRIBUTES = (SHT_LOPROC + 1);

pub const SHT_GNU_ATTRIBUTES = 0x6ffffff5;
pub const SHT_GNU_HASH = 0x6ffffff6;
pub const SHT_GNU_LIBLIST = 0x6ffffff7;
pub const SHT_GNU_verdef = 0x6ffffffd;
pub const SHT_GNU_verneed = 0x6ffffffe;
pub const SHT_GNU_versym = 0x6fffffff;

pub const SHT_IA_64_EXT = (SHT_LOPROC + 0);
pub const SHT_IA_64_UNWIND = (SHT_LOPROC + 1);

pub const SHT_MIPS_ABIFLAGS = 0x7000002a;
pub const SHT_MIPS_AUXSYM = 0x70000016;
pub const SHT_MIPS_CONFLICT = 0x70000002;
pub const SHT_MIPS_CONTENT = 0x7000000c;
pub const SHT_MIPS_DEBUG = 0x70000005;
pub const SHT_MIPS_DELTACLASS = 0x7000001d;
pub const SHT_MIPS_DELTADECL = 0x7000001f;
pub const SHT_MIPS_DELTAINST = 0x7000001c;
pub const SHT_MIPS_DELTASYM = 0x7000001b;
pub const SHT_MIPS_DENSE = 0x70000013;
pub const SHT_MIPS_DWARF = 0x7000001e;
pub const SHT_MIPS_EH_REGION = 0x70000027;
pub const SHT_MIPS_EVENTS = 0x70000021;
pub const SHT_MIPS_EXTSYM = 0x70000012;
pub const SHT_MIPS_FDESC = 0x70000011;
pub const SHT_MIPS_GPTAB = 0x70000003;
pub const SHT_MIPS_IFACE = 0x7000000b;
pub const SHT_MIPS_LIBLIST = 0x70000000;
pub const SHT_MIPS_LINE = 0x70000019;
pub const SHT_MIPS_LOCSTR = 0x70000018;
pub const SHT_MIPS_LOCSYM = 0x70000015;
pub const SHT_MIPS_MSYM = 0x70000001;
pub const SHT_MIPS_OPTIONS = 0x7000000d;
pub const SHT_MIPS_OPTSYM = 0x70000017;
pub const SHT_MIPS_PACKAGE = 0x70000007;
pub const SHT_MIPS_PACKSYM = 0x70000008;
pub const SHT_MIPS_PDESC = 0x70000014;
pub const SHT_MIPS_PDR_EXCEPTION = 0x70000029;
pub const SHT_MIPS_PIXIE = 0x70000023;
pub const SHT_MIPS_REGINFO = 0x70000006;
pub const SHT_MIPS_RELD = 0x70000009;
pub const SHT_MIPS_RFDESC = 0x7000001a;
pub const SHT_MIPS_SHDR = 0x70000010;
pub const SHT_MIPS_SYMBOL_LIB = 0x70000020;
pub const SHT_MIPS_TRANSLATE = 0x70000022;
pub const SHT_MIPS_UCODE = 0x70000004;
pub const SHT_MIPS_WHIRL = 0x70000026;
pub const SHT_MIPS_XHASH = 0x7000002b;
pub const SHT_MIPS_XLATE = 0x70000024;
pub const SHT_MIPS_XLATE_DEBUG = 0x70000025;
pub const SHT_MIPS_XLATE_OLD = 0x70000028;

pub const SHT_PARISC_DOC = 0x70000002;
pub const SHT_PARISC_EXT = 0x70000000;
pub const SHT_PARISC_UNWIND = 0x70000001;

pub const SHT_RISCV_ATTRIBUTES = (SHT_LOPROC + 3);

pub const SHT_SUNW_COMDAT = 0x6ffffffb;
pub const SHT_SUNW_move = 0x6ffffffa;
pub const SHT_SUNW_syminfo = 0x6ffffffc;

pub const STB_GLOBAL = 1;
pub const STB_GNU_UNIQUE = 10;
pub const STB_HIOS = 12;
pub const STB_HIPROC = 15;
pub const STB_LOCAL = 0;
pub const STB_LOOS = 10;
pub const STB_LOPROC = 13;
pub const STB_MIPS_SPLIT_COMMON = 13;
pub const STB_NUM = 3;
pub const STB_WEAK = 2;

pub const STN_UNDEF = 0;

pub const STO_AARCH64_VARIANT_PCS = 0x80;

pub const STO_ALPHA_NOPV = 0x80;
pub const STO_ALPHA_STD_GPLOAD = 0x88;

pub const STO_MIPS_DEFAULT = 0x0;
pub const STO_MIPS_HIDDEN = 0x2;
pub const STO_MIPS_INTERNAL = 0x1;
pub const STO_MIPS_PLT = 0x8;
pub const STO_MIPS_PROTECTED = 0x3;
pub const STO_MIPS_SC_ALIGN_UNUSED = 0xff;

pub const STO_PPC64_LOCAL_BIT = 5;
pub const STO_PPC64_LOCAL_MASK = (7 << STO_PPC64_LOCAL_BIT);

pub const STO_RISCV_VARIANT_CC = 0x80;

pub const STT_ARM_16BIT = STT_HIPROC;
pub const STT_ARM_TFUNC = STT_LOPROC;

pub const STT_COMMON = 5;
pub const STT_FILE = 4;
pub const STT_FUNC = 2;
pub const STT_GNU_IFUNC = 10;
pub const STT_HIOS = 12;
pub const STT_HIPROC = 15;
pub const STT_HP_OPAQUE = (STT_LOOS + 0x1);
pub const STT_HP_STUB = (STT_LOOS + 0x2);
pub const STT_LOOS = 10;
pub const STT_LOPROC = 13;
pub const STT_NOTYPE = 0;
pub const STT_NUM = 7;
pub const STT_OBJECT = 1;
pub const STT_PARISC_MILLICODE = 13;
pub const STT_SECTION = 3;
pub const STT_SPARC_REGISTER = 13;
pub const STT_TLS = 6;

pub const STV_DEFAULT = 0;
pub const STV_HIDDEN = 2;
pub const STV_INTERNAL = 1;
pub const STV_PROTECTED = 3;

pub const SYMINFO_BT_LOWRESERVE = 0xff00;
pub const SYMINFO_BT_PARENT = 0xfffe;
pub const SYMINFO_BT_SELF = 0xffff;
pub const SYMINFO_CURRENT = 1;
pub const SYMINFO_FLG_COPY = 0x0004;
pub const SYMINFO_FLG_DIRECT = 0x0001;
pub const SYMINFO_FLG_LAZYLOAD = 0x0008;
pub const SYMINFO_FLG_PASSTHRU = 0x0002;
pub const SYMINFO_NONE = 0;
pub const SYMINFO_NUM = 2;

pub const VER_DEF_CURRENT = 1;
pub const VER_DEF_NONE = 0;
pub const VER_DEF_NUM = 2;

pub const VER_FLG_BASE = 0x1;
pub const VER_FLG_WEAK = 0x2;

pub const VER_NDX_ELIMINATE = 0xff01;
pub const VER_NDX_GLOBAL = 1;
pub const VER_NDX_LOCAL = 0;
pub const VER_NDX_LORESERVE = 0xff00;

pub const VER_NEED_CURRENT = 1;
pub const VER_NEED_NONE = 0;
pub const VER_NEED_NUM = 2;

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

pub const Elf32_Ehdr = extern struct {
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

pub const Elf64_Ehdr = extern struct {
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

pub const Elf32_Shdr = extern struct {
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

pub const Elf64_Shdr = extern struct {
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

pub const Elf32_Chdr = extern struct {
    ch_type: Elf32_Word,
    ch_size: Elf32_Word,
    ch_addralign: Elf32_Word,
};

pub const Elf64_Chdr = extern struct {
    ch_type: Elf64_Word,
    ch_reserved: Elf64_Word,
    ch_size: Elf64_Xword,
    ch_addralign: Elf64_Xword,
};

pub const Elf32_Sym = extern struct {
    st_name: Elf32_Word,
    st_value: Elf32_Addr,
    st_size: Elf32_Word,
    st_info: u8,
    st_other: u8,
    st_shndx: Elf32_Section,
};

pub const Elf64_Sym = extern struct {
    st_name: Elf64_Word,
    st_info: u8,
    st_other: u8,
    st_shndx: Elf64_Section,
    st_value: Elf64_Addr,
    st_size: Elf64_Xword,
};

pub const Elf32_Syminfo = extern struct {
    si_boundto: Elf32_Half,
    si_flags: Elf32_Half,
};

pub const Elf64_Syminfo = extern struct {
    si_boundto: Elf64_Half,
    si_flags: Elf64_Half,
};

pub const Elf32_Rel = extern struct {
    r_offset: Elf32_Addr,
    r_info: Elf32_Word,
};

pub const Elf64_Rel = extern struct {
    r_offset: Elf64_Addr,
    r_info: Elf64_Xword,
};

pub const Elf32_Rela = extern struct {
    r_offset: Elf32_Addr,
    r_info: Elf32_Word,
    r_addend: Elf32_Sword,
};

pub const Elf64_Rela = extern struct {
    r_offset: Elf64_Addr,
    r_info: Elf64_Xword,
    r_addend: Elf64_Sxword,
};

pub const Elf32_Relr = Elf32_Word;
pub const Elf64_Relr = Elf64_Xword;

pub const Elf32_Phdr = extern struct {
    p_type: Elf32_Word,
    p_offset: Elf32_Off,
    p_vaddr: Elf32_Addr,
    p_paddr: Elf32_Addr,
    p_filesz: Elf32_Word,
    p_memsz: Elf32_Word,
    p_flags: Elf32_Word,
    p_align: Elf32_Word,
};

pub const Elf64_Phdr = extern struct {
    p_type: Elf64_Word,
    p_flags: Elf64_Word,
    p_offset: Elf64_Off,
    p_vaddr: Elf64_Addr,
    p_paddr: Elf64_Addr,
    p_filesz: Elf64_Xword,
    p_memsz: Elf64_Xword,
    p_align: Elf64_Xword,
};

pub const Elf32_Dyn = extern struct {
    d_tag: Elf32_Sword,
    d_un: extern union {
        d_val: Elf32_Word,
        d_ptr: Elf32_Addr,
    },
};

pub const Elf64_Dyn = extern struct {
    d_tag: Elf64_Sxword,
    d_un: extern union {
        d_val: Elf64_Xword,
        d_ptr: Elf64_Addr,
    },
};

pub const Elf32_Verdef = extern struct {
    vd_version: Elf32_Half,
    vd_flags: Elf32_Half,
    vd_ndx: Elf32_Half,
    vd_cnt: Elf32_Half,
    vd_hash: Elf32_Word,
    vd_aux: Elf32_Word,
    vd_next: Elf32_Word,
};

pub const Elf64_Verdef = extern struct {
    vd_version: Elf64_Half,
    vd_flags: Elf64_Half,
    vd_ndx: Elf64_Half,
    vd_cnt: Elf64_Half,
    vd_hash: Elf64_Word,
    vd_aux: Elf64_Word,
    vd_next: Elf64_Word,
};

pub const Elf32_Verdaux = extern struct {
    vda_name: Elf32_Word,
    vda_next: Elf32_Word,
};

pub const Elf64_Verdaux = extern struct {
    vda_name: Elf64_Word,
    vda_next: Elf64_Word,
};

pub const Elf32_Verneed = extern struct {
    vn_version: Elf32_Half,
    vn_cnt: Elf32_Half,
    vn_file: Elf32_Word,
    vn_aux: Elf32_Word,
    vn_next: Elf32_Word,
};

pub const Elf64_Verneed = extern struct {
    vn_version: Elf64_Half,
    vn_cnt: Elf64_Half,
    vn_file: Elf64_Word,
    vn_aux: Elf64_Word,
    vn_next: Elf64_Word,
};

pub const Elf32_Vernaux = extern struct {
    vna_hash: Elf32_Word,
    vna_flags: Elf32_Half,
    vna_other: Elf32_Half,
    vna_name: Elf32_Word,
    vna_next: Elf32_Word,
};

pub const Elf64_Vernaux = extern struct {
    vna_hash: Elf64_Word,
    vna_flags: Elf64_Half,
    vna_other: Elf64_Half,
    vna_name: Elf64_Word,
    vna_next: Elf64_Word,
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

pub const Elf32_Nhdr = extern struct {
    n_namesz: Elf32_Word,
    n_descsz: Elf32_Word,
    n_type: Elf32_Word,
};

pub const Elf64_Nhdr = extern struct {
    n_namesz: Elf64_Word,
    n_descsz: Elf64_Word,
    n_type: Elf64_Word,
};

pub const Elf32_Move = extern struct {
    m_value: Elf32_Xword,
    m_info: Elf32_Word,
    m_poffset: Elf32_Word,
    m_repeat: Elf32_Half,
    m_stride: Elf32_Half,
};

pub const Elf64_Move = extern struct {
    m_value: Elf64_Xword,
    m_info: Elf64_Xword,
    m_poffset: Elf64_Xword,
    m_repeat: Elf64_Half,
    m_stride: Elf64_Half,
};

pub const Elf32_gptab = extern union {
    gt_header: extern struct {
        gt_current_g_value: Elf32_Word,
        gt_unused: Elf32_Word,
    },
    gt_entry: extern struct {
        gt_g_value: Elf32_Word,
        gt_bytes: Elf32_Word,
    },
};

pub const Elf32_RegInfo = extern struct {
    ri_gprmask: Elf32_Word,
    ri_cprmask: [4]Elf32_Word,
    ri_gp_value: Elf32_Sword,
};

pub const Elf_Options = extern struct {
    kind: u8,
    size: u8,
    section: Elf32_Section,
    info: Elf32_Word,
};

pub const Elf_Options_Hw = extern struct {
    hwp_flags1: Elf32_Word,
    hwp_flags2: Elf32_Word,
};

pub const Elf32_Lib = extern struct {
    l_name: Elf32_Word,
    l_time_stamp: Elf32_Word,
    l_checksum: Elf32_Word,
    l_version: Elf32_Word,
    l_flags: Elf32_Word,
};

pub const Elf64_Lib = extern struct {
    l_name: Elf64_Word,
    l_time_stamp: Elf64_Word,
    l_checksum: Elf64_Word,
    l_version: Elf64_Word,
    l_flags: Elf64_Word,
};

pub const Elf32_Conflict = Elf32_Addr;

pub const Elf_MIPS_ABIFlags_v0 = extern struct {
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

pub inline fn ELF32_ST_BIND(val: u8) u8 {
    return val >> 4;
}

pub inline fn ELF32_ST_TYPE(val: u8) u8 {
    return val & 0x0f;
}

pub inline fn ELF32_ST_INFO(bind: u8, type_: u8) u8 {
    return (bind << 4) + (type_ & 0x0f);
}

pub inline fn ELF64_ST_BIND(val: u8) u8 {
    return ELF32_ST_BIND(val);
}

pub inline fn ELF64_ST_TYPE(val: u8) u8 {
    return ELF32_ST_TYPE(val);
}

pub inline fn ELF64_ST_INFO(bind: u8, type_: u8) u8 {
    return ELF32_ST_INFO(bind, type_);
}

pub inline fn ELF32_ST_VISIBILITY(o: u8) u8 {
    return o & 0x03;
}

pub inline fn ELF64_ST_VISIBILITY(o: u8) u8 {
    return ELF32_ST_VISIBILITY(o);
}

pub inline fn ELF32_R_SYM(val: u32) u32 {
    return val >> 8;
}

pub inline fn ELF32_R_TYPE(val: u32) u32 {
    return val & 0xff;
}

pub inline fn ELF32_R_INFO(sym: u32, type_: u32) u32 {
    return (sym << 8) + (type_ & 0xff);
}

pub inline fn ELF64_R_SYM(i: u64) u64 {
    return i >> 32;
}

pub inline fn ELF64_R_TYPE(i: u64) u64 {
    return i & 0xffffffff;
}

pub inline fn ELF64_R_INFO(sym: u64, type_: u64) u64 {
    return (@as(u64, sym) << 32) + type_;
}

pub inline fn DT_VALTAGIDX(tag: u64) u64 {
    return DT_VALRNGHI - tag;
}

pub inline fn DT_ADDRTAGIDX(tag: u64) u64 {
    return DT_ADDRRNGHI - tag;
}

pub inline fn DT_VERSIONTAGIDX(tag: u64) u64 {
    return DT_VERNEEDNUM - tag;
}

pub inline fn DT_EXTRATAGIDX(tag: i32) u32 {
    return @intCast(@as(i32, -((tag << 1) >> 1)) - 1);
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

pub inline fn ELF64_M_SYM(info: u32) u32 {
    return ELF32_M_SYM(info);
}

pub inline fn ELF64_M_SIZE(info: u32) u8 {
    return ELF32_M_SIZE(info);
}

pub inline fn ELF64_M_INFO(sym: u32, size: u8) u32 {
    return ELF32_M_INFO(sym, size);
}

pub inline fn PPC64_LOCAL_ENTRY_OFFSET(other: u8) u32 {
    return (((1 << ((other & STO_PPC64_LOCAL_MASK) >> STO_PPC64_LOCAL_BIT)) >> 2) << 2);
}

pub inline fn EF_ARM_EABI_VERSION(flags: u32) u32 {
    return flags & EF_ARM_EABIMASK;
}

pub const VAL_GNU_MIPS_ABI_FP_64 = 6;
pub const VAL_GNU_MIPS_ABI_FP_64A = 7;
pub const VAL_GNU_MIPS_ABI_FP_ANY = 0;
pub const VAL_GNU_MIPS_ABI_FP_DOUBLE = 1;
pub const VAL_GNU_MIPS_ABI_FP_MAX = 7;
pub const VAL_GNU_MIPS_ABI_FP_OLD_64 = 4;
pub const VAL_GNU_MIPS_ABI_FP_SINGLE = 2;
pub const VAL_GNU_MIPS_ABI_FP_SOFT = 3;
pub const VAL_GNU_MIPS_ABI_FP_XX = 5;
