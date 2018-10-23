{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "indices";
        version = "1.6.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "";
      url = "";
      synopsis = "Static indices";
      description = "";
      buildType = "Simple";
    };
    components = {
      "indices" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.indices)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "unroll" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.indices)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }