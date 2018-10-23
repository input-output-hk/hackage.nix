{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "di-core";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2017-2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "Typeful hierarchical structured logging without monad towers.";
      description = "Typeful hierarchical structured logging without monad towers.";
      buildType = "Simple";
    };
    components = {
      "di-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.stm)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.di-core)
            (hsPkgs.QuickCheck)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }