const std = @import("std");
const print = std.debug.print;
const ArrayList = std.ArrayList;
const Allocator = std.mem.Allocator;
const builtin = std.builtin;
pub const Elf = @This();

pub const Error = error{
    InvalidMagic,
    InvalidClass,
    InvalidEndian,
    InvalidElfVersion,
    InvalidAbi,
    InvalidAbiVersion,
    InvalidObjType,
    InvalidMachineISA,
};

pub const EI = struct {
    pub const MAG0 = 0;
    pub const MAG1 = 1;
    pub const MAG2 = 2;
    pub const MAG3 = 3;
    pub const CLASS = 4;
    pub const DATA = 5;
    pub const VERSION = 6;
    pub const OSABI = 7;
    pub const ABIVERSION = 8;
    pub const PAD0 = 9;
    pub const PAD1 = 10;
    pub const PAD2 = 11;
    pub const PAD3 = 12;
    pub const PAD4 = 13;
    pub const PAD5 = 14;
    pub const PAD6 = 15;
    pub const SIZE = 16;
};

pub const Endian = enum(u8) {
    none = 0,
    little = 1,
    big = 2,
    _,
};

pub const Abi = enum(u8) {
    none = 0,
    hp_ux = 1,
    net_bsd = 2,
    gnu = 3,
    solaris = 6,
    aix = 7,
    irix = 8,
    free_bsd = 9,
    tru_64 = 10,
    modesto = 11,
    open_bsd = 12,
    open_vms = 13,
    non_stop_kernel = 14,
    aros = 15,
    fenix_os = 16,
    nuxi_cloud_abi = 17,
    open_vos = 18,
    nvidia_cuda = 51,
    amdgpu_hsa = 64,
    amdgpu_pal = 65,
    amdgpu_mesa3d = 66,
    arm = 97,
    standalone = 255,
    _,
};

pub const Isa = enum(u16) {
    none = 0,
    we_32100 = 1,
    sparc = 2,
    x86 = 3,
    m68k = 4,
    m88k = 5,
    imcu = 6,
    i860 = 7,
    mips = 8,
    s370 = 9,
    mips_le = 10,
    hppa = 15,
    i960 = 19,
    ppc = 20,
    ppc64 = 21,
    s390 = 22,
    spu = 23,
    nec_v800 = 36,
    fr20 = 37,
    trw_rh32 = 38,
    motorola_rce = 39,
    arm = 40,
    alpha = 41,
    super_h = 42,
    sparc_v9 = 43,
    tricore = 44,
    arc = 45,
    h8_300 = 46,
    h8_300h = 47,
    h8s = 48,
    h8_500 = 49,
    ia64 = 50,
    mips_x = 51,
    coldfire = 52,
    m68hc12 = 53,
    mma = 54,
    pcp = 55,
    ncpu = 56,
    ndr1 = 57,
    starcore = 58,
    me16 = 59,
    st100 = 60,
    tinyj = 61,
    x86_64 = 62,
    sony_dsp = 63,
    pdp10 = 64,
    pdp11 = 65,
    fx66 = 66,
    st9plus = 67,
    st7 = 68,
    m68hc16 = 69,
    m68hc11 = 70,
    m68hc08 = 71,
    m68hc05 = 72,
    svx = 73,
    st19 = 74,
    vax = 75,
    cris = 76,
    jamrisc = 77,
    elbrus = 175,
    arm64 = 183,
    z80 = 220,
    riscv = 243,
    bpf = 247,
    wdc_65c816 = 257,
    loongarch = 258,
    _,
};

pub const ELF_MAGIC = [4]u8{ 0x7f, 'E', 'L', 'F' };

pub const Class = enum(u8) {
    ELFCLASS32 = 1,
    ELFCLASS64 = 2,
    _,
};

pub const Data = enum(u8) {
    ELFDATA2LSB = 1, // Little endian
    ELFDATA2MSB = 2, // Big endian
    _,
};

pub const Type = enum(u16) {
    ET_NONE = 0, // No file type
    ET_REL = 1, // Relocatable file
    ET_EXEC = 2, // Executable file
    ET_DYN = 3, // Shared object file
    ET_CORE = 4, // Core file
    _,
};

pub const SectionType = enum(u32) {
    SHT_NULL = 0,
    SHT_PROGBITS = 1,
    SHT_SYMTAB = 2,
    SHT_STRTAB = 3,
    SHT_RELA = 4,
    SHT_HASH = 5,
    SHT_DYNAMIC = 6,
    SHT_NOTE = 7,
    SHT_NOBITS = 8,
    SHT_REL = 9,
    SHT_DYNSYM = 11,
    _,
};

pub const ProgramType = enum(u32) {
    PT_NULL = 0,
    PT_LOAD = 1,
    PT_DYNAMIC = 2,
    PT_INTERP = 3,
    PT_NOTE = 4,
    PT_SHLIB = 5,
    PT_PHDR = 6,
    _,
};

// ELF Header structures
pub const ElfHeader32 = struct {
    magic: [4]u8,
    class: u8,
    data: u8,
    version: u8,
    osabi: u8,
    abiversion: u8,
    pad: [7]u8,
    type: u16,
    machine: u16,
    version2: u32,
    entry: u32,
    phoff: u32,
    shoff: u32,
    flags: u32,
    ehsize: u16,
    phentsize: u16,
    phnum: u16,
    shentsize: u16,
    shnum: u16,
    shstrndx: u16,
};

pub const ElfHeader64 = struct {
    magic: [4]u8,
    class: u8,
    data: u8,
    version: u8,
    osabi: u8,
    abiversion: u8,
    pad: [7]u8,
    type: u16,
    machine: u16,
    version2: u32,
    entry: u64,
    phoff: u64,
    shoff: u64,
    flags: u32,
    ehsize: u16,
    phentsize: u16,
    phnum: u16,
    shentsize: u16,
    shnum: u16,
    shstrndx: u16,
};

pub const SectionHeader32 = struct {
    name: u32,
    type: u32,
    flags: u32,
    addr: u32,
    offset: u32,
    size: u32,
    link: u32,
    info: u32,
    addralign: u32,
    entsize: u32,
};

pub const SectionHeader64 = struct {
    name: u32,
    type: u32,
    flags: u64,
    addr: u64,
    offset: u64,
    size: u64,
    link: u32,
    info: u32,
    addralign: u64,
    entsize: u64,
};

pub const ProgramHeader32 = struct {
    type: u32,
    offset: u32,
    vaddr: u32,
    paddr: u32,
    filesz: u32,
    memsz: u32,
    flags: u32,
    algn: u32,
};

pub const ProgramHeader64 = packed struct {
    type: u32,
    flags: u32,
    offset: u64,
    vaddr: u64,
    paddr: u64,
    filesz: u64,
    memsz: u64,
    algn: u64,
};

pub const Symbol32 = packed struct {
    name: u32,
    value: u32,
    size: u32,
    info: u8,
    other: u8,
    shndx: u16,
};

pub const Symbol64 = packed struct {
    name: u32,
    info: u8,
    other: u8,
    shndx: u16,
    value: u64,
    size: u64,
};

pub const ElfHeader = struct {
    magic: [4]u8,
    class: Class,
    data: Data,
    version: u8,
    osabi: Abi,
    abiversion: u8,
    type: Type,
    machine: Isa,
    version2: u32,
    entry: u64,
    phoff: u64,
    shoff: u64,
    flags: u32,
    ehsize: u16,
    phentsize: u16,
    phnum: u16,
    shentsize: u16,
    shnum: u16,
    shstrndx: u16,
};

pub const SectionHeader = struct {
    name: u32,
    type: SectionType,
    flags: u64,
    addr: u64,
    offset: u64,
    size: u64,
    link: u32,
    info: u32,
    addralign: u64,
    entsize: u64,
};

pub const ProgramHeader = struct {
    type: ProgramType,
    flags: u32,
    offset: u64,
    vaddr: u64,
    paddr: u64,
    filesz: u64,
    memsz: u64,
    algn: u64,
};

pub const Symbol = struct {
    name: u32,
    value: u64,
    size: u64,
    info: u8,
    other: u8,
    shndx: u16,
};

