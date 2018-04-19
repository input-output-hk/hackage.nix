{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "astview-utils";
          version = "0.1";
        };
        license = "BSD-4-Clause";
        copyright = "";
        maintainer = "Sebastian Menge <sebastian.menge@udo.edu>";
        author = "Pascal Hof <pascal.hof@udo.edu>,\nSebastian Menge <sebastian.menge@udo.edu>";
        homepage = "";
        url = "";
        synopsis = "Interfacing between hint and astview";
        description = "see README";
        buildType = "Simple";
      };
      components = {
        astview-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.syb
          ];
        };
      };
    }