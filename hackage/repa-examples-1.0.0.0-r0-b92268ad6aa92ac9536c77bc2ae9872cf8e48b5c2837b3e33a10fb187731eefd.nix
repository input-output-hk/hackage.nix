{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "repa-examples";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://trac.haskell.org/repa";
      url = "";
      synopsis = "Examples using the Repa array library.";
      description = "Examples using the Repa array library.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "repa-laplace" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.dph-prim-par)
            (hsPkgs.repa)
          ];
        };
        "repa-mmult" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.dph-prim-par)
            (hsPkgs.repa)
          ];
        };
        "repa-fft" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-base)
            (hsPkgs.repa)
          ];
        };
      };
    };
  }