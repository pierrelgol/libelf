const std = @import("std");
const builtin = std.builtin;
const Elf = @This();
pub const elf = @import("elf.zig");

pub const Arch = struct {
    pub const @"386" = @import("arch/386.zig");
    pub const @"68K" = @import("arch/68K.zig");
    pub const Aarch64 = @import("arch/Aarch64.zig");
    pub const Ac = @import("arch/Ac.zig");
    pub const Alpha = @import("arch/Alpha.zig");
    pub const Arc = @import("arch/Arc.zig");
    pub const Arm = @import("arch/Arm.zig");
    pub const Bpf = @import("arch/Bpf.zig");
    pub const Ckcore = @import("arch/Ckcore.zig");
    pub const Cpu32 = @import("arch/Cpu32.zig");
    pub const Cris = @import("arch/Cris.zig");
    pub const Csky = @import("arch/Csky.zig");
    pub const Gnu = @import("arch/Gnu.zig");
    pub const Hp = @import("arch/Hp.zig");
    pub const Ia64 = @import("arch/Ia64.zig");
    pub const LoongArch = @import("arch/LoongArch.zig");
    pub const M32r = @import("arch/M32r.zig");
    pub const Metag = @import("arch/Metag.zig");
    pub const MicroBlaze = @import("arch/MicroBlaze.zig");
    pub const Mips = @import("arch/Mips.zig");
    pub const Mn10300 = @import("arch/Mn10300.zig");
    pub const Nds32 = @import("arch/Nds32.zig");
    pub const Nios2 = @import("arch/Nios2.zig");
    pub const Or1k = @import("arch/Or1k.zig");
    pub const Parisc = @import("arch/Parisc.zig");
    pub const PowerPc = @import("arch/PowerPc.zig");
    pub const PowerPc64 = @import("arch/PowerPc64.zig");
    pub const RiscV = @import("arch/RiscV.zig");
    pub const S390 = @import("arch/S390.zig");
    pub const Sgi = @import("arch/Sgi.zig");
    pub const Sh = @import("arch/Sh.zig");
    pub const Sparc = @import("arch/Sparc.zig");
    pub const Sunw = @import("arch/Sunw.zig");
    pub const TileGx = @import("arch/TileGx.zig");
    pub const TilePro = @import("arch/TilePro.zig");
    pub const X86_64 = @import("arch/X86_64.zig");
};

pub const Symbol = struct {
    pub const Type = enum(u32) {
        common = elf.STT_COMMON,
        file = elf.STT_FILE,
        func = elf.STT_FUNC,
        hios = elf.STT_HIOS,
        hiproc = elf.STT_HIPROC,
        loos = elf.STT_LOOS,
        loproc = elf.STT_LOPROC,
        notype = elf.STT_NOTYPE,
        num = elf.STT_NUM,
        object = elf.STT_OBJECT,
        section = elf.STT_SECTION,
        tls = elf.STT_TLS,
    };

    pub const Visibility = enum(u8) {
        default = elf.STV_DEFAULT,
        hidden = elf.STV_HIDDEN,
        internal = elf.STV_INTERNAL,
        protected = elf.STV_PROTECTED,
    };

    pub const Info = enum(u16) {
        bt_lowreserve = elf.SYMINFO_BT_LOWRESERVE,
        bt_parent = elf.SYMINFO_BT_PARENT,
        bt_self = elf.SYMINFO_BT_SELF,
        current = elf.SYMINFO_CURRENT,
        none = elf.SYMINFO_NONE,
        num = elf.SYMINFO_NUM,

        pub const Flags = enum(u16) {
            flg_copy = elf.SYMINFO_FLG_COPY,
            flg_direct = elf.SYMINFO_FLG_DIRECT,
            flg_lazyload = elf.SYMINFO_FLG_LAZYLOAD,
            flg_passthru = elf.SYMINFO_FLG_PASSTHRU,
        };
    };

    pub const Binding = enum(u32) {
        global = elf.STB_GLOBAL,
        hios = elf.STB_HIOS,
        hiproc = elf.STB_HIPROC,
        local = elf.STB_LOCAL,
        loos = elf.STB_LOOS,
        loproc = elf.STB_LOPROC,
        num = elf.STB_NUM,
        weak = elf.STB_WEAK,
    };
};
pub const Version = struct {
    pub const Definition = enum(u8) {
        current = elf.VER_DEF_CURRENT,
        none = elf.VER_DEF_NONE,
        num = elf.VER_DEF_NUM,
    };

    pub const Flags = enum(u16) {
        base = elf.VER_FLG_BASE,
        weak = elf.VER_FLG_WEAK,
    };

    pub const Index = enum(u16) {
        eliminate = elf.VER_NDX_ELIMINATE,
        global = elf.VER_NDX_GLOBAL,
        local = elf.VER_NDX_LOCAL,
        loreserve = elf.VER_NDX_LORESERVE,
    };

    pub const Needformat = enum(u16) {
        current = elf.VER_NEED_CURRENT,
        none = elf.VER_NEED_NONE,
        num = elf.VER_NEED_NUM,
    };
};

