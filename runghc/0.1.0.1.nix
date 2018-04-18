{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "runghc";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (C) 2011 Michael Zuser";
        maintainer = "Michael Zuser <mikezuser@gmail.com>";
        author = "Michael Zuser";
        homepage = "https://github.com/bacchanalia/runghc";
        url = "";
        synopsis = "runghc replacement for fast repeated runs";
        description = "This is a replacement for runghc which keeps compiled files\nfor fast runtimes when nothing has changed\n\n> Usage: runghc [options] [ghc-options] file [file-arguments]\n>\n> Options:\n>  -! --compile-only  Do not run the script, just compile it\n>     --exe-dir=DIR   Directory for the executable\n>                         default=<scr-dir>/.compile\n>     --out-dir=DIR   Directory for the intermediate files\n>                         default=<exe-dir>/<basename>-intermediate-files\n>  -? --help          Display this help message";
        buildType = "Simple";
      };
      components = {
        exes = {
          runghc = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.old-time
              hsPkgs.process
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }