{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pqc";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Don Stewart";
      homepage = "http://darcsden.com/shelarcy/pqc";
      url = "";
      synopsis = "Parallel batch driver for QuickCheck";
      description = "Parallel batch driver for QuickCheck";
      buildType = "Simple";
    };
    components = {
      "pqc" = {
        depends  = if flags.split-base
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
      tests = {
        "Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pqc)
          ];
        };
      };
    };
  }