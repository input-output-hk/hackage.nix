{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "pqc";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/pqc";
      url = "";
      synopsis = "Parallel batch driver for QuickCheck";
      description = "Parallel batch driver for QuickCheck";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
          ];
      };
    };
  }