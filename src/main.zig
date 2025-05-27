const std = @import("std");
const Elf = @import("Elf.zig");
const print = std.debug.print;

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    if (args.len != 2) {
        print("Usage: {s} <elf_file>\n", .{args[0]});
        return;
    }

    var parser = Elf.Parser.init(allocator, args[1]) catch |err| {
        print("Error parsing ELF file: {!}\n", .{err});
        return;
    };
    defer parser.deinit();

    parser.printHeaderInfo();
    parser.printSections();
    parser.printPrograms();
    parser.printSymbols(20);
}
