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
      specVersion = "1.10";
      identifier = {
        name = "ja-base-extra";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dev@justus.science";
      author = "Justus Adam";
      homepage = "";
      url = "";
      synopsis = "Extra functions I require in base";
      description = "This package encompasses a collection of general functions that only depend on\nthe base library, which I have acumulated through writing Haskell code and\njudged general and useful enough to extract.";
      buildType = "Simple";
    };
    components = {
      "ja-base-extra" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }