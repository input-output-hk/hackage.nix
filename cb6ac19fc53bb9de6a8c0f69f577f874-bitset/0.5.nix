{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "bitset";
          version = "0.5";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Denis Bueno <dbueno@gmail.com>";
        author = "Denis Bueno";
        homepage = "";
        url = "";
        synopsis = "A functional data structure for efficient membership testing.";
        description = "A bit set is a data structure for keeping membership information efficiently.  This implementation uses Data.Bits on Integers, and thus should achieve reasonable speed.";
        buildType = "Simple";
      };
      components = {
        bitset = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
      };
    }