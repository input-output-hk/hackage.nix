{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "haste";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "djsiegel@gmail.com";
        author = "David Siegel";
        homepage = "";
        url = "";
        synopsis = "A universal pastebin tool, written in Haskell.";
        description = "A universal pastebin tool, written in Haskell.";
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