{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "typelevel-tensor";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "https://github.com/nushio3/typelevel-tensor";
      url = "";
      synopsis = "Tensors whose ranks and dimensions type-inferred and type-checked.";
      description = "A tensor class for Haskell that can type-infer and type-check over tensor ranks and dimensions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.control-monad-failure)
          (hsPkgs.numeric-prelude)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.control-monad-failure)
            (hsPkgs.numeric-prelude)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }