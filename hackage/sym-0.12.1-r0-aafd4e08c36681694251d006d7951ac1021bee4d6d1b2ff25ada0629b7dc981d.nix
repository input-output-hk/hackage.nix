{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "sym";
        version = "0.12.1";
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
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.hashable)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "Props" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.sym)
            (hsPkgs.hashable)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }