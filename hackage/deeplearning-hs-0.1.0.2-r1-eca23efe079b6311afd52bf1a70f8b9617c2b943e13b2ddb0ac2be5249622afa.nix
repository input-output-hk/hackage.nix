{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "deeplearning-hs";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Andrew Tulloch <andrew+cabal@tullo.ch>";
      author = "Andrew Tulloch";
      homepage = "https://github.com/ajtulloch/deeplearning-hs";
      url = "";
      synopsis = "Deep Learning in Haskell";
      description = "Implements type-safe deep neural networks";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.accelerate)
          (hsPkgs.vector)
          (hsPkgs.repa)
          (hsPkgs.repa-algorithms)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "deeplearning_demonstration" = {
          depends = [
            (hsPkgs.deeplearning-hs)
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.vector)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "deeplearning_test" = {
          depends = [
            (hsPkgs.deeplearning-hs)
            (hsPkgs.base)
            (hsPkgs.accelerate)
            (hsPkgs.vector)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
          ];
        };
      };
    };
  }