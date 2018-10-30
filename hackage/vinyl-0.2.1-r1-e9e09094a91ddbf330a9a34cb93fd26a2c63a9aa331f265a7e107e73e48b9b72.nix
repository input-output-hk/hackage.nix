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
        name = "vinyl";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jonsterling@me.com";
      author = "Jonathan Sterling";
      homepage = "";
      url = "";
      synopsis = "Extensible Records";
      description = "Extensible records for Haskell with lenses using modern GHC features.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.transformers)
            (hsPkgs.vinyl)
            (hsPkgs.doctest)
          ];
        };
      };
      benchmarks = {
        "bench-builder-all" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.criterion)
            (hsPkgs.vinyl)
            (hsPkgs.mwc-random)
            (hsPkgs.lens)
            (hsPkgs.linear)
          ];
        };
      };
    };
  }