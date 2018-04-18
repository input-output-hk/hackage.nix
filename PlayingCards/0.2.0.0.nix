{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "PlayingCards";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dillonhuff@gmail.com";
        author = "Dillon Huff";
        homepage = "";
        url = "";
        synopsis = "Playing cards api";
        description = "";
        buildType = "Simple";
      };
      components = {
        PlayingCards = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.QuickCheck
          ];
        };
      };
    }