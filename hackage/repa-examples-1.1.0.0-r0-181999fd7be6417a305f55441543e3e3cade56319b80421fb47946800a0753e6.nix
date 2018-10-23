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
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
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
        "repa-fft2d" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-base)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
            (hsPkgs.repa-io)
          ];
        };
        "repa-fft2d-highpass" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-base)
            (hsPkgs.repa)
            (hsPkgs.repa-algorithms)
            (hsPkgs.repa-io)
          ];
        };
        "repa-laplace" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-base)
            (hsPkgs.repa)
            (hsPkgs.repa-io)
          ];
        };
        "repa-mmult" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dph-prim-par)
            (hsPkgs.dph-base)
            (hsPkgs.repa)
            (hsPkgs.repa-io)
            (hsPkgs.repa-algorithms)
            (hsPkgs.random)
          ];
        };
      };
    };
  }