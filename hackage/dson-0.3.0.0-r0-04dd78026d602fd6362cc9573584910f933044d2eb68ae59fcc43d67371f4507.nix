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
        name = "dson";
        version = "0.3.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "luke@lukecycon.com";
      author = "Luke Cycon";
      homepage = "https://github.com/lcycon/hs-dson";
      url = "";
      synopsis = "Haskell DogeScript Object Notation Parser";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }