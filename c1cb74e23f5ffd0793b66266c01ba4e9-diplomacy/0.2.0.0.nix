{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diplomacy";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aovieth@gmail.com";
        author = "Alexander Vieth";
        homepage = "https://github.com/avieth/diplomacy";
        url = "";
        synopsis = "Diplomacy board game";
        description = "The board game Diplomacy, spoken in Haskell";
        buildType = "Simple";
      };
      components = {
        diplomacy = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.HUnit
            hsPkgs.TypeNat
            hsPkgs.parsec
          ];
        };
      };
    }