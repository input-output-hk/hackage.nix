{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "file-command-qq";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "https://github.com/jfischoff/file-command-qq";
        url = "";
        synopsis = "Quasiquoter for system commands involving filepaths";
        description = "file-command-qq is a simple quasiquoter for running system commands that take a filepath as an argument.\n\nFor instance\n\n>>> :set -XOverloadedStrings\n>>> import FileCommand\n>>> import Filesystem.Path\n>>> [s|echo \$filename|] \"/home/test/thing.txt\"\n\n\nwill return\n\n@\nthing.txt\nExitSuccess\n@\n\nYou can think of @[s|echo \$filename|]@ essentially converts into\n\n\n@\n\\\\path -> system \$ \"echo\" ++ encodeString (filename path)\n@\n\nHere is another example\n\n>>> [s|gcc \$path -o \$directory\$basename.o|] \"/home/test/thing.c\"\n\nAll \"file parts\" start with a \\'\$\\'. The \\'\$\\' can be escaped by preceding it with a \\'\\\\\\'\n\nThere are the following options for \"file parts\"\n\n\n* \$path\n* \$root\n* \$directory\n* \$parent\n* \$filename\n* \$dirname\n* \$basename\n* \$ext\n\nWhich correspond to the respective functions in <https://hackage.haskell.org/package/system-filepath-0.4.6/docs/Filesystem-Path.html#g:1>";
        buildType = "Simple";
      };
      components = {
        file-command-qq = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.process
            hsPkgs.system-filepath
            hsPkgs.text
          ];
        };
      };
    }