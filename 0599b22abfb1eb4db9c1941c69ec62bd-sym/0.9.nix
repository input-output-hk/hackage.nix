{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sym";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "anders.claesson@gmail.com";
        author = "Anders Claesson";
        homepage = "https://github.com/akc/sym";
        url = "";
        synopsis = "Permutations, patterns, and statistics";
        description = "Definitions for permutations with an emphasis on permutation\npatterns and permutation statistics.";
        buildType = "Simple";
      };
      components = {
        "sym" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.hashable
            hsPkgs.QuickCheck
          ];
        };
      };
    }