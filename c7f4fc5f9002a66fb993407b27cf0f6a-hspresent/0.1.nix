{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hspresent";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 by Evan Klitzke";
        maintainer = "Evan Klitzke <evan@eklitzke.org>";
        author = "Evan Klitzke";
        homepage = "";
        url = "";
        synopsis = "A terminal presentation tool";
        description = "Give fancy presentations in your terminal.";
        buildType = "Simple";
      };
      components = {
        hspresent = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vty
          ];
        };
        exes = { hspresent = {}; };
      };
    }