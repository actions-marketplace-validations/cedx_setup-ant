import sys.FileSystem;
using Lambda;

/** Deletes all generated files. **/
function main() {
	["js", "js.map"].map(ext -> 'bin/setup_ivy.$ext').filter(FileSystem.exists).iter(FileSystem.deleteFile);
	Tools.cleanDirectory("var");
}