// ELF Parser
pub const Parser = struct {
    allocator: Allocator,
    data: []const u8,
    header: ElfHeader,
    sections: ArrayList(SectionHeader),
    programs: ArrayList(ProgramHeader),
    symbols: ArrayList(Symbol),
    string_tables: std.HashMap(u16, []const u8, std.hash_map.AutoContext(u16), std.hash_map.default_max_load_percentage),

    const Self = @This();

    pub fn init(allocator: Allocator, filepath: []const u8) !Self {
        // Read file
        const file = std.fs.cwd().openFile(filepath, .{}) catch |err| {
            print("Error opening file: {}\n", .{err});
            return err;
        };
        defer file.close();

        const file_size = try file.getEndPos();
        const data = try allocator.alloc(u8, file_size);
        _ = try file.readAll(data);

        var parser = Self{
            .allocator = allocator,
            .data = data,
            .header = undefined,
            .sections = ArrayList(SectionHeader).init(allocator),
            .programs = ArrayList(ProgramHeader).init(allocator),
            .symbols = ArrayList(Symbol).init(allocator),
            .string_tables = std.HashMap(u16, []const u8, std.hash_map.AutoContext(u16), std.hash_map.default_max_load_percentage).init(allocator),
        };

        try parser.parseHeader();
        try parser.parseSections();
        try parser.parsePrograms();
        try parser.parseStringTables();
        try parser.parseSymbols();

        return parser;
    }

    pub fn deinit(self: *Self) void {
        self.allocator.free(self.data);
        self.sections.deinit();
        self.programs.deinit();
        self.symbols.deinit();
        self.string_tables.deinit();
    }

    fn parseHeader(self: *Self) !void {
        if (self.data.len < @sizeOf(ElfHeader32)) {
            return error.InvalidElfFile;
        }

        // Check magic
        const magic = self.data[EI.MAG0 .. EI.MAG3 + 1];
        if (!std.mem.eql(u8, magic, &ELF_MAGIC)) {
            return error.InvalidElfFile;
        }

        const class = @as(Class, @enumFromInt(self.data[EI.CLASS]));
        const data_encoding = @as(Data, @enumFromInt(self.data[EI.DATA]));

        switch (class) {
            .ELFCLASS32 => {
                const header32 = std.mem.bytesAsValue(ElfHeader32, self.data[0..@sizeOf(ElfHeader32)]);
                self.header = ElfHeader{
                    .magic = header32.magic,
                    .class = @enumFromInt(header32.class),
                    .data = @enumFromInt(header32.data),
                    .version = header32.version,
                    .osabi = @enumFromInt(header32.osabi),
                    .abiversion = header32.abiversion,
                    .type = @enumFromInt(self.readU16(data_encoding, @alignCast(@ptrCast(&header32.type)))),
                    .machine = @enumFromInt(self.readU16(data_encoding, @alignCast(@ptrCast(&header32.machine)))),
                    .version2 = self.readU32(data_encoding, @alignCast(@ptrCast(&header32.version2))),
                    .entry = self.readU32(data_encoding, @alignCast(@ptrCast(&header32.entry))),
                    .phoff = self.readU32(data_encoding, @alignCast(@ptrCast(&header32.phoff))),
                    .shoff = self.readU32(data_encoding, @alignCast(@ptrCast(&header32.shoff))),
                    .flags = self.readU32(data_encoding, @alignCast(@ptrCast(&header32.flags))),
                    .ehsize = self.readU16(data_encoding, @alignCast(@ptrCast(&header32.ehsize))),
                    .phentsize = self.readU16(data_encoding, @alignCast(@ptrCast(&header32.phentsize))),
                    .phnum = self.readU16(data_encoding, @alignCast(@ptrCast(&header32.phnum))),
                    .shentsize = self.readU16(data_encoding, @alignCast(@ptrCast(&header32.shentsize))),
                    .shnum = self.readU16(data_encoding, @alignCast(@ptrCast(&header32.shnum))),
                    .shstrndx = self.readU16(data_encoding, @alignCast(@ptrCast(&header32.shstrndx))),
                };
            },
            .ELFCLASS64 => {
                const header64 = std.mem.bytesAsValue(ElfHeader64, self.data[0..@sizeOf(ElfHeader64)]);
                self.header = ElfHeader{
                    .magic = header64.magic,
                    .class = @enumFromInt(header64.class),
                    .data = @enumFromInt(header64.data),
                    .version = header64.version,
                    .osabi = @enumFromInt(header64.osabi),
                    .abiversion = header64.abiversion,
                    .type = @enumFromInt(self.readU16(data_encoding, @alignCast(@ptrCast(&header64.type)))),
                    .machine = @enumFromInt(self.readU16(data_encoding, @alignCast(@ptrCast(&header64.machine)))),
                    .version2 = self.readU32(data_encoding, @alignCast(@ptrCast(&header64.version2))),
                    .entry = self.readU64(data_encoding, @alignCast(@ptrCast(&header64.entry))),
                    .phoff = self.readU64(data_encoding, @alignCast(@ptrCast(&header64.phoff))),
                    .shoff = self.readU64(data_encoding, @alignCast(@ptrCast(&header64.shoff))),
                    .flags = self.readU32(data_encoding, @alignCast(@ptrCast(&header64.flags))),
                    .ehsize = self.readU16(data_encoding, @alignCast(@ptrCast(&header64.ehsize))),
                    .phentsize = self.readU16(data_encoding, @alignCast(@ptrCast(&header64.phentsize))),
                    .phnum = self.readU16(data_encoding, @alignCast(@ptrCast(&header64.phnum))),
                    .shentsize = self.readU16(data_encoding, @alignCast(@ptrCast(&header64.shentsize))),
                    .shnum = self.readU16(data_encoding, @alignCast(@ptrCast(&header64.shnum))),
                    .shstrndx = self.readU16(data_encoding, @alignCast(@ptrCast(&header64.shstrndx))),
                };
            },
            else => return error.UnsupportedElfClass,
        }
    }

    fn parseSections(self: *Self) !void {
        if (self.header.shoff == 0) return;

        var i: u16 = 0;
        while (i < self.header.shnum) : (i += 1) {
            const offset = self.header.shoff + i * self.header.shentsize;

            switch (self.header.class) {
                .ELFCLASS32 => {
                    const sh32 = std.mem.bytesAsValue(SectionHeader32, self.data[offset .. offset + @sizeOf(SectionHeader32)]);
                    const section = SectionHeader{
                        .name = self.readU32(self.header.data, @alignCast(@ptrCast(&sh32.name))),
                        .type = @enumFromInt(self.readU32(self.header.data, @alignCast(@ptrCast(&sh32.type)))),
                        .flags = self.readU32(self.header.data, @alignCast(@ptrCast(&sh32.flags))),
                        .addr = self.readU32(self.header.data, @alignCast(@ptrCast(&sh32.addr))),
                        .offset = self.readU32(self.header.data, @alignCast(@ptrCast(&sh32.offset))),
                        .size = self.readU32(self.header.data, @alignCast(@ptrCast(&sh32.size))),
                        .link = self.readU32(self.header.data, @alignCast(@ptrCast(&sh32.link))),
                        .info = self.readU32(self.header.data, @alignCast(@ptrCast(&sh32.info))),
                        .addralign = self.readU32(self.header.data, @alignCast(@ptrCast(&sh32.addralign))),
                        .entsize = self.readU32(self.header.data, @alignCast(@ptrCast(&sh32.entsize))),
                    };
                    try self.sections.append(section);
                },
                .ELFCLASS64 => {
                    const sh64 = std.mem.bytesAsValue(SectionHeader64, self.data[offset .. offset + @sizeOf(SectionHeader64)]);
                    const section = SectionHeader{
                        .name = self.readU32(self.header.data, @alignCast(@ptrCast(&sh64.name))),
                        .type = @enumFromInt(self.readU32(self.header.data, @alignCast(@ptrCast(&sh64.type)))),
                        .flags = self.readU64(self.header.data, @alignCast(@ptrCast(&sh64.flags))),
                        .addr = self.readU64(self.header.data, @alignCast(@ptrCast(&sh64.addr))),
                        .offset = self.readU64(self.header.data, @alignCast(@ptrCast(&sh64.offset))),
                        .size = self.readU64(self.header.data, @alignCast(@ptrCast(&sh64.size))),
                        .link = self.readU32(self.header.data, @alignCast(@ptrCast(&sh64.link))),
                        .info = self.readU32(self.header.data, @alignCast(@ptrCast(&sh64.info))),
                        .addralign = self.readU64(self.header.data, @alignCast(@ptrCast(&sh64.addralign))),
                        .entsize = self.readU64(self.header.data, @alignCast(@ptrCast(&sh64.entsize))),
                    };
                    try self.sections.append(section);
                },
                else => return error.UnsupportedElfClass,
            }
        }
    }

    fn parsePrograms(self: *Self) !void {
        if (self.header.phoff == 0) return;

        var i: u16 = 0;
        while (i < self.header.phnum) : (i += 1) {
            const offset = self.header.phoff + i * self.header.phentsize;

            switch (self.header.class) {
                .ELFCLASS32 => {
                    const ph32 = std.mem.bytesAsValue(ProgramHeader32, self.data[offset .. offset + @sizeOf(ProgramHeader32)]);
                    const program = ProgramHeader{
                        .type = @enumFromInt(self.readU32(self.header.data, @alignCast(@ptrCast(&ph32.type)))),
                        .flags = self.readU32(self.header.data, @alignCast(@ptrCast(&ph32.flags))),
                        .offset = self.readU32(self.header.data, @alignCast(@ptrCast(&ph32.offset))),
                        .vaddr = self.readU32(self.header.data, @alignCast(@ptrCast(&ph32.vaddr))),
                        .paddr = self.readU32(self.header.data, @alignCast(@ptrCast(&ph32.paddr))),
                        .filesz = self.readU32(self.header.data, @alignCast(@ptrCast(&ph32.filesz))),
                        .memsz = self.readU32(self.header.data, @alignCast(@ptrCast(&ph32.memsz))),
                        .algn = self.readU32(self.header.data, @alignCast(@ptrCast(&ph32.algn))),
                    };
                    try self.programs.append(program);
                },
                .ELFCLASS64 => {
                    const ph64 = std.mem.bytesAsValue(ProgramHeader64, self.data[offset .. offset + @sizeOf(ProgramHeader64)]);
                    const program = ProgramHeader{
                        .type = @enumFromInt(self.readU32(self.header.data, @alignCast(@ptrCast(&ph64.type)))),
                        .flags = self.readU32(self.header.data, @alignCast(@ptrCast(&ph64.flags))),
                        .offset = self.readU64(self.header.data, @alignCast(@ptrCast(&ph64.offset))),
                        .vaddr = self.readU64(self.header.data, @alignCast(@ptrCast(&ph64.vaddr))),
                        .paddr = self.readU64(self.header.data, @alignCast(@ptrCast(&ph64.paddr))),
                        .filesz = self.readU64(self.header.data, @alignCast(@ptrCast(&ph64.filesz))),
                        .memsz = self.readU64(self.header.data, @alignCast(@ptrCast(&ph64.memsz))),
                        .algn = self.readU64(self.header.data, @alignCast(@ptrCast(&ph64.algn))),
                    };
                    try self.programs.append(program);
                },
                else => return error.UnsupportedElfClass,
            }
        }
    }

    fn parseStringTables(self: *Self) !void {
        for (self.sections.items, 0..) |section, i| {
            if (section.type == .SHT_STRTAB) {
                const string_data = self.data[section.offset .. section.offset + section.size];
                try self.string_tables.put(@intCast(i), string_data);
            }
        }
    }

    fn parseSymbols(self: *Self) !void {
        for (self.sections.items) |section| {
            if (section.type == .SHT_SYMTAB or section.type == .SHT_DYNSYM) {
                try self.parseSymbolTable(section);
            }
        }
    }

    fn parseSymbolTable(self: *Self, section: SectionHeader) !void {
        if (section.entsize == 0) return;

        var offset = section.offset;
        const end = section.offset + section.size;

        while (offset < end) {
            switch (self.header.class) {
                .ELFCLASS32 => {
                    const sym32 = std.mem.bytesAsValue(Symbol32, self.data[offset .. offset + @sizeOf(Symbol32)]);
                    const symbol = Symbol{
                        .name = self.readU32(self.header.data, @alignCast(@ptrCast(&sym32.name))),
                        .value = self.readU32(self.header.data, @alignCast(@ptrCast(&sym32.value))),
                        .size = self.readU32(self.header.data, @alignCast(@ptrCast(&sym32.size))),
                        .info = sym32.info,
                        .other = sym32.other,
                        .shndx = self.readU16(self.header.data, @alignCast(@ptrCast(&sym32.shndx))),
                    };
                    try self.symbols.append(symbol);
                    offset += @sizeOf(Symbol32);
                },
                .ELFCLASS64 => {
                    const sym64 = std.mem.bytesAsValue(Symbol64, self.data[offset .. offset + @sizeOf(Symbol64)]);
                    const symbol = Symbol{
                        .name = self.readU32(self.header.data, @alignCast(@ptrCast(&sym64.name))),
                        .value = self.readU64(self.header.data, @alignCast(@ptrCast(&sym64.value))),
                        .size = self.readU64(self.header.data, @alignCast(@ptrCast(&sym64.size))),
                        .info = sym64.info,
                        .other = sym64.other,
                        .shndx = self.readU16(self.header.data, @alignCast(@ptrCast(&sym64.shndx))),
                    };
                    try self.symbols.append(symbol);
                    offset += @sizeOf(Symbol64);
                },
                else => return error.UnsupportedElfClass,
            }
        }
    }

    fn getString(self: *Self, table_idx: u16, str_offset: u32) []const u8 {
        if (self.string_tables.get(table_idx)) |string_data| {
            if (str_offset >= string_data.len) return "<invalid>";

            var end = str_offset;
            while (end < string_data.len and string_data[end] != 0) : (end += 1) {}

            return string_data[str_offset..end];
        }
        return "<unknown>";
    }

    fn getSectionName(self: *Self, section: SectionHeader) []const u8 {
        return self.getString(self.header.shstrndx, section.name);
    }

    fn getSymbolName(self: *Self, symbol: Symbol) []const u8 {
        var it = self.string_tables.iterator();
        while (it.next()) |entry| {
            if (entry.key_ptr.* != self.header.shstrndx) {
                return self.getString(entry.key_ptr.*, symbol.name);
            }
        }
        return "<no_name>";
    }

    fn readU16(_: *Self, data_encoding: Data, ptr: *const u16) u16 {
        return switch (data_encoding) {
            .ELFDATA2LSB => std.mem.littleToNative(u16, ptr.*),
            .ELFDATA2MSB => std.mem.bigToNative(u16, ptr.*),
            else => ptr.*,
        };
    }

    fn readU32(_: *Self, data_encoding: Data, ptr: *const u32) u32 {
        return switch (data_encoding) {
            .ELFDATA2LSB => std.mem.littleToNative(u32, ptr.*),
            .ELFDATA2MSB => std.mem.bigToNative(u32, ptr.*),
            else => ptr.*,
        };
    }

    fn readU64(_: *Self, data_encoding: Data, ptr: *const u64) u64 {
        return switch (data_encoding) {
            .ELFDATA2LSB => std.mem.littleToNative(u64, ptr.*),
            .ELFDATA2MSB => std.mem.bigToNative(u64, ptr.*),
            else => ptr.*,
        };
    }

    pub fn printHeaderInfo(self: *Self) void {
        print("ELF Header:\n", .{});
        print("  Magic: {x:0>2}{x:0>2}{x:0>2}{x:0>2}\n", .{ self.header.magic[0], self.header.magic[1], self.header.magic[2], self.header.magic[3] });
        print("  Class: {s}\n", .{if (self.header.class == .ELFCLASS64) "64-bit" else "32-bit"});
        print("  Data: {s}\n", .{if (self.header.data == .ELFDATA2LSB) "Little endian" else "Big endian"});
        print("  Type: {}\n", .{self.header.type});
        print("  Machine: {}\n", .{self.header.machine});
        print("  Entry point: 0x{x}\n", .{self.header.entry});
        print("  Program headers: {}\n", .{self.header.phnum});
        print("  Section headers: {}\n", .{self.header.shnum});
    }

    pub fn printSections(self: *Self) void {
        print("\nSections:\n", .{});
        print("{s:<6} {s:<20} {s:<12} {s:<16} {s:<12}\n", .{ "Index", "Name", "Type", "Address", "Size" });
        print("{s}\n", .{"-" ** 70});

        for (self.sections.items, 0..) |section, i| {
            const name = self.getSectionName(section);
            print("{d:<6} {s:<20} {s:<12} 0x{x:<14} {d:<12}\n", .{ i, name, @tagName(section.type), section.addr, section.size });
        }
    }

    pub fn printPrograms(self: *Self) void {
        if (self.programs.items.len == 0) return;

        print("\nProgram Headers:\n", .{});
        print("{s:<12} {s:<12} {s:<16} {s:<16} {s:<12} {s:<12}\n", .{ "Type", "Offset", "VirtAddr", "PhysAddr", "FileSize", "MemSize" });
        print("{s}\n", .{"-" ** 90});

        for (self.programs.items) |program| {
            print("{s:<12} 0x{x:<10} 0x{x:<14} 0x{x:<14} {d:<12} {d:<12}\n", .{ @tagName(program.type), program.offset, program.vaddr, program.paddr, program.filesz, program.memsz });
        }
    }

    pub fn printSymbols(self: *Self, limit: usize) void {
        if (self.symbols.items.len == 0) return;

        const actual_limit = @min(limit, self.symbols.items.len);
        print("\nSymbols (showing first {}):\n", .{actual_limit});
        print("{s:<30} {s:<16} {s:<8} {s:<8}\n", .{ "Name", "Value", "Size", "Type" });
        print("{s}\n", .{"-" ** 70});

        for (self.symbols.items[0..actual_limit]) |symbol| {
            const name = self.getSymbolName(symbol);
            const sym_type = symbol.info & 0xf;
            print("{s:<30} 0x{x:<14} {d:<8} {d:<8}\n", .{ name, symbol.value, symbol.size, sym_type });
        }
    }
};
