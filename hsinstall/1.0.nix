{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsinstall";
          version = "1.0";
        };
        license = "ISC";
        copyright = "2016 Dino Morelli";
        maintainer = "Dino Morelli <dino@ui3.info>";
        author = "Dino Morelli";
        homepage = "";
        url = "";
        synopsis = "Install Haskell software";
        description = "This is a utility to install Haskell programs on a system using stack. Even though stack has an `install` command, I found it to be not enough for my needs. This software tries to install the binaries, the LICENSE file and also the resources directory if it finds one. There is also an optional library component to assist with locating installed data files at runtime.";
        buildType = "Simple";
      };
      components = {
        hsinstall = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        exes = {
          an-app = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hsinstall
            ];
          };
        };
      };
    }