pub const Ident = struct {
    pub const Index = enum(u8) {
        abiversion = elf.EI_ABIVERSION,
        class = elf.EI_CLASS,
        data = elf.EI_DATA,
        mag0 = elf.EI_MAG0,
        mag1 = elf.EI_MAG1,
        mag2 = elf.EI_MAG2,
        mag3 = elf.EI_MAG3,
        osabi = elf.EI_OSABI,
        pad = elf.EI_PAD,
        version = elf.EI_VERSION,
        _,
    };
};

pub const Class = enum(u8) {
    class32 = elf.ELFCLASS32,
    class64 = elf.ELFCLASS64,
    classnone = elf.ELFCLASSNONE,
    classnum = elf.ELFCLASSNUM,
    _,
};

pub const Compress = enum(u32) {
    hios = elf.ELFCOMPRESS_HIOS,
    hiproc = elf.ELFCOMPRESS_HIPROC,
    loos = elf.ELFCOMPRESS_LOOS,
    loproc = elf.ELFCOMPRESS_LOPROC,
    zlib = elf.ELFCOMPRESS_ZLIB,
    zstd = elf.ELFCOMPRESS_ZSTD,
    _,
};

pub const Data = enum(u8) {
    lsb = elf.ELFDATA2LSB,
    msb = elf.ELFDATA2MSB,
    none = elf.ELFDATANONE,
    num = elf.ELFDATANUM,
    _,
};

pub const Magic = enum(u8) {
    mag0 = 0x7f,
    mag1 = 'E',
    mag2 = 'L',
    mag3 = 'F',
    _,
};

pub const OsAbi = enum(u8) {
    aix = elf.ELFOSABI_AIX,
    arm = elf.ELFOSABI_ARM,
    arm_aeabi = elf.ELFOSABI_ARM_AEABI,
    freebsd = elf.ELFOSABI_FREEBSD,
    hpux = elf.ELFOSABI_HPUX,
    irix = elf.ELFOSABI_IRIX,
    linux = elf.ELFOSABI_LINUX,
    modesto = elf.ELFOSABI_MODESTO,
    netbsd = elf.ELFOSABI_NETBSD,
    openbsd = elf.ELFOSABI_OPENBSD,
    solaris = elf.ELFOSABI_SOLARIS,
    standalone = elf.ELFOSABI_STANDALONE,
    sysv = elf.ELFOSABI_SYSV,
    tru64 = elf.ELFOSABI_TRU64,
    _,
};

