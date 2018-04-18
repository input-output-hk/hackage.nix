{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "DynamicTimeWarp";
          version = "0.1.0.0";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "maergil@gmail.com";
        author = "Aaron Karper";
        homepage = "https://github.com/zombiecalypse/DynamicTimeWarp";
        url = "";
        synopsis = "Dynamic time warping of sequences.";
        description = "";
        buildType = "Simple";
      };
      components = {
        DynamicTimeWarp = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.array
          ];
        };
        exes = {
          benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.array
              hsPkgs.criterion
              hsPkgs.random
            ];
          };
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.array
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }