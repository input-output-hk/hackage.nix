{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "haste";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "djsiegel@gmail.com";
        author = "David Siegel";
        homepage = "";
        url = "";
        synopsis = "A universal pastebin tool, written in Haskell.";
        description = "hpaste is a simple command line utility for piping text to online pastebin sites such as hpaste.org, paste2.org, pastebin.com and others. Text can be passed via STDIN, or by giving a file argument; text is pasted online, and the URL of the paste is printed to STDOUT. Use --help for more information.";
        buildType = "Simple";
      };
      components = {
        exes = {
          haste = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.curl
            ];
          };
        };
      };
    }