pub const Note = struct {
    pub const abi = elf.ELF_NOTE_ABI;
    pub const fdo = elf.ELF_NOTE_FDO;
    pub const gnu = elf.ELF_NOTE_GNU;
    pub const os_freebsd = elf.ELF_NOTE_OS_FREEBSD;
    pub const os_gnu = elf.ELF_NOTE_OS_GNU;
    pub const os_linux = elf.ELF_NOTE_OS_LINUX;
    pub const os_solaris2 = elf.ELF_NOTE_OS_SOLARIS2;
    pub const pagesize_hint = elf.ELF_NOTE_PAGESIZE_HINT;
    pub const solaris = elf.ELF_NOTE_SOLARIS;

    pub const Type = struct {
        pub const asrs = elf.NT_ASRS;
        pub const auxv = elf.NT_AUXV;
        pub const file = elf.NT_FILE;
        pub const fpregset = elf.NT_FPREGSET;
        pub const lwpsinfo = elf.NT_LWPSINFO;
        pub const lwpstatus = elf.NT_LWPSTATUS;
        pub const platform = elf.NT_PLATFORM;
        pub const prcred = elf.NT_PRCRED;
        pub const prfpreg = elf.NT_PRFPREG;
        pub const prfpxreg = elf.NT_PRFPXREG;
        pub const prpsinfo = elf.NT_PRPSINFO;
        pub const prstatus = elf.NT_PRSTATUS;
        pub const prxfpreg = elf.NT_PRXFPREG;
        pub const prxreg = elf.NT_PRXREG;
        pub const psinfo = elf.NT_PSINFO;
        pub const pstatus = elf.NT_PSTATUS;
        pub const siginfo = elf.NT_SIGINFO;
        pub const taskstruct = elf.NT_TASKSTRUCT;
        pub const utsname = elf.NT_UTSNAME;
        pub const version = elf.NT_VERSION;
        pub const vmcoredd = elf.NT_VMCOREDD;
        pub const gwindows = elf.NT_GWINDOWS;
    };
};

pub const Machine = enum(u16) {
    @"386" = elf.EM_386,
    @"56800ex" = elf.EM_56800EX,
    @"68hc05" = elf.EM_68HC05,
    @"68hc08" = elf.EM_68HC08,
    @"68hc11" = elf.EM_68HC11,
    @"68hc12" = elf.EM_68HC12,
    @"68hc16" = elf.EM_68HC16,
    @"68k" = elf.EM_68K,
    @"78kor" = elf.EM_78KOR,
    @"8051" = elf.EM_8051,
    @"860" = elf.EM_860,
    @"88k" = elf.EM_88K,
    @"960" = elf.EM_960,
    aarch64 = elf.EM_AARCH64,
    alpha = elf.EM_ALPHA,
    altera_nios2 = elf.EM_ALTERA_NIOS2,
    amdgpu = elf.EM_AMDGPU,
    arc = elf.EM_ARC,
    arca = elf.EM_ARCA,
    arcv2 = elf.EM_ARCV2,
    arc_a5 = elf.EM_ARC_A5,
    arm = elf.EM_ARM,
    avr = elf.EM_AVR,
    avr32 = elf.EM_AVR32,
    ba1 = elf.EM_BA1,
    ba2 = elf.EM_BA2,
    blackfin = elf.EM_BLACKFIN,
    bpf = elf.EM_BPF,
    c166 = elf.EM_C166,
    cdp = elf.EM_CDP,
    ce = elf.EM_CE,
    cloudshield = elf.EM_CLOUDSHIELD,
    coge = elf.EM_COGE,
    coldfire = elf.EM_COLDFIRE,
    cool = elf.EM_COOL,
    corea_1st = elf.EM_COREA_1ST,
    corea_2nd = elf.EM_COREA_2ND,
    cr = elf.EM_CR,
    cr16 = elf.EM_CR16,
    craynv2 = elf.EM_CRAYNV2,
    cris = elf.EM_CRIS,
    crx = elf.EM_CRX,
    csky = elf.EM_CSKY,
    csr_kalimba = elf.EM_CSR_KALIMBA,
    cuda = elf.EM_CUDA,
    cypress_m8c = elf.EM_CYPRESS_M8C,
    d10v = elf.EM_D10V,
    d30v = elf.EM_D30V,
    dsp24 = elf.EM_DSP24,
    dspic30f = elf.EM_DSPIC30F,
    dxp = elf.EM_DXP,
    ecog16 = elf.EM_ECOG16,
    ecog1x = elf.EM_ECOG1X,
    ecog2 = elf.EM_ECOG2,
    emx16 = elf.EM_EMX16,
    emx8 = elf.EM_EMX8,
    etpu = elf.EM_ETPU,
    excess = elf.EM_EXCESS,
    f2mc16 = elf.EM_F2MC16,
    fake_alpha = elf.EM_FAKE_ALPHA,
    firepath = elf.EM_FIREPATH,
    fr20 = elf.EM_FR20,
    fr30 = elf.EM_FR30,
    ft32 = elf.EM_FT32,
    fx66 = elf.EM_FX66,
    h8s = elf.EM_H8S,
    h8_300 = elf.EM_H8_300,
    h8_300h = elf.EM_H8_300H,
    h8_500 = elf.EM_H8_500,
    huany = elf.EM_HUANY,
    iamcu = elf.EM_IAMCU,
    ia_64 = elf.EM_IA_64,
    intelgt = elf.EM_INTELGT,
    ip2k = elf.EM_IP2K,
    javelin = elf.EM_JAVELIN,
    k10m = elf.EM_K10M,
    km32 = elf.EM_KM32,
    kmx32 = elf.EM_KMX32,
    kvarc = elf.EM_KVARC,
    l10m = elf.EM_L10M,
    latticemico32 = elf.EM_LATTICEMICO32,
    loongarch = elf.EM_LOONGARCH,
    m16c = elf.EM_M16C,
    m32 = elf.EM_M32,
    m32c = elf.EM_M32C,
    m32r = elf.EM_M32R,
    manik = elf.EM_MANIK,
    max = elf.EM_MAX,
    maxq30 = elf.EM_MAXQ30,
    mchp_pic = elf.EM_MCHP_PIC,
    mcst_elbrus = elf.EM_MCST_ELBRUS,
    me16 = elf.EM_ME16,
    metag = elf.EM_METAG,
    microblaze = elf.EM_MICROBLAZE,
    mips = elf.EM_MIPS,
    mips_rs3_le = elf.EM_MIPS_RS3_LE,
    mips_x = elf.EM_MIPS_X,
    mma = elf.EM_MMA,
    mmdsp_plus = elf.EM_MMDSP_PLUS,
    mmix = elf.EM_MMIX,
    mn10200 = elf.EM_MN10200,
    mn10300 = elf.EM_MN10300,
    moxie = elf.EM_MOXIE,
    msp430 = elf.EM_MSP430,
    ncpu = elf.EM_NCPU,
    ndr1 = elf.EM_NDR1,
    nds32 = elf.EM_NDS32,
    none = elf.EM_NONE,
    norc = elf.EM_NORC,
    ns32k = elf.EM_NS32K,
    num = elf.EM_NUM,
    open8 = elf.EM_OPEN8,
    openrisc = elf.EM_OPENRISC,
    parisc = elf.EM_PARISC,
    pcp = elf.EM_PCP,
    pdp10 = elf.EM_PDP10,
    pdp11 = elf.EM_PDP11,
    pdsp = elf.EM_PDSP,
    pj = elf.EM_PJ,
    ppc = elf.EM_PPC,
    ppc64 = elf.EM_PPC64,
    prism = elf.EM_PRISM,
    qdsp6 = elf.EM_QDSP6,
    r32c = elf.EM_R32C,
    rce = elf.EM_RCE,
    rh32 = elf.EM_RH32,
    riscv = elf.EM_RISCV,
    rl78 = elf.EM_RL78,
    rs08 = elf.EM_RS08,
    rx = elf.EM_RX,
    s370 = elf.EM_S370,
    s390 = elf.EM_S390,
    score7 = elf.EM_SCORE7,
    sep = elf.EM_SEP,
    se_c17 = elf.EM_SE_C17,
    se_c33 = elf.EM_SE_C33,
    sh = elf.EM_SH,
    sharc = elf.EM_SHARC,
    sle9x = elf.EM_SLE9X,
    snp1k = elf.EM_SNP1K,
    sparc = elf.EM_SPARC,
    sparc32plus = elf.EM_SPARC32PLUS,
    sparcv9 = elf.EM_SPARCV9,
    spu = elf.EM_SPU,
    st100 = elf.EM_ST100,
    st19 = elf.EM_ST19,
    st200 = elf.EM_ST200,
    st7 = elf.EM_ST7,
    st9plus = elf.EM_ST9PLUS,
    starcore = elf.EM_STARCORE,
    stm8 = elf.EM_STM8,
    stxp7x = elf.EM_STXP7X,
    svx = elf.EM_SVX,
    tile64 = elf.EM_TILE64,
    tilegx = elf.EM_TILEGX,
    tilepro = elf.EM_TILEPRO,
    tinyj = elf.EM_TINYJ,
    ti_arp32 = elf.EM_TI_ARP32,
    ti_c2000 = elf.EM_TI_C2000,
    ti_c5500 = elf.EM_TI_C5500,
    ti_c6000 = elf.EM_TI_C6000,
    ti_pru = elf.EM_TI_PRU,
    tmm_gpp = elf.EM_TMM_GPP,
    tpc = elf.EM_TPC,
    tricore = elf.EM_TRICORE,
    trimedia = elf.EM_TRIMEDIA,
    tsk3000 = elf.EM_TSK3000,
    unicore = elf.EM_UNICORE,
    v800 = elf.EM_V800,
    v850 = elf.EM_V850,
    vax = elf.EM_VAX,
    videocore = elf.EM_VIDEOCORE,
    videocore3 = elf.EM_VIDEOCORE3,
    videocore5 = elf.EM_VIDEOCORE5,
    visium = elf.EM_VISIUM,
    vpp500 = elf.EM_VPP500,
    x86_64 = elf.EM_X86_64,
    xcore = elf.EM_XCORE,
    xgate = elf.EM_XGATE,
    ximo16 = elf.EM_XIMO16,
    xtensa = elf.EM_XTENSA,
    z80 = elf.EM_Z80,
    zsp = elf.EM_ZSP,
    _,
};

