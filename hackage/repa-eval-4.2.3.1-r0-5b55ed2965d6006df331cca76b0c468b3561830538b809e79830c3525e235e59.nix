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
        name = "repa-eval";
        version = "4.2.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Repa Development Team";
      homepage = "http://repa.ouroborus.net";
      url = "";
      synopsis = "Low-level parallel operators on bulk random-accessble arrays.";
      description = "Low-level parallel operators on bulk random-accessble arrays.";
      buildType = "Simple";
    };
    components = {
      "repa-eval" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }