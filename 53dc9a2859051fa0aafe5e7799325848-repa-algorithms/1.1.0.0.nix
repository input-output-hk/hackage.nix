{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "repa-algorithms";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "http://trac.haskell.org/repa";
      url = "";
      synopsis = "Algorithms using the Repa array library.";
      description = "NOTE: You must use the GHC head branch > 6.13.20100309 to get decent performance.\nReusable algorithms using the Repa array library.";
      buildType = "Simple";
    };
    components = {
      "repa-algorithms" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dph-base)
          (hsPkgs.repa)
        ];
      };
    };
  }