pub const Section = struct {
    pub const SectionIndex = struct {
        pub const abs = elf.SHN_ABS;
        pub const after = elf.SHN_AFTER;
        pub const before = elf.SHN_BEFORE;
        pub const common = elf.SHN_COMMON;
        pub const hios = elf.SHN_HIOS;
        pub const hiproc = elf.SHN_HIPROC;
        pub const hireserve = elf.SHN_HIRESERVE;
        pub const loos = elf.SHN_LOOS;
        pub const loproc = elf.SHN_LOPROC;
        pub const loreserve = elf.SHN_LORESERVE;
        pub const undef = elf.SHN_UNDEF;
        pub const xindex = elf.SHN_XINDEX;
    };

    pub const SectionType = enum(u32) {
        checksum = elf.SHT_CHECKSUM,
        dynamic = elf.SHT_DYNAMIC,
        dynsym = elf.SHT_DYNSYM,
        fini_array = elf.SHT_FINI_ARRAY,
        group = elf.SHT_GROUP,
        hash = elf.SHT_HASH,
        hios = elf.SHT_HIOS,
        hiproc = elf.SHT_HIPROC,
        hiuser = elf.SHT_HIUSER,
        init_array = elf.SHT_INIT_ARRAY,
        loos = elf.SHT_LOOS,
        loproc = elf.SHT_LOPROC,
        losunw = elf.SHT_LOSUNW,
        louser = elf.SHT_LOUSER,
        nobits = elf.SHT_NOBITS,
        note = elf.SHT_NOTE,
        null = elf.SHT_NULL,
        num = elf.SHT_NUM,
        preinit_array = elf.SHT_PREINIT_ARRAY,
        progbits = elf.SHT_PROGBITS,
        rel = elf.SHT_REL,
        rela = elf.SHT_RELA,
        relr = elf.SHT_RELR,
        shlib = elf.SHT_SHLIB,
        strtab = elf.SHT_STRTAB,
        symtab = elf.SHT_SYMTAB,
        symtab_shndx = elf.SHT_SYMTAB_SHNDX,
        x86_64_unwind = elf.SHT_X86_64_UNWIND,
    };

    pub const SectionFlags = enum(u32) {
        alloc = elf.SHF_ALLOC,
        compressed = elf.SHF_COMPRESSED,
        exclude = elf.SHF_EXCLUDE,
        execinstr = elf.SHF_EXECINSTR,
        group = elf.SHF_GROUP,
        info_link = elf.SHF_INFO_LINK,
        link_order = elf.SHF_LINK_ORDER,
        maskos = elf.SHF_MASKOS,
        maskproc = elf.SHF_MASKPROC,
        merge = elf.SHF_MERGE,
        ordered = elf.SHF_ORDERED,
        os_nonconforming = elf.SHF_OS_NONCONFORMING,
        strings = elf.SHF_STRINGS,
        tls = elf.SHF_TLS,
        write = elf.SHF_WRITE,
    };
};

pub const Program = struct {
    pub const Flags = enum(u32) {
        r = elf.PF_R,
        w = elf.PF_W,
        x = elf.PF_X,
        maskos = elf.PF_MASKOS,
        maskproc = elf.PF_MASKPROC,
        _,
    };

    pub const Type = enum(u32) {
        dynamic = elf.PT_DYNAMIC,
        hios = elf.PT_HIOS,
        hiproc = elf.PT_HIPROC,
        interp = elf.PT_INTERP,
        load = elf.PT_LOAD,
        loos = elf.PT_LOOS,
        loproc = elf.PT_LOPROC,
        note = elf.PT_NOTE,
        null = elf.PT_NULL,
        num = elf.PT_NUM,
        phdr = elf.PT_PHDR,
        shlib = elf.PT_SHLIB,
        tls = elf.PT_TLS,
        _,
    };
};

pub const AuxType = enum(u8) {
    base = elf.AT_BASE,
    base_platform = elf.AT_BASE_PLATFORM,
    clktck = elf.AT_CLKTCK,
    dcachebsize = elf.AT_DCACHEBSIZE,
    egid = elf.AT_EGID,
    entry = elf.AT_ENTRY,
    euid = elf.AT_EUID,
    execfd = elf.AT_EXECFD,
    execfn = elf.AT_EXECFN,
    flags = elf.AT_FLAGS,
    fpucw = elf.AT_FPUCW,
    gid = elf.AT_GID,
    hwcap = elf.AT_HWCAP,
    hwcap2 = elf.AT_HWCAP2,
    hwcap3 = elf.AT_HWCAP3,
    hwcap4 = elf.AT_HWCAP4,
    icachebsize = elf.AT_ICACHEBSIZE,
    ignore = elf.AT_IGNORE,
    ignoreppc = elf.AT_IGNOREPPC,
    l1d_cachegeometry = elf.AT_L1D_CACHEGEOMETRY,
    l1d_cacheshape = elf.AT_L1D_CACHESHAPE,
    l1d_cachesize = elf.AT_L1D_CACHESIZE,
    l1i_cachegeometry = elf.AT_L1I_CACHEGEOMETRY,
    l1i_cacheshape = elf.AT_L1I_CACHESHAPE,
    l1i_cachesize = elf.AT_L1I_CACHESIZE,
    l2_cachegeometry = elf.AT_L2_CACHEGEOMETRY,
    l2_cacheshape = elf.AT_L2_CACHESHAPE,
    l2_cachesize = elf.AT_L2_CACHESIZE,
    l3_cachegeometry = elf.AT_L3_CACHEGEOMETRY,
    l3_cacheshape = elf.AT_L3_CACHESHAPE,
    l3_cachesize = elf.AT_L3_CACHESIZE,
    minsigstksz = elf.AT_MINSIGSTKSZ,
    notelf = elf.AT_NOTELF,
    null = elf.AT_NULL,
    pagesz = elf.AT_PAGESZ,
    phdr = elf.AT_PHDR,
    phent = elf.AT_PHENT,
    phnum = elf.AT_PHNUM,
    platform = elf.AT_PLATFORM,
    random = elf.AT_RANDOM,
    rseq_align = elf.AT_RSEQ_ALIGN,
    rseq_feature_size = elf.AT_RSEQ_FEATURE_SIZE,
    secure = elf.AT_SECURE,
    sysinfo = elf.AT_SYSINFO,
    sysinfo_ehdr = elf.AT_SYSINFO_EHDR,
    ucachebsize = elf.AT_UCACHEBSIZE,
    uid = elf.AT_UID,
    _,
};

pub const Dyn = struct {
    pub const Flags1 = enum(u64) {
        confalt = elf.DF_1_CONFALT,
        direct = elf.DF_1_DIRECT,
        dispreldne = elf.DF_1_DISPRELDNE,
        disprelpnd = elf.DF_1_DISPRELPND,
        edited = elf.DF_1_EDITED,
        endfiltee = elf.DF_1_ENDFILTEE,
        global = elf.DF_1_GLOBAL,
        globaudit = elf.DF_1_GLOBAUDIT,
        group = elf.DF_1_GROUP,
        ignmuldef = elf.DF_1_IGNMULDEF,
        initfirst = elf.DF_1_INITFIRST,
        interpose = elf.DF_1_INTERPOSE,
        kmod = elf.DF_1_KMOD,
        loadfltr = elf.DF_1_LOADFLTR,
        nocommon = elf.DF_1_NOCOMMON,
        nodeflib = elf.DF_1_NODEFLIB,
        nodelete = elf.DF_1_NODELETE,
        nodirect = elf.DF_1_NODIRECT,
        nodump = elf.DF_1_NODUMP,
        nohdr = elf.DF_1_NOHDR,
        noksyms = elf.DF_1_NOKSYMS,
        noopen = elf.DF_1_NOOPEN,
        noreloc = elf.DF_1_NORELOC,
        now = elf.DF_1_NOW,
        origin = elf.DF_1_ORIGIN,
        pie = elf.DF_1_PIE,
        singleton = elf.DF_1_SINGLETON,
        stub = elf.DF_1_STUB,
        symintpose = elf.DF_1_SYMINTPOSE,
        trans = elf.DF_1_TRANS,
        weakfilter = elf.DF_1_WEAKFILTER,
        _,
    };

    pub const Flags = enum(u64) {
        bind_now = elf.DF_BIND_NOW,
        origin = elf.DF_ORIGIN,
        static_tls = elf.DF_STATIC_TLS,
        symbolic = elf.DF_SYMBOLIC,
        textrel = elf.DF_TEXTREL,
        _,
        pub const P1 = enum(u64) {
            p1_groupperm = elf.DF_P1_GROUPPERM,
            p1_lazyload = elf.DF_P1_LAZYLOAD,
            _,
        };
    };

    pub const TransferFlags1 = enum(u64) {
        confexp = elf.DTF_1_CONFEXP,
        parinit = elf.DTF_1_PARINIT,
        _,
    };

    pub const Tags = enum(u64) {
        audit = elf.DT_AUDIT,
        auxiliary = elf.DT_AUXILIARY,
        bind_now = elf.DT_BIND_NOW,
        checksum = elf.DT_CHECKSUM,
        config = elf.DT_CONFIG,
        debug = elf.DT_DEBUG,
        depaudit = elf.DT_DEPAUDIT,
        encoding = elf.DT_ENCODING,
        extranum = elf.DT_EXTRANUM,
        feature_1 = elf.DT_FEATURE_1,
        fini = elf.DT_FINI,
        fini_array = elf.DT_FINI_ARRAY,
        fini_arraysz = elf.DT_FINI_ARRAYSZ,
        flags = elf.DT_FLAGS,
        flags_1 = elf.DT_FLAGS_1,
        hash = elf.DT_HASH,
        hios = elf.DT_HIOS,
        hiproc = elf.DT_HIPROC,
        init = elf.DT_INIT,
        init_array = elf.DT_INIT_ARRAY,
        init_arraysz = elf.DT_INIT_ARRAYSZ,
        jmprel = elf.DT_JMPREL,
        loos = elf.DT_LOOS,
        loproc = elf.DT_LOPROC,
        moveent = elf.DT_MOVEENT,
        movesz = elf.DT_MOVESZ,
        movetab = elf.DT_MOVETAB,
        needed = elf.DT_NEEDED,
        null = elf.DT_NULL,
        num = elf.DT_NUM,
        posflag_1 = elf.DT_POSFLAG_1,
        procnum = elf.DT_PROCNUM,
        rel = elf.DT_REL,
        rela = elf.DT_RELA,
        relacount = elf.DT_RELACOUNT,
        relaent = elf.DT_RELAENT,
        relasz = elf.DT_RELASZ,
        relcount = elf.DT_RELCOUNT,
        relent = elf.DT_RELENT,
        relr = elf.DT_RELR,
        relrent = elf.DT_RELRENT,
        relrsz = elf.DT_RELRSZ,
        relsz = elf.DT_RELSZ,
        rpath = elf.DT_RPATH,
        runpath = elf.DT_RUNPATH,
        soname = elf.DT_SONAME,
        sparc_num = elf.DT_SPARC_NUM,
        sparc_register = elf.DT_SPARC_REGISTER,
        strsz = elf.DT_STRSZ,
        strtab = elf.DT_STRTAB,
        symbolic = elf.DT_SYMBOLIC,
        syment = elf.DT_SYMENT,
        syminent = elf.DT_SYMINENT,
        syminfo = elf.DT_SYMINFO,
        syminsz = elf.DT_SYMINSZ,
        symtab = elf.DT_SYMTAB,
        symtab_shndx = elf.DT_SYMTAB_SHNDX,
        textrel = elf.DT_TEXTREL,

        pub const Addr = enum(u64) {
            addrnum = elf.DT_ADDRNUM,
            addrrnghi = elf.DT_ADDRRNGHI,
            addrrnglo = elf.DT_ADDRRNGLO,
        };

        pub const Tls = enum(u32) {
            desc_got = elf.DT_TLSDESC_GOT,
            desc_plt = elf.DT_TLSDESC_PLT,
        };

        pub const Ver = enum(u32) {
            def = elf.DT_VERDEF,
            defnum = elf.DT_VERDEFNUM,
            need = elf.DT_VERNEED,
            neednum = elf.DT_VERNEEDNUM,
            siontagnum = elf.DT_VERSIONTAGNUM,
            sym = elf.DT_VERSYM,
        };

        pub const Val = enum(u32) {
            num = elf.DT_VALNUM,
            rnghi = elf.DT_VALRNGHI,
            rnglo = elf.DT_VALRNGLO,
        };

        pub const Preinit = enum(u32) {
            preinit_array = elf.DT_PREINIT_ARRAY,
            preinit_arraysz = elf.DT_PREINIT_ARRAYSZ,
        };

        pub const Plt = enum(u32) {
            pltgot = elf.DT_PLTGOT,
            pltpad = elf.DT_PLTPAD,
            pltpadsz = elf.DT_PLTPADSZ,
            pltrel = elf.DT_PLTREL,
            pltrelsz = elf.DT_PLTRELSZ,
        };
    